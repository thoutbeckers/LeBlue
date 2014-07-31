import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeScanRecord;
import houtbecke.rs.le.mock.LeDeviceMock;
import houtbecke.rs.le.mock.LeSessionController;
import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.EventType;
import houtbecke.rs.le.session.ListEventSinkSource;
import houtbecke.rs.le.session.SessionObject;
import org.junit.Before;

public class MockerTest {
    @Before
    public void setUp() throws Exception {
        System.setProperty("doNotLog", "true");
    }

    public ListEventSinkSource createSource() {
        ListEventSinkSource source = new ListEventSinkSource();
        EventSinkFiller filler = new EventSinkFiller(source);

        // the test will tell us to wait for the ready signal before going on
        filler.waitForPoint("ready");

        filler.addEvent(EventType.mockCharacteristicChanged, LE_REMOTE_DEVICE, LE_CHARACTERISTIC_1_2);


        filler.addDeviceEvent(EventType.mockRemoteDeviceFound, LE_REMOTE_DEVICE_2, "123", "");


        filler.pointReached("secondDevice");


        filler.waitForPoint("done");

        return source;
    }

    @org.junit.Test
    public void testController() throws InterruptedException {


        ListEventSinkSource events = createSource();

        sessionController = new LeSessionController(SessionObject.newSession().setDefaultSource(events).withDeviceMocker().withFakeDeviceListeners().hasRemoteDevices(LE_REMOTE_DEVICE_3, LE_REMOTE_DEVICE).and.withRemoteDeviceMocker(LE_REMOTE_DEVICE).mocksRemoteDevice("0001:0002:0003:0004", "d1234", true).withFakeRemoteDeviceListeners().withFakeCharacteristicsListeners().hasServices(LeGattStatus.SUCCESS, LE_SERVICE_1_1, LE_SERVICE_1_2).and.withRemoteDeviceMocker(LE_REMOTE_DEVICE_2).mocksRemoteDevice("0005:0006:0007:0008", "d5678", true).withFakeRemoteDeviceListeners().withFakeCharacteristicsListeners().hasServices(LeGattStatus.SUCCESS, LE_SERVICE_2_1).and.withGattServiceMocker(LE_SERVICE_1_1).mocksService(UUID.fromString("12345678-1234-1234-1234-123456789aaaa")).hasCharacteristic(LE_CHARACTERISTIC_1_1, UUID.fromString("12345678-1234-1234-1234-123456789bbbb")).and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_1_1).mocksCharacteristic().hasFixedValue(0, 1, 2).and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_1_2).mocksCharacteristic("12345678-1234-1234-1234-123456789bbcc").hasFixedValue(0, 1, 2).and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_2_1).mocksCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789eeee")).hasValue(0, 1, 2).hasValue(3, 4, 5).hasFixedValue(6, 7, 8).and.withGattServiceMocker(LE_SERVICE_2_1).mocksService(UUID.fromString("12345678-1234-1234-1234-123456789dddd")).hasCharacteristic(LE_CHARACTERISTIC_2_1).end());

        device = new LeDeviceMock(EventSinkFiller.DEFAULT_DEVICE_ID, sessionController);
        sessionController.startDefaultSession();

        assert sessionController.waitTillSessionStarted();

        final int[] foundRemoteDevices  = new int[1];
        foundRemoteDevices[0] = 0;
        final Boolean[] foundRemoteDevice2  = new Boolean[1];
        foundRemoteDevice2[0] =false;

        ((LeDeviceMock) device).addListener(new LeDeviceListener() {
            @Override
            public synchronized void leDeviceFound(LeDevice leDeviceFound, LeRemoteDevice leFoundRemoteDevice, int rssi, LeScanRecord scanRecord) {
                synchronized (MockerTest.this) {
                    assert getDevice().equals(leDeviceFound);
                    assert leFoundRemoteDevice != null;
                    assert rssi == 123;

                    System.out.println(leFoundRemoteDevice.getAddress());

                    if (leFoundRemoteDevice.getAddress().equals("0001:0002:0003:0004") || leFoundRemoteDevice.getAddress().equals("0005:0006:0007:0008"))
                        setRemoteDevice(leFoundRemoteDevice);

                    foundRemoteDevices[0]++;
                    MockerTest.this.notify();
                }

            }

        });

        ((LeDeviceMock) device).addListener(new LeDeviceListener() {
            @Override
            public void leDeviceFound(LeDevice leDeviceFound, LeRemoteDevice leFoundRemoteDevice, int rssi, LeScanRecord scanRecord) {
                foundRemoteDevice2[0]= true;
            }

        });
        device.startScanning();

        synchronized (this) {
            while (foundRemoteDevices[0] < 2) this.wait();
        }


        assert foundRemoteDevices[0] == 2 && foundRemoteDevice2[0] : "check both listeners are notified";

        Thread.sleep(100);

        assert remoteDevice.getAddress().equals("0001:0002:0003:0004");
        assert remoteDevice.getName().equals("d1234");


        final Boolean[] connected  = new Boolean[1];
        connected[0] =false;
        Boolean disconnected = false;
        Boolean closed = false;
        final Boolean[] discovered  = new Boolean[1];
        discovered[0] =false;

       final LeGattService[] service  = new LeGattService[1];



        remoteDevice.addListener(new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(LeDevice leDeviceFoundOn, LeRemoteDevice leRemoteDevice) {
                assert getDevice().equals(leDeviceFoundOn);
                assert getRemoteDevice().equals(leRemoteDevice);
                synchronized (MockerTest.this) {
                    connected[0] = true;
                    MockerTest.this.notifyAll();
                }

            }

            @Override
            public void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
                discovered[0] = true;
                assert getDevice().equals(leDevice);
                assert leRemoteDevice.equals(getRemoteDevice());
                assert LeGattStatus.SUCCESS.equals(status);
                assert gatts.length == 2;
                service[0] = (gatts[0]);
            }

        });

        remoteDevice.connect();

        while (!connected[0]) synchronized (this) {
            wait();
        }

        assert connected[0];

        remoteDevice.startServicesDiscovery();

        Thread.sleep(1000);
        assert discovered[0];

        service[0].getUuid().equals(UUID.fromString("12345678-1234-1234-1234-123456789aaaa"));

        final LeGattCharacteristic characteristic = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789bbbb"));
        assert characteristic != null;

        byte[] byteArray1 = characteristic.getValue();
        assert byteArray1[0] == 0;
        assert byteArray1[1] == 1;
        assert byteArray1[2] == 2;

        byteArray1 = characteristic.getValue();
        assert byteArray1[0] == 0;
        assert byteArray1[1] == 1;
        assert byteArray1[2] == 2;

        final Boolean[] changed  = new Boolean[1];
        changed[0] =false;


        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
            @Override
            public void leCharacteristicChanged(UUID uuid, LeRemoteDevice leRemoteDevice, LeGattCharacteristic leCharacteristic) {
                assert uuid.equals(UUID.fromString("12345678-1234-1234-1234-123456789bbcc"));
                assert remoteDevice.equals(leRemoteDevice);
                assert !leCharacteristic.equals(characteristic) : "make sure this is a different characteristic";
                changed[0]=true;
            }

        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        service[0].enableCharacteristicNotification(UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        // signal to the script that we are at the point where our listeners etc are working.
        sessionController.pointReached("ready");


        Thread.sleep(1000);
        assert changed[0];

        characteristic.setValue(new byte[]{3, 4, 5});


        sessionController.waitForPoint("secondDevice");

        assert remoteDevice.getAddress().equals("0005:0006:0007:0008");

        remoteDevice.addListener(new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
                service[0] = gatts[0];
            }

        });
        remoteDevice.startServicesDiscovery();
        Thread.sleep(100);

        LeGattCharacteristic char21 = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789eeee"));

        changed[0]=false;

        byte[] byteArray2 = char21.getValue();
        assert byteArray2[0] == 0;
        assert byteArray2[1] == 1;
        assert byteArray2[2] == 2;

        byteArray2 = char21.getValue();
        assert byteArray2[0] == 3;
        assert byteArray2[1] == 4;
        assert byteArray2[2] == 5;

        byteArray2 = char21.getValue();
        assert byteArray2[0] == 6;
        assert byteArray2[1] == 7;
        assert byteArray2[2] == 8;

        byteArray2 = char21.getValue();
        assert byteArray2[0] == 6;
        assert byteArray2[1] == 7;
        assert byteArray2[2] == 8;


        sessionController.pointReached("done");

        sessionController.waitForFinishedSession();

        assert !events.hasMoreEvent();
        assert sessionController.getSessionException() == null;
    }

    public LeSessionController getSessionController() {
        return sessionController;
    }

    public void setSessionController(LeSessionController sessionController) {
        this.sessionController = sessionController;
    }

    public LeDevice getDevice() {
        return device;
    }

    public void setDevice(LeDevice device) {
        this.device = device;
    }

    public final int getLE_REMOTE_DEVICE() {
        return LE_REMOTE_DEVICE;
    }

    public final int getLE_REMOTE_DEVICE_2() {
        return LE_REMOTE_DEVICE_2;
    }

    public final int getLE_REMOTE_DEVICE_3() {
        return LE_REMOTE_DEVICE_3;
    }

    public final int getLE_SERVICE_1_1() {
        return LE_SERVICE_1_1;
    }

    public final int getLE_SERVICE_1_2() {
        return LE_SERVICE_1_2;
    }

    public final int getLE_SERVICE_2_1() {
        return LE_SERVICE_2_1;
    }

    public final int getLE_CHARACTERISTIC_1_1() {
        return LE_CHARACTERISTIC_1_1;
    }

    public final int getLE_CHARACTERISTIC_1_2() {
        return LE_CHARACTERISTIC_1_2;
    }

    public final int getLE_CHARACTERISTIC_2_1() {
        return LE_CHARACTERISTIC_2_1;
    }

    public LeRemoteDevice getRemoteDevice() {
        return remoteDevice;
    }

    public void setRemoteDevice(LeRemoteDevice remoteDevice) {
        this.remoteDevice = remoteDevice;
    }

    private LeSessionController sessionController;
    private LeDevice device;
    private final int LE_REMOTE_DEVICE = 11;
    private final int LE_REMOTE_DEVICE_2 = 12;
    private final int LE_REMOTE_DEVICE_3 = 13;
    private final int LE_SERVICE_1_1 = 101;
    private final int LE_SERVICE_1_2 = 102;
    private final int LE_SERVICE_2_1 = 201;
    private final int LE_CHARACTERISTIC_1_1 = 1001;
    private final int LE_CHARACTERISTIC_1_2 = 1002;
    private final int LE_CHARACTERISTIC_2_1 = 2001;
    private LeRemoteDevice remoteDevice;
}
