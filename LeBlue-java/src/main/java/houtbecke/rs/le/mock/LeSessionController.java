package houtbecke.rs.le.mock;

import static houtbecke.rs.le.session.LeEventType.characteristicGetIntValue;
import static houtbecke.rs.le.session.LeEventType.characteristicGetValue;
import static houtbecke.rs.le.session.LeEventType.characteristicRead;
import static houtbecke.rs.le.session.LeEventType.characteristicSetValue;
import static houtbecke.rs.le.session.LeEventType.deviceAddListener;
import static houtbecke.rs.le.session.LeEventType.deviceCheckBleHardwareAvailable;
import static houtbecke.rs.le.session.LeEventType.deviceIsBtEnabled;
import static houtbecke.rs.le.session.LeEventType.deviceRemoveListener;
import static houtbecke.rs.le.session.LeEventType.deviceStartScanning;
import static houtbecke.rs.le.session.LeEventType.deviceStopScanning;
import static houtbecke.rs.le.session.LeEventType.mockWaitForPoint;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceAddListener;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceClose;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceConnect;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceDisconnect;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceGetAddress;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceGetName;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceReadRssi;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceRemoveListener;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceSetCharacteristicListener;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceSetCharacteristicWriteListener;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceStartServiceDiscovery;
import static houtbecke.rs.le.session.LeEventType.serviceEnableCharacteristicNotification;
import static houtbecke.rs.le.session.LeEventType.serviceGetCharacteristic;
import static houtbecke.rs.le.session.LeEventType.serviceGetUUID;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeUtil;
import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSource;
import houtbecke.rs.le.session.LeEventType;
import houtbecke.rs.le.session.MockedResponse;
import houtbecke.rs.le.session.Mocker;
import houtbecke.rs.le.session.Session;

public class LeSessionController implements LeMockController {

    // temp workaround for LogCat crashing tests
    boolean shouldLog() { return !"true".equals(System.getProperty("doNotLog"));}


    final static String TAG = "LeBlueController";
    int counter = 0;
    boolean strict;

    public LeSessionController(Session session) {
        this(session, false);
    }
    public LeSessionController(Session session, boolean strict) {
        this.strict = strict;

        this.session = session;
    }

    final ReentrantLock lock = new ReentrantLock(true);
    final Condition condition = lock.newCondition();

    int source;
    String[] values;
    protected String eventValue() {
        return eventValue(0);
    }
    protected String eventValue(int seq) {
        return values[seq];
    }

    protected int eventIntValue() {
        try {
            return Integer.parseInt(values[0]);
        }catch(NumberFormatException e){

        }
        return 0;
    }

    protected boolean eventBooleanValue() {
        return eventBooleanValue(0);
    }
    protected boolean eventBooleanValue(int seq) {
        return Boolean.parseBoolean(eventValue(seq));
    }

    private String point = "";

    public  void pointReached(String point) {
        lock.lock();
        try {
            this.point = point;
            condition.signalAll();

        }finally {
            lock.unlock();
        }
    }

    protected  void waitForPointOrEvent(String point) throws InterruptedException {
        lock.lock();
        try {
            waitingForEvent = true;
            condition.signalAll();
            while (!point.equals(this.point) && sessionIsRunning && !stopSession && currentEvent != null && currentEvent.type == mockWaitForPoint) {
                condition.await();
            }
            waitingForEvent = false;
            updateCurrentEvent(null);
        }finally {
            lock.unlock();
        }
    }

    protected  void updateCurrentEvent(Event newCurrentEvent) {
        lock.lock();
        try {

            currentEvent = newCurrentEvent;
            condition.signalAll();
        }finally {
            lock.unlock();
        }
    }

    protected void checkPause() {
        long current = System.currentTimeMillis();
        while (current < executeNextEventAfter && !stopSession) {
            try {
                this.condition.await(executeNextEventAfter - current, TimeUnit.MILLISECONDS);
            } catch (InterruptedException ignore) {
            }
            current = System.currentTimeMillis();
        }

    }

    public  void waitForPoint(String point) {
        lock.lock();
        try {

            while (!point.equals(this.point) && sessionIsRunning && !stopSession) {
                try {
                    condition.await();
                } catch (InterruptedException ignore) {
                }
            }
        }finally {
            lock.unlock();

        }
    }


    Event currentEvent;
    boolean waitingForEvent = false;

    public  boolean waitTillSessionStarted() {
        lock.lock();
        try {
            while (!waitingForEvent && !stopSession) {
                try {
                    condition.await(1000,TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }

        return waitingForEvent;
        }finally {
            lock.unlock();
        }
    }

    public  void waitForEvent(Event event) throws InterruptedException {
        lock.lock();
        try {

            while (currentEvent != null && sessionIsRunning && !stopSession)
                try {
                    condition.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

            updateCurrentEvent(event);
            checkPause();

            while (currentEvent == event && mockedEvents.size() == 0 && sessionIsRunning && !stopSession)
                try {
                    waitingForEvent = true;
                    condition.signalAll();
                    condition.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

            waitingForEvent = false;
            condition.signalAll();
        }finally {
            lock.unlock();
        }
    }


    String sessionName = null;
    public void startDefaultSession() {
        lock.lock();
        try {
        startSession(null);

        }finally {
            lock.unlock();
        }
    }

    public  void startSession(String sessionName) {
        lock.lock();
        try {

            stopSession();
            this.waitForFinishedSession();
            stopSession = false;

            this.sessionName = sessionName;
            condition.signalAll();

            new Thread(new Runnable() {
                @Override
                public void run() {
                    Thread.currentThread().setName("LeSessionController");
                    startSessionInThread();

                }
            }).start();
        }finally {
            lock.unlock();
        }
    }

    private class RunnableWrapper implements Runnable {

        final Runnable runnable;
        public RunnableWrapper(Runnable runnable) {
            this.runnable = runnable;
        }
        public boolean started = false;

        @Override
        public void run() {

            LeSessionController.this.lock.lock();
            try {

            started = true;
                updateCurrentEvent(null);
                LeSessionController.this.condition.signalAll();

            }finally {
                LeSessionController.this.lock.unlock();
            }
            runnable.run();
        }

    }

    void runCurrentEventOnUiThread(final Runnable runnable) throws InterruptedException {

       RunnableWrapper wrapper = null;


       wrapper = new RunnableWrapper(runnable);

       (new Thread(wrapper,"wrapper thread")).start();


        lock.lock();
        try {
            while (!wrapper.started) {
                condition.await();
            }
        }finally {
            lock.unlock();

        }

    }
    Session session;

    volatile List<Event> mockedEvents = new ArrayList<>();
    volatile Event stackedEvent = null;

    boolean sessionIsRunning = false;
    boolean stopSession = false;

    long executeNextEventAfter = 0;

    Map<Integer, byte[]> characteristicsValues = new HashMap<>();

    protected  void startSessionInThread() {
        lock.lock();
        try {

            characteristicsValues.clear();
            sessionIsRunning = true;
            sessionException = null;
            condition.signalAll();

            EventSource source = (sessionName == null) ? session.getDefaultSource() : session.getNamedEventSource(sessionName);
            source.reset();

            Event event = null;

            try {

                while (!stopSession && (source.hasMoreEvent() || mockedEvents.size() > 0 || stackedEvent != null)) {

                    if (mockedEvents.size() > 0) {
                        event = mockedEvents.remove(0);
                    } else if (stackedEvent != null) {
                        event = stackedEvent;
                        stackedEvent = null;
                    } else {
                        event = source.nextEvent();
                    }

                    if (stopSession) {
                        return;
                    }

                    workOnEvent(event);

                }
            } catch (Exception e) {
                sessionException = e;
                throw new RuntimeException("error processing session at event " + event, e);
            } finally {
                sessionIsRunning = false;
                stopSession = true;
                updateCurrentEvent(null);
            }

        }
        finally {
            lock.unlock();
        }

    }

    protected void workOnEvent(final Event event) throws InterruptedException {

        switch ((LeEventType)event.type) {
            case deviceAddListener:
            case deviceStartScanning:
            case deviceStopScanning:
            case serviceEnableCharacteristicNotification:
            case deviceRemoveListener:
            case deviceCheckBleHardwareAvailable:
            case deviceIsBtEnabled:
            case remoteDeviceGetAddress:
            case remoteDeviceGetName:
            case remoteDeviceAddListener:
            case remoteDeviceRemoveListener:
            case remoteDeviceConnect:
            case remoteDeviceClose:
            case remoteDeviceDisconnect:
            case remoteDeviceReadRssi:
            case remoteDeviceStartServiceDiscovery:
            case serviceGetUUID:
            case serviceGetCharacteristic:
            case characteristicGetValue:
            case characteristicGetIntValue:
            case remoteDeviceSetCharacteristicListener:
            case remoteDeviceSetCharacteristicWriteListener:
            case characteristicSetValue:
            case characteristicRead:
                waitForEvent(event);
                break;

            default:
                // events that need to update the current event first
                updateCurrentEvent(event);
                checkPause();

                switch ((LeEventType)event.type) {

                    case mockRemoteDeviceFound:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                for (LeDeviceListener leListener : session.getDeviceMocker(event.source).getDeviceListeners(LeSessionController.this, event.source)) {
                                    leListener.leDeviceFound(
                                            getDevice(event.source),
                                            createOrReturnRemoteDevice(Integer.valueOf(event.values[0]), getDevice(event.source)),
                                            Integer.valueOf(event.values[1]),
                                            LeUtil.parseLeScanRecord(LeUtil.stringToBytes(event.values[2])));
                                }
                            }
                        });
                        break;
                    case remoteDeviceFound:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                getDeviceListener(event.source).leDeviceFound(
                                        getDevice(event.values[0]),
                                        createOrReturnRemoteDevice(Integer.valueOf(event.values[1]), getDevice(event.source)),
                                        Integer.valueOf(event.values[2]),
                                        LeUtil.parseLeScanRecord(LeUtil.stringToBytes(event.values[3])));
                            }
                        });
                        break;

                    case mockRemoteDeviceConnected:
                        for (LeRemoteDeviceListener leRemoteListener : session.getRemoteDeviceMocker(event.source).getRemoteDeviceListeners(this, event.source)) {
                            final LeRemoteDeviceListener listener = leRemoteListener;
                            runCurrentEventOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    listener.leDevicesConnected(getDevice(event.values[0]),
                                            getRemoteDevice(event.source));
                                }
                            });
                        }
                        break;

                    case remoteDeviceConnected:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                getRemoteDeviceListener(event.source).leDevicesConnected(
                                        getDevice(event.values[0]),
                                        getRemoteDevice(event.values[1]));
                            }
                        });
                        break;
                    case mockRemoteDeviceDisconnected:
                        for (LeRemoteDeviceListener leRemoteListener : session.getRemoteDeviceMocker(event.source).getRemoteDeviceListeners(this, event.source)) {
                            final LeRemoteDeviceListener listener = leRemoteListener;
                            runCurrentEventOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    listener.leDevicesDisconnected(getDevice(event.values[0]),
                                            getRemoteDevice(event.source));
                                }
                            });
                        }
                        break;
                    case remoteDeviceDisconnected:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                getRemoteDeviceListener(event.source).leDevicesDisconnected(
                                        getDevice(event.values[0]),
                                        getRemoteDevice(event.values[1]));
                            }
                        });
                        break;

                    case mockRemoteDeviceClosed:
                        for (LeRemoteDeviceListener leRemoteListener : session.getRemoteDeviceMocker(event.source).getRemoteDeviceListeners(this, event.source)) {
                            final LeRemoteDeviceListener listener = leRemoteListener;
                            runCurrentEventOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    listener.leDevicesClosed(getDevice(event.values[0]),
                                            getRemoteDevice(event.source));
                                }
                            });
                        }
                        break;
                    case remoteDeviceClosed:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                getRemoteDeviceListener(event.source).leDevicesClosed(
                                        getDevice(event.values[0]),
                                        getRemoteDevice(event.values[1]));
                            }
                        });
                        break;
                    case mockRemoteDeviceServicesDiscovered:
                        for (LeRemoteDeviceListener leRemoteListener : session.getRemoteDeviceMocker(event.source).getRemoteDeviceListeners(this, event.source)) {
                            final LeRemoteDeviceListener listener = leRemoteListener;
                            runCurrentEventOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    LeGattServiceMock[] services = new LeGattServiceMock[event.values.length - 2];
                                    for (int k = 0; k < services.length; k++)
                                        services[k] = createGattService(event.values[k + 2]);

                                    listener.serviceDiscovered(
                                            getDevice(event.values[0]),
                                            getRemoteDevice(event.source),
                                            LeGattStatus.fromString(event.values[1]),
                                            services);
                                }
                            });
                        }
                        break;

                    case remoteDeviceServicesDiscovered:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                LeGattServiceMock[] services = new LeGattServiceMock[event.values.length - 3];
                                for (int k = 0; k < services.length; k++)
                                    services[k] = createGattService(event.values[k + 3]);

                                getRemoteDeviceListener(event.source).serviceDiscovered(
                                        getDevice(event.values[0]),
                                        getRemoteDevice(event.values[1]),
                                        LeGattStatus.fromString(event.values[2]),
                                        services);
                            }
                        });
                        break;

                    case remoteDeviceRssiRead:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {

                                getRemoteDeviceListener(event.source).rssiRead(
                                        getDevice(event.values[0]),
                                        getRemoteDevice(event.values[1]),
                                        Integer.valueOf(event.values[2])
                                );
                            }
                        });
                        break;

                    case mockCharacteristicChangedWithMockedValue:
                        characteristicsValues.put(Integer.valueOf(event.values[0]), LeUtil.stringToBytes(event.values[1]));
                        // fall through
                    case mockCharacteristicChanged:

                        final LeGattCharacteristic characteristic = createOrReturnCharacteristic(event.values[0]);
                        final UUID uuid = UUID.fromString(session.getSourceIdentification(Integer.valueOf(event.values[0])));

                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                for (LeCharacteristicListener leCharacteristicListener : session.getRemoteDeviceMocker(event.source).getCharacteristicListeners(LeSessionController.this, event.source)) {
                                    leCharacteristicListener.leCharacteristicChanged(
                                            uuid,
                                            getRemoteDevice(event.source),
                                            characteristic
                                    );
                                }
                            }
                        });
                        break;

                    case characteristicChanged:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {

                                UUID uuid = null;
                                if (event.values[0] != null && !event.values[0].equals("null"))
                                    uuid = UUID.fromString(event.values[0]);
                                getCharacteristicListener(event.source).leCharacteristicChanged(
                                        uuid,
                                        getRemoteDevice(event.values[1]),
                                        getCharacteristic(event.values[2])
                                );
                            }
                        });
                        break;
                    case characteristicWritten:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {

                                UUID uuid = null;
                                if (event.values[0] != null && !event.values[0].equals("null"))
                                    uuid = UUID.fromString(event.values[0]);
                                LeCharacteristicWriteListener  characteristicWriteListener=getCharacteristicWriteListener(event.source);
                                characteristicWriteListener.leCharacteristicWritten(
                                        uuid,
                                        getRemoteDevice(event.values[1]),
                                        getCharacteristic(event.values[2]),
                                        true
                                );
                            }
                        });
                        break;
                    case mockCharacteristicNotificationChanged:
                        final LeGattCharacteristic characteristic2 = createOrReturnCharacteristic(event.values[0]);
                        final UUID uuid2 = UUID.fromString(session.getSourceIdentification(Integer.valueOf(event.values[0])));

                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                for (LeCharacteristicListener leCharacteristicListener : session.getRemoteDeviceMocker(Integer.valueOf(event.values[2])).getCharacteristicListeners(LeSessionController.this, Integer.valueOf(event.values[2]))) {
                                    leCharacteristicListener.leCharacteristicNotificationChanged(
                                            uuid2,
                                            getRemoteDevice(event.values[2]),
                                            characteristic2,
                                            Boolean.parseBoolean(event.values[3])
                                    );
                                }
                            }
                        });
                        break;

                    case characteristicNotificationChanged:
                        runCurrentEventOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                UUID uuid = null;
                                if (event.values[0] != null && !event.values[0].equals("null"))
                                    uuid = UUID.fromString(event.values[0]);
                                getCharacteristicListener(event.source).leCharacteristicNotificationChanged(
                                        uuid,
                                        getRemoteDevice(event.values[1]),
                                        getCharacteristic(event.values[2]),
                                        Boolean.parseBoolean(event.values[3])
                                );
                            }
                        });
                        break;

                    default:
                        // events that also need to unset the current event

                        switch ((LeEventType)event.type) {

                            case mockCharacteristicMockedValue:
                                characteristicsValues.put(event.source, LeUtil.stringToBytes(event.values[0]));
                                break;
                            case mockCharacteristicClearMockedValue:
                                characteristicsValues.remove(event.source);
                                break;

                            case mockWaitForPoint:
                                waitForPointOrEvent(event.values[0]);
                                break;

                            case mockPointReached:
                                pointReached(event.values[0]);
                                break;

                            default:
                                throw new RuntimeException("Unimplemented event type: " + event.type);

                        }
                        updateCurrentEvent(null);
                }
        }

        executeNextEventAfter = System.currentTimeMillis() + event.delay;
    }

    public  void waitForFinishedSession() {
        lock.lock();
        try {
            while (sessionIsRunning)
                try {
                    condition.await();
                } catch (InterruptedException ignored) {
                }
        }finally {
                    lock.unlock();
                }
        }

    public void stopSession() {
        lock.lock();
        try {
            stopSession = true;
            condition.signalAll();

        }finally {
            lock.unlock();
        }
    }

    Exception sessionException = null;
    public Exception getSessionException() {
        return sessionException;
    }
    
    public boolean checkEvent(LeEventType event, LeDeviceMock source, String... arguments) {
        return checkEventWithSourceId(event, SourceType.device, getDeviceKey(source), arguments);
    }

    public boolean checkEvent(LeEventType event, LeRemoteDeviceMock source, String... arguments) {
        return checkEventWithSourceId(event, SourceType.remoteDevice, getRemoteDeviceKey(source), arguments);
    }

    public boolean checkEvent(LeEventType event, LeGattServiceMock source, String... arguments) {
        return checkEventWithSourceId(event, SourceType.gattService, getGattServiceKey(source), arguments);
    }

    public boolean checkEvent(LeEventType event, LeGattCharacteristicMock source, String... arguments) {
        return checkEventWithSourceId(event, SourceType.gattCharacteristic, getCharacteristicKey(source), arguments);
    }

    public Session getSession() {
        return session;
    }

    protected enum SourceType {
        device,
        remoteDevice,
        gattService,
        gattCharacteristic
    }

    public  boolean checkEventWithSourceId(LeEventType eventType, SourceType sourceType, int source, String... arguments) {
        lock.lock();
        try {

            if (eventType == characteristicGetValue) {
                byte[] value = characteristicsValues.get(source);
                if (value != null) {
                    values = new String[]{
                            LeUtil.bytesToString(value)
                    };
                    return true;
                }
            }

            if (eventType == characteristicGetIntValue) {
                byte[] value = characteristicsValues.get(source);
                if (value != null) {
                    values = new String[]{
                            value[0] + ""
                    };
                    return true;
                }
            }


            Mocker mocker;
            switch (sourceType) {
                case device:
                    mocker = session.getDeviceMocker(source);
                    break;
                case remoteDevice:
                    mocker = session.getRemoteDeviceMocker(source);
                    break;
                case gattService:
                    mocker = session.getGattServiceMocker(source);
                    break;
                case gattCharacteristic:
                    mocker = session.getGattCharacteristicMocker(source);
                    break;
                default:
                    mocker = null;
                    break;
            }

            if (mocker != null) {
                MockedResponse mockedResponse = mocker.mock(this,  eventType, source, arguments);

                // if we can mock the event, for the event loop nothing happens (the current event stays the same)
                // however, if we have created a mocked event, we will wake up the event loop to process it. It will stack the current event and restore
                // it after the mocked event has been dealt with.
                //
                // to ensure smooth execution the method will only return after the mocked event has actually been processed.

                if (mockedResponse != null) {

                    mockedEvents.addAll(Arrays.asList(mockedResponse.getNextMockedEvents()));
                    values = mockedResponse.getMockedResultValues();
                    if (mockedEvents.size() > 0) {
                        while (sessionIsRunning && currentEvent != null && stackedEvent != null)
                            try {
                                condition.await();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }

                        if (currentEvent != null)
                            stackedEvent = currentEvent;

                        updateCurrentEvent(null);

                        while (sessionIsRunning && (currentEvent == null || mockedEvents.size() > 0))
                            try {
                                condition.await();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }

                    }
                    return true;

                }
            }

            while (!waitingForEvent && sessionIsRunning)
                try {
                    condition.await();
                } catch (InterruptedException ignored) {
                }

            if (currentEvent != null && eventType == currentEvent.type) {
                this.source = currentEvent.source;
                this.values = currentEvent.values;
                updateCurrentEvent(null);
                while (currentEvent == null && sessionIsRunning)
                    try {
                        condition.await();
                    } catch (InterruptedException ignored) {
                    }

                if (this.source == source) {

                    // strict checking disabled for arguments for now. Right now there is one source, and arguments.
                    // For this to work that should be refactored to a path of sources and arguments.

//                if (strict && !Arrays.deepEquals(values, arguments) && arguments.length != 0) {
//                    String message = "actual values "+Arrays.toString(values)+" not equal to expected arguments "+Arrays.toString(arguments);
//                    if (shouldLog()) Log.i(TAG, message);
//                    throw new RuntimeException(message);
//                }
                    return true;
                } else {
                    String message = "Mismatch source: For event " + eventType + " source not correct: " + source + " expected " + this.source;
                    if (strict)
                        throw new RuntimeException(message);
                    return false;
                }
            }
            String message = "Mismatch, expected " + (currentEvent != null ? currentEvent.type : "nothing") + " got :" + eventType + "(" + source + ") is happening (session running? :" + sessionIsRunning + ") with values" + Arrays.toString(this.values) + " full event: " + currentEvent;
            if (strict)
                throw new RuntimeException(message);
            if (shouldLog()) System.out.println(TAG+": "+message);
        return false;

        }finally {
            lock.unlock();
        }

    }

    @Override
    public  void deviceStartScanning(LeDeviceMock leDeviceMock) {
        lock.lock();
            try {

                checkEvent(deviceStartScanning, leDeviceMock);
            }finally {
                lock.unlock();
            }
    }

    @Override
    public  void deviceStartScanning(LeDeviceMock leDeviceMock, UUID[] uuids) {
        lock.lock();
        try {
            checkEvent(deviceStartScanning, leDeviceMock);
        }finally {
            lock.unlock();
        }
    }

    @Override
    public void deviceStartScanning(LeDeviceMock leDeviceMock, List<List<UUID>> filters) {
        lock.lock();
        try {
            checkEvent(deviceStartScanning, leDeviceMock);
        }finally {
            lock.unlock();
        }
    }

    @Override
    public void deviceStopScanning(LeDeviceMock leDeviceMock) {
        lock.lock();
        try {
            checkEvent(deviceStopScanning, leDeviceMock);
        }finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceConnect(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
            checkEvent(remoteDeviceConnect, leRemoteDeviceMock);

        }finally {
            lock.unlock();
        }
    }

    @Override
    public  void remoteDeviceStartServiceDiscovery(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
                checkEvent(remoteDeviceStartServiceDiscovery, leRemoteDeviceMock);
        }finally {
            lock.unlock();
        }
    }
    @Override
    public  void remoteDeviceStartServiceDiscovery(LeRemoteDeviceMock leRemoteDeviceMock, UUID[] uuids) {
        lock.lock();
        try {
            checkEvent(remoteDeviceStartServiceDiscovery, leRemoteDeviceMock,Arrays.toString(uuids));

        }finally {
            lock.unlock();
        }
    }

    @Override
    public  void remoteDeviceClose(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
                checkEvent(remoteDeviceClose, leRemoteDeviceMock);
        }finally {
            lock.unlock();
        }
    }

    @Override
    public  void remoteDeviceDisconnect(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
            checkEvent(remoteDeviceDisconnect, leRemoteDeviceMock);
        } finally {
            lock.unlock();
        }
    }

    Map<Integer, LeCharacteristicListener> characteristicListeners = new HashMap<>();
    protected LeCharacteristicListener getCharacteristicListener(String key) {
        return getCharacteristicListener(Integer.valueOf(key));
    }
    @Override
    public LeCharacteristicListener getCharacteristicListener(int key) {
        lock.lock();
        try {
            return characteristicListeners.get(key);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceSetCharacteristicListener(LeRemoteDeviceMock leRemoteDeviceMock, LeCharacteristicListener listener, UUID[] uuids) {
        lock.lock();
        try {
            checkEvent(remoteDeviceSetCharacteristicListener, leRemoteDeviceMock, Arrays.toString(uuids));
            characteristicListeners.put(eventIntValue(), listener);
        } finally {
            lock.unlock();
        }
    }

    Map<Integer, LeCharacteristicWriteListener> characteristicWriteListeners = new HashMap<>();

    protected LeCharacteristicWriteListener getCharacteristicWriteListener(String key) {
        return getCharacteristicWriteListener(Integer.valueOf(key));
    }

    @Override
    public LeCharacteristicWriteListener getCharacteristicWriteListener(int key) {
        lock.lock();
        try {
            return characteristicWriteListeners.get(key);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceSetCharacteristicWriteListener(LeRemoteDeviceMock leRemoteDeviceMock, LeCharacteristicWriteListener listener, UUID[] uuids) {
        lock.lock();
        try {
            checkEvent(remoteDeviceSetCharacteristicWriteListener, leRemoteDeviceMock, Arrays.toString(uuids));
            characteristicWriteListeners.put(eventIntValue(), listener);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public boolean serviceEnableCharacteristicNotification(LeGattServiceMock leGattServiceMock, UUID characteristic) {
        lock.lock();
        try {
            checkEvent(serviceEnableCharacteristicNotification, leGattServiceMock, characteristic.toString());
            return true;
        } finally {
            lock.unlock();
        }
    }

    Map<Integer, LeDeviceMock> devices = new HashMap<>();
    Map<LeDeviceMock, Integer> deviceKeys = new HashMap<>();
    protected LeDeviceMock getDevice(String key) {
        return getDevice(Integer.parseInt(key));
    }
    protected LeDeviceMock getDevice(int key) {
        return devices.get(key);
    }
    protected int getDeviceKey(LeDeviceMock device) {
        return deviceKeys.get(device);
    }

    @Override
    public void addDevice(int key, LeDeviceMock mock) {
        lock.lock();
        try {
            devices.put(key, mock);
            deviceKeys.put(mock, key);
        } finally {
            lock.unlock();
        }
    }

    Map<Integer, LeRemoteDeviceMock> remoteDevices = new HashMap<>();
    Map<LeRemoteDeviceMock, Integer> remoteDeviceKeys = Collections.synchronizedMap(new HashMap<LeRemoteDeviceMock, Integer>());
    protected LeRemoteDeviceMock createRemoteDevice(int key, LeDeviceMock deviceMock) {
        remoteDevices.put(key, new LeRemoteDeviceMock(key, this, deviceMock));
        remoteDeviceKeys.put(remoteDevices.get(key), key);
        return remoteDevices.get(key);
    }
    protected LeRemoteDeviceMock createOrReturnRemoteDevice(int key, LeDeviceMock deviceMock) {
        LeRemoteDeviceMock mock = remoteDevices.get(key);
        return mock != null ? mock : createRemoteDevice(key, deviceMock);
    }

    protected int getRemoteDeviceKey(LeRemoteDeviceMock leRemoteDeviceMock) {
        return remoteDeviceKeys.get(leRemoteDeviceMock);
    }
    protected LeRemoteDeviceMock getRemoteDevice(String key) {
        return getRemoteDevice(Integer.parseInt(key));
    }
    protected LeRemoteDeviceMock getRemoteDevice(int key) {
        return remoteDevices.get(key);
    }


    Map<Integer, LeGattServiceMock> gattServices = new HashMap<>();
    Map<LeGattServiceMock, Integer> gattServicesKeys = new HashMap<>();
    protected LeGattServiceMock createGattService(String key) {
        return createGattService(Integer.valueOf(key));
    }
    protected LeGattServiceMock createGattService(int key) {
        gattServices.put(key, new LeGattServiceMock(key, this));
        gattServicesKeys.put(gattServices.get(key), key);
        return gattServices.get(key);
    }
    protected int getGattServiceKey(LeGattServiceMock LeGattServiceMock) {
        return gattServicesKeys.get(LeGattServiceMock);
    }

    Map<Integer, LeDeviceListener> deviceListeners = new HashMap<>();
    Map<LeDeviceListener, Integer> deviceListenerKeys = new HashMap<>();
    protected LeDeviceListener getDeviceListener(String key) {
        return getDeviceListener(Integer.valueOf(key));
    }
    protected void addDeviceListener(int key, LeDeviceListener listener) {
        deviceListeners.put(key, listener);
        deviceListenerKeys.put(listener, key);
    }
    @Override
    public LeDeviceListener getDeviceListener(int key) {
        lock.lock();
        try {
            return deviceListeners.get(key);
        } finally {
            lock.unlock();
        }
    }
    protected int getDeviceListenerKey(LeDeviceListener deviceListener) {
        return deviceListenerKeys.get(deviceListener);
    }



    Map<Integer, LeGattCharacteristicMock> characteristics = new HashMap<>();
    Map<LeGattCharacteristicMock, Integer> characteristicsKeys = new HashMap<>();
    protected LeGattCharacteristicMock createOrReturnCharacteristic(String key) {
        return createOrReturnCharacteristic(Integer.valueOf(key));
    }
    protected LeGattCharacteristicMock createOrReturnCharacteristic(int key) {
        LeGattCharacteristicMock mock = characteristics.get(key);
        if (mock != null)
            return mock;
        characteristics.put(key, new LeGattCharacteristicMock(this));
        characteristicsKeys.put(characteristics.get(key), key);
        return characteristics.get(key);
    }
    protected int getCharacteristicKey(LeGattCharacteristicMock characteristic) {
        return characteristicsKeys.get(characteristic);
    }
    protected LeGattCharacteristicMock getCharacteristic(String key) {
        return getCharacteristic(Integer.valueOf(key));
    }
    protected LeGattCharacteristicMock getCharacteristic(int key) {
        return characteristics.get(key);
    }

    @Override
    public LeGattCharacteristic serviceGetCharacteristic(LeGattServiceMock leGattServiceMock, UUID uuid) {
        lock.lock();
        try {
            if (checkEvent(serviceGetCharacteristic, leGattServiceMock, uuid.toString()))
            return createOrReturnCharacteristic(eventIntValue());
        else
            return null;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public  void deviceAddListener(LeDeviceMock leDeviceMock, LeDeviceListener listener) {
        lock.lock();
        try {
            if (checkEventWithSourceId(deviceAddListener, SourceType.device, getDeviceKey(leDeviceMock))) {
                addDeviceListener(eventIntValue(), listener);
            }
        } finally {
            lock.unlock();
        }
    }

    @Override
    public  void deviceRemoveListener(LeDeviceMock leDeviceMock, LeDeviceListener listener) {
        lock.lock();
        try {
            checkEvent(deviceRemoveListener, leDeviceMock);
        } finally {
            lock.unlock();
        }
    }

    Map<Integer, LeRemoteDeviceListener> remoteDeviceListeners = new HashMap<>();
    protected LeRemoteDeviceListener getRemoteDeviceListener(String key) {
        return remoteDeviceListeners.get(Integer.parseInt(key));
    }
    @Override
    public LeRemoteDeviceListener getRemoteDeviceListener(int key) {
        lock.lock();
        try {
            return remoteDeviceListeners.get(key);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceAddListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener) {
        lock.lock();
        try {
            if (checkEvent(remoteDeviceAddListener, leRemoteDeviceMock))
            remoteDeviceListeners.put(eventIntValue(), listener);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceRemoveListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener) {
        lock.lock();
        try {
            checkEvent(remoteDeviceRemoveListener, leRemoteDeviceMock);
        } finally {
            lock.unlock();
        }
    }

    @Override
    public  boolean deviceCheckBleHardwareAvailable(LeDeviceMock leDeviceMock) {
        lock.lock();
        try {
            if (checkEvent(deviceCheckBleHardwareAvailable, leDeviceMock)) {
                return eventBooleanValue();
            }
            return true;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public boolean deviceIsBtEnabled(LeDeviceMock leDeviceMock) {
        lock.lock();
        try {
            checkEvent(deviceIsBtEnabled, leDeviceMock);
            return eventBooleanValue();
        } finally {
            lock.unlock();
        }

    }

    @Override
    public String remoteDeviceGetAddress(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
            if (checkEvent(remoteDeviceGetAddress, leRemoteDeviceMock))
                return eventValue();
            else
                return "0:0:0:0";
        } finally {
            lock.unlock();
        }

    }

    @Override
    public String remoteDeviceGetName (LeRemoteDeviceMock leRemoteDeviceMock){
        lock.lock();
        try {
            checkEvent(remoteDeviceGetName, leRemoteDeviceMock);
            return eventValue();
        } finally {
            lock.unlock();
        }

    }

    @Override
    public UUID serviceGetUuid(LeGattServiceMock leGattServiceMock) {
        lock.lock();
        try {
            return checkEvent(serviceGetUUID, leGattServiceMock) ? UUID.fromString(eventValue()) : UUID.randomUUID();
        } finally {
            lock.unlock();
        }
    }


    @Override
    public byte[] characteristicGetValue(LeGattCharacteristicMock leGattCharacteristicMock) {
        lock.lock();
        try {
            checkEvent(characteristicGetValue, leGattCharacteristicMock);
            return LeUtil.stringToBytes(eventValue());
        } finally {
            lock.unlock();
        }

    }

    @Override
    public int characteristicGetIntValue(LeGattCharacteristicMock leGattCharacteristicMock, LeFormat format, int index) {
        lock.lock();
        try {
            checkEvent(characteristicGetIntValue, leGattCharacteristicMock, format.toString(), index+"");
            return eventIntValue();
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void characteristicSetValue(LeGattCharacteristicMock leGattCharacteristicMock, byte[] value) {
        lock.lock();
        try {
            checkEvent(characteristicSetValue, leGattCharacteristicMock, LeUtil.bytesToString(value));
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void characteristicSetValue(LeGattCharacteristicMock leGattCharacteristicMock, byte[] value, Boolean withResponse){
        lock.lock();
        try {
            checkEvent(characteristicSetValue, leGattCharacteristicMock, LeUtil.bytesToString(value), withResponse.toString());
        } finally {
            lock.unlock();
        }
    }

    @Override
    public void remoteDeviceReadRssi(LeRemoteDeviceMock leRemoteDeviceMock) {
        lock.lock();
        try {
            checkEvent(remoteDeviceReadRssi, leRemoteDeviceMock);
        }finally {
            lock.unlock();
        }
    }

    @Override
    public void characteristicRead(LeGattCharacteristicMock leGattCharacteristicMock) {
        lock.lock();
        try {
            checkEvent(characteristicRead, leGattCharacteristicMock);
        } finally {
            lock.unlock();
        }
    }
}
