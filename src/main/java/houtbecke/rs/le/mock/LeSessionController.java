package houtbecke.rs.le.mock;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSource;
import houtbecke.rs.le.session.EventType;

import static houtbecke.rs.le.session.EventType.*;

public class LeSessionController  implements LeMockController {

    final static String TAG = "LeBlueController";
    int counter = 0;

    public LeSessionController() {
    }

    int source;
    String[] values;
    protected String eventValue() {
        return values[0];
    }

    protected int eventIntValue() {
        return Integer.parseInt(values[0]);
    }


    protected boolean eventBooleanValue() {
        return Boolean.parseBoolean(eventValue());
    }

    Event currentEvent;
    boolean waitingForEvent = false;

    public synchronized boolean waitForSessionToWait() {
        while (!waitingForEvent) {
            try {
                this.wait(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return waitingForEvent;
    }

    public void waitForEvent(Event event) {
        while (currentEvent != null)
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        currentEvent = event;
        this.notifyAll();

        while (currentEvent == event)
            try {
                waitingForEvent = true;
                this.notifyAll();
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        waitingForEvent = false;
        this.notifyAll();

    }

    public synchronized void startSessionThread(final EventSource source) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                Thread.currentThread().setName("LeSessionController");
                startSession(source);
            }
        }).start();
    }


    boolean sessionIsRunning = false;
    public synchronized void startSession(EventSource source) {
        sessionIsRunning = true;
        this.notifyAll();
        try {

            while (source.hasMoreEvent()) {
                Event event = source.nextEvent();

                switch (event.type) {
                    case deviceAddListener:
                    case deviceStartScanning:
                    case deviceStopScanning:
                    case remoteDeviceClose:
                    case remoteDeviceDisconnect:
                    case serviceEnableCharacteristicNotification:
                    case deviceRemoveListener:
                    case deviceCheckBleHardwareAvailable:
                    case deviceIsBtEnabled:
                    case remoteDeviceGetAddress:
                    case remoteDeviceGetName:
                    case remoteDeviceAddListener:
                    case remoteDeviceRemoveListener:
                    case remoteDeviceConnect:
                    case remoteDeviceStartServiceDiscovery:
                    case serviceGetUUID:
                    case serviceGetCharacteristic:
                    case characteristicGetValue:
                    case characteristicGetIntValue:
                        waitForEvent(event);
                        break;
                    case remoteDeviceFound:
                        getDeviceListener(event.source).leDeviceFound(
                                getDevice(event.values[0]),
                                createRemoteDevice(Integer.valueOf(event.values[1]), getDevice(event.source)),
                                Integer.valueOf(event.values[2]),
                                toBytes(event.values[3]));
                        break;
                    case remoteDeviceConnected:
                        getRemoteDeviceListener(event.source).leDevicesConnected(
                                getDevice(event.values[0]),
                                getRemoteDevice(event.values[1]));
                        break;
                    case remoteDeviceServicesDiscovered:

                        LeGattServiceMock[] services = new LeGattServiceMock[event.values.length - 3];
                        for (int k = 0; k < services.length; k++)
                            services[k] = createGattService(event.values[k+3]);

                        getRemoteDeviceListener(event.source).serviceDiscovered(
                                getDevice(event.values[0]),
                                getRemoteDevice(event.values[1]),
                                LeGattStatus.fromString(event.values[2]),
                                services
                        );
                        break;

                    default:
                        throw new RuntimeException("Unimplemented event type: " + event.type);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("error processing session", e);
        }
        finally {
            sessionIsRunning = false;
            this.notifyAll();
        }
    }
    
    public boolean checkEvent(EventType event, LeDeviceMock source) {
        return checkEventWithSourceId(event, getDeviceKey(source));
    }

    public boolean checkEvent(EventType event, LeRemoteDeviceMock source) {
        return checkEventWithSourceId(event, getRemoteDeviceKey(source));
    }

    public boolean checkEvent(EventType event, LeGattServiceMock source) {
        return checkEventWithSourceId(event, getGattServiceKey(source));
    }

    public boolean checkEvent(EventType event, LeGattCharacteristicMock source) {
        return checkEventWithSourceId(event, getCharacteristicKey(source));
    }



    public synchronized boolean checkEventWithSourceId(EventType event, int source) {

        if (currentEvent != null && event == currentEvent.type) {
            this.source = currentEvent.source;
            this.values = currentEvent.values;
            currentEvent = null;
            this.notifyAll();
            while (currentEvent == null && sessionIsRunning)
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

            if (this.source == source) {
//                Log.i(TAG, event+"("+ source != null ? source : "no source"+") is happening "+ this.value != null ? " with value:["+this.value+"]" : "");
                return true;
            }
        }
//        Log.w(TAG, event+"("+ source != null ? source : "no source" + " happened, expected " + currentEvent +" ("+ source != null ? source : "no source"+")");
        currentEvent = null;
        this.notifyAll();
        return false;
    }


    @Override
    public synchronized void deviceStartScanning(LeDeviceMock leDeviceMock) {
        checkEvent(deviceStartScanning, leDeviceMock);
    }

    @Override
    public synchronized void deviceStartScanning(LeDeviceMock leDeviceMock, UUID[] uuids) {
        checkEvent(deviceStartScanning, leDeviceMock);
    }

    @Override
    public synchronized void deviceStopScanning(LeDeviceMock leDeviceMock) {
        checkEvent(deviceStopScanning, leDeviceMock);
    }

    @Override
    public synchronized void remoteDeviceConnect(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceConnect, leRemoteDeviceMock);
    }

    @Override
    public synchronized void remoteDeviceStartServiceDiscovery(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceStartServiceDiscovery, leRemoteDeviceMock);
    }

    @Override
    public synchronized void remoteDeviceClose(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceClose, leRemoteDeviceMock);
    }

    @Override
    public synchronized void remoteDeviceDisconnect(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceDisconnect, leRemoteDeviceMock);
    }

    @Override
    public synchronized boolean serviceEnableCharacteristicNotification(LeGattServiceMock leGattServiceMock, UUID characteristic) {
        checkEvent(serviceEnableCharacteristicNotification, leGattServiceMock);
        return eventBooleanValue();
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

    Map<Integer, LeRemoteDeviceMock> remoteDevices = new HashMap<>();
    Map<LeRemoteDeviceMock, Integer> remoteDeviceKeys = new HashMap<>();
    protected LeRemoteDeviceMock createRemoteDevice(int key, LeDeviceMock deviceMock) {
        remoteDevices.put(key, new LeRemoteDeviceMock(this, deviceMock));
        remoteDeviceKeys.put(remoteDevices.get(key), key);
        return remoteDevices.get(key);
    }
    protected int getRemoteDeviceKey(LeRemoteDeviceMock leRemoteDeviceMock) {
        return remoteDeviceKeys.get(leRemoteDeviceMock);
    }
    protected LeRemoteDeviceMock getRemoteDevice(String key) {
        return remoteDevices.get(Integer.parseInt(key));
    }

    Map<Integer, LeGattServiceMock> gattServices = new HashMap<>();
    Map<LeGattServiceMock, Integer> gattServicesKeys = new HashMap<>();
    protected LeGattServiceMock createGattService(String key) {
        return createGattService(Integer.valueOf(key));
    }
    protected LeGattServiceMock createGattService(int key) {
        gattServices.put(key, new LeGattServiceMock(this));
        gattServicesKeys.put(gattServices.get(key), key);
        return gattServices.get(key);
    }
    protected int getGattServiceKey(LeGattServiceMock LeGattServiceMock) {
        return gattServicesKeys.get(LeGattServiceMock);
    }

    Map<Integer, LeDeviceListener> deviceListeners = new HashMap<>();
    protected LeDeviceListener getDeviceListener(String key) {
        return getDeviceListener(Integer.valueOf(key));
    }
    protected LeDeviceListener getDeviceListener(int key) {
        return deviceListeners.get(key);
    }


    Map<Integer, LeGattCharacteristicMock> characteristics = new HashMap<>();
    Map<LeGattCharacteristicMock, Integer> characteristicsKeys = new HashMap<>();
    protected LeGattCharacteristicMock createCharacteristic(String key) {
        return createCharacteristic(Integer.valueOf(key));
    }
    protected LeGattCharacteristicMock createCharacteristic(int key) {
        characteristics.put(key, new LeGattCharacteristicMock(this));
        characteristicsKeys.put(characteristics.get(key), key);
        return characteristics.get(key);
    }
    protected int getCharacteristicKey(LeGattCharacteristicMock characteristic) {
        return characteristicsKeys.get(characteristic);
    }

    @Override
    public LeGattCharacteristic serviceGetCharacteristic(LeGattServiceMock leGattServiceMock, UUID uuid) {
        checkEvent(serviceGetCharacteristic, leGattServiceMock);
        return createCharacteristic(eventIntValue());
    }

    @Override
    public synchronized void deviceAddListener(LeDeviceMock leDeviceMock, LeDeviceListener listener) {
        checkEventWithSourceId(deviceAddListener, currentEvent.source);
        devices.put(source, leDeviceMock);
        deviceKeys.put(leDeviceMock, source);
        deviceListeners.put(eventIntValue(), listener);
    }

    @Override
    public synchronized void deviceRemoveListener(LeDeviceMock leDeviceMock, LeDeviceListener listener) {
        checkEvent(deviceRemoveListener, leDeviceMock);
    }

    Map<Integer, LeRemoteDeviceListener> remoteDeviceListeners = new HashMap<>();
    protected LeRemoteDeviceListener getRemoteDeviceListener(String key) {
        return remoteDeviceListeners.get(Integer.parseInt(key));
    }
    protected LeRemoteDeviceListener getRemoteDeviceListener(int key) {
        return remoteDeviceListeners.get(key);
    }

    @Override
    public void remoteDeviceAddListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener) {
        checkEvent(remoteDeviceAddListener, leRemoteDeviceMock);
        remoteDeviceListeners.put(eventIntValue(), listener);
    }

    @Override
    public void remoteDeviceRemoveListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener) {
        checkEvent(remoteDeviceRemoveListener, leRemoteDeviceMock);
        remoteDeviceKeys.remove(eventIntValue());
    }

    @Override
    public synchronized boolean deviceCheckBleHardwareAvailable(LeDeviceMock leDeviceMock) {
        checkEvent(deviceCheckBleHardwareAvailable, leDeviceMock);
        return eventBooleanValue();
    }

    @Override
    public synchronized boolean deviceIsBtEnabled(LeDeviceMock leDeviceMock) {
        checkEvent(deviceIsBtEnabled, leDeviceMock);
        return eventBooleanValue();
    }

    @Override
    public String remoteDeviceGetAddress(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceGetAddress, leRemoteDeviceMock);
        return eventValue();
    }

    @Override
    public String remoteDeviceGetName(LeRemoteDeviceMock leRemoteDeviceMock) {
        checkEvent(remoteDeviceGetName, leRemoteDeviceMock);
        return eventValue();
    }

    @Override
    public UUID serviceGetUuid(LeGattServiceMock leGattServiceMock) {
        checkEvent(serviceGetUUID, leGattServiceMock);
        return UUID.fromString(eventValue());
    }

    @Override
    public byte[] characteristicGetValue(LeGattCharacteristicMock leGattCharacteristicMock) {
        checkEvent(characteristicGetValue, leGattCharacteristicMock);
        return toBytes(eventValue());
    }

    @Override
    public int characteristicGetIntValue(LeGattCharacteristicMock leGattCharacteristicMock, LeFormat format, int index) {
        checkEvent(characteristicGetIntValue, leGattCharacteristicMock);
        return eventIntValue();
    }

    protected byte[] toBytes(String string) {
        StringTokenizer tokenizer = new StringTokenizer(string, ",");

        byte[] bytes = new byte[tokenizer.countTokens()];
        for (int k=0; k<bytes.length; k++)
            bytes[k] = Byte.valueOf(tokenizer.nextToken());
        return bytes;
    }
}
