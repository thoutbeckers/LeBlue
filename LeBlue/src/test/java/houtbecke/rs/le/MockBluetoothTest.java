package houtbecke.rs.le;


import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeScanRecord;
import houtbecke.rs.le.interceptor.InterceptingLeDevice;
import houtbecke.rs.le.interceptor.LeSessionInterceptor;
import houtbecke.rs.le.mock.LeDeviceMock;
import houtbecke.rs.le.mock.LeSessionController;
import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSink;
import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.EventType;
import houtbecke.rs.le.session.ListEventSinkSource;
import houtbecke.rs.le.session.SessionObject;

public class MockBluetoothTest {
    @Before
    public void setUp() throws Exception {
        System.setProperty("doNotLog", "true");
    }

    public ListEventSinkSource createSource() {
        ListEventSinkSource source = new ListEventSinkSource();
        EventSinkFiller filler = new EventSinkFiller(source);
        filler.addEvent(EventType.deviceAddListener, LE_DEVICE, LE_DEVICE_LISTENER);// params

        filler.addEvent(EventType.deviceStartScanning, LE_DEVICE);

        filler.addEvent(EventType.remoteDeviceFound, LE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE, "123", "");

        filler.addEvent(EventType.remoteDeviceGetAddress, LE_REMOTE_DEVICE, "0001:0002:0003:0004");

        filler.addEvent(EventType.remoteDeviceGetName, LE_REMOTE_DEVICE, "test device");

        filler.addEvent(EventType.remoteDeviceAddListener, LE_REMOTE_DEVICE, LE_REMOTE_DEVICE_LISTENER);

        filler.addEvent(EventType.remoteDeviceConnect, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceConnected, LE_REMOTE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceReadRssi, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceRssiRead,  LE_REMOTE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE,""+RSSI);

        filler.addEvent(EventType.remoteDeviceStartServiceDiscovery, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceServicesDiscovered, LE_REMOTE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE, LeGattStatus.SUCCESS.toString(), String.valueOf(LE_SERVICE_1));

        filler.addEvent(EventType.serviceGetUUID, LE_SERVICE_1, UUID.fromString("12345678-1234-1234-1234-123456789aaaa").toString());

        filler.addEvent(EventType.serviceGetCharacteristic, LE_SERVICE_1, LE_CHARACTERISTIC_1_1);

        filler.addEvent(EventType.serviceGetCharacteristic, LE_SERVICE_1, LE_CHARACTERISTIC_1_2);

        filler.addEvent(EventType.characteristicGetValue, LE_CHARACTERISTIC_1_1, "0,1,2");

        filler.addEvent(EventType.remoteDeviceSetCharacteristicListener, LE_REMOTE_DEVICE, String.valueOf(LE_CHARACTERISTIC_LISTENER), UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString());

        filler.addEvent(EventType.serviceEnableCharacteristicNotification, LE_SERVICE_1, UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString(), "true");

        filler.addEvent(EventType.characteristicNotificationChanged, LE_CHARACTERISTIC_LISTENER, UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString(), String.valueOf(LE_REMOTE_DEVICE), String.valueOf(LE_CHARACTERISTIC_1_2),"true");

        filler.addEvent(EventType.characteristicChanged, LE_CHARACTERISTIC_LISTENER, UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString(), String.valueOf(LE_REMOTE_DEVICE), String.valueOf(LE_CHARACTERISTIC_1_2));

        filler.addEvent(EventType.remoteDeviceSetCharacteristicWriteListener, LE_REMOTE_DEVICE, String.valueOf(LE_CHARACTERISTIC_WRITE_LISTENER), UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString());

        filler.addEvent(EventType.characteristicSetValue, LE_CHARACTERISTIC_1_2, "3,4,5");

        filler.addEvent(EventType.characteristicWritten, LE_CHARACTERISTIC_WRITE_LISTENER, UUID.fromString("12345678-1234-1234-1234-123456789cccc").toString(), String.valueOf(LE_REMOTE_DEVICE), String.valueOf(LE_CHARACTERISTIC_1_2),String.valueOf(true));

        filler.addEvent(EventType.remoteDeviceDisconnect, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceDisconnected, LE_REMOTE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceClose, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceClosed,LE_REMOTE_DEVICE_LISTENER, LE_DEVICE, LE_REMOTE_DEVICE);

        filler.addEvent(EventType.remoteDeviceRemoveListener, LE_REMOTE_DEVICE, LE_REMOTE_DEVICE_LISTENER);


        return source;
    }

    @Test
    public void testController() throws InterruptedException {
        ListEventSinkSource events = createSource();
        sessionController = new LeSessionController(SessionObject.newSession().setDefaultSource(events), true);

        EventSink sink = new ListEventSinkSource();
        LeSessionInterceptor sessionInterceptor = new LeSessionInterceptor(sink);
        device = new InterceptingLeDevice(new LeDeviceMock(EventSinkFiller.DEFAULT_DEVICE_ID, sessionController), sessionInterceptor);
        sessionController.startDefaultSession();
        assert sessionController.waitTillSessionStarted();

        final Boolean[] foundRemoteDevice = new Boolean[]{false};


        ((InterceptingLeDevice) device).addListener(new LeDeviceListener() {
            @Override
            public void leDeviceFound(LeDevice leDeviceFound, LeRemoteDevice leFoundRemoteDevice, int rssi, LeScanRecord scanRecord) {
                assert getDevice().equals(leDeviceFound);
                assert leFoundRemoteDevice != null;
                assert rssi == 123;

                setRemoteDevice(leFoundRemoteDevice);

                foundRemoteDevice[0] = (true);
            }

            @Override
            public void leDeviceState(LeDevice leDevice, LeDeviceState leDeviceState) {

            }

        });
        ((InterceptingLeDevice) device).startScanning();
        Thread.sleep(100);
        assert foundRemoteDevice[0];

        assert remoteDevice.getAddress().equals("0001:0002:0003:0004");
        assert remoteDevice.getName().equals("test device");

        final Boolean[] connected = new Boolean[]{false};
        final Boolean[] disconnected = new Boolean[]{false};
        final Boolean[] closed = new Boolean[]{false};


        final Boolean[] discovered = new Boolean[]{false};
        final Boolean[] rssiRead = new Boolean[]{false};
        final int[] rssiValue = new int[]{0};

        final LeGattService[] service = new LeGattService[]{null};

        LeRemoteDeviceListener remoteDeviceListener= new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(LeDevice leDeviceFoundOn, LeRemoteDevice leRemoteDevice) {
                assert getDevice().equals(leDeviceFoundOn);
                assert getRemoteDevice().equals(leRemoteDevice);
                connected[0] = true;
            }

            @Override
            public void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
                assert getDevice().equals(leDevice);
                assert getRemoteDevice().equals(leRemoteDevice);
                disconnected[0] = true;
            }

            @Override
            public void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
                assert getDevice().equals(leDevice);
                assert getRemoteDevice().equals(leRemoteDevice);
                closed[0] = true;
            }

            @Override
            public void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
                discovered[0] = true;
                assert getDevice().equals(leDevice);
                assert leRemoteDevice.equals(getRemoteDevice());
                assert LeGattStatus.SUCCESS.equals(status);
                assert gatts.length == 1;
                service[0] = gatts[0];
            }

            @Override
            public void rssiRead(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi) {
                assert getDevice().equals(leDevice);
                assert leRemoteDevice.equals(getRemoteDevice());
                assert (RSSI == rssi);
                rssiRead[0] = true;
                rssiValue[0] = rssi;
            }

        };
        remoteDevice.addListener(remoteDeviceListener);
        remoteDevice.connect();
        Thread.sleep(100);
        assert connected[0];

        remoteDevice.readRssi();
        Thread.sleep(100);
        assert rssiRead[0];

        remoteDevice.startServicesDiscovery();
        Thread.sleep(100);
        assert discovered[0];

        service[0].getUuid().equals(UUID.fromString("12345678-1234-1234-1234-123456789aaaa"));

        final LeGattCharacteristic characteristic = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789bbbb"));
        assert characteristic != null;

        LeGattCharacteristic characteristic2 = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789eeee"));
        assert characteristic2 != null;

        byte[] byteArray1 = characteristic.getValue();
        assert byteArray1[0] == 0;
        assert byteArray1[1] == 1;
        assert byteArray1[2] == 2;
        final Boolean[] changed = new Boolean[]{false};
        final Boolean[] notificationChanged = new Boolean[]{false};

        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
            @Override
            public void leCharacteristicChanged(UUID uuid, LeRemoteDevice leRemoteDevice, LeGattCharacteristic leCharacteristic) {
                assert uuid.equals(UUID.fromString("12345678-1234-1234-1234-123456789cccc"));
                assert getRemoteDevice().equals(leRemoteDevice);
                assert !leCharacteristic.equals(characteristic) : "make sure this is a different characteristic";
                changed[0] = true;
            }

            @Override
            public void leCharacteristicNotificationChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic, boolean success) {
                notificationChanged[0] = true;
            }

        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        service[0].enableCharacteristicNotification(UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        Thread.sleep(100);
        assert notificationChanged[0];
        assert changed[0];

        remoteDevice.setCharacteristicWriteListener(new LeCharacteristicWriteListener() {
            @Override
            public void leCharacteristicWritten(UUID uuid, LeRemoteDevice leRemoteDevice, LeGattCharacteristic leCharacteristic,boolean success) {
                assert uuid.equals(UUID.fromString("12345678-1234-1234-1234-123456789cccc"));
                assert getRemoteDevice().equals(leRemoteDevice);
                assert !leCharacteristic.equals(characteristic) : "make sure this is a different characteristic";
                changed[0] = true;
            }

        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        changed[0] = false;

        characteristic2.setValue(new byte[]{3, 4, 5});
        Thread.sleep(100);
        assert changed[0];

        remoteDevice.disconnect();
        Thread.sleep(100);
        assert disconnected[0];



        remoteDevice.close();
        Thread.sleep(100);
        assert closed[0];

        remoteDevice.removeListener(remoteDeviceListener);


        assert !events.hasMoreEvent();

        assert sessionController.getSessionException() == null;

        ListEventSinkSource source = createSource();

        while (source.hasMoreEvent()){
            Event event1 = source.nextEvent();
            Event event2 =((ListEventSinkSource) sink).nextEvent();
            assert event1.equals(event2);
        }
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

    public final int getLE_DEVICE() {
        return LE_DEVICE;
    }

    public final int getLE_DEVICE_LISTENER() {
        return LE_DEVICE_LISTENER;
    }

    public final int getLE_REMOTE_DEVICE() {
        return LE_REMOTE_DEVICE;
    }

    public final int getLE_REMOTE_DEVICE_LISTENER() {
        return LE_REMOTE_DEVICE_LISTENER;
    }

    public final int getLE_SERVICE_1() {
        return LE_SERVICE_1;
    }

    public final int getLE_CHARACTERISTIC_1_1() {
        return LE_CHARACTERISTIC_1_1;
    }

    public final int getLE_CHARACTERISTIC_1_2() {
        return LE_CHARACTERISTIC_1_2;
    }

    public final int getLE_CHARACTERISTIC_LISTENER() {
        return LE_CHARACTERISTIC_LISTENER;
    }

    public LeRemoteDevice getRemoteDevice() {
        return remoteDevice;
    }

    public void setRemoteDevice(LeRemoteDevice remoteDevice) {
        this.remoteDevice = remoteDevice;
    }

    private LeSessionController sessionController;
    private LeDevice device;
    private final int LE_DEVICE = 0;
    private final int LE_DEVICE_LISTENER = 1;
    private final int LE_REMOTE_DEVICE = 2;
    private final int LE_REMOTE_DEVICE_LISTENER = 3;
    private final int LE_SERVICE_1 = 4;
    private final int LE_CHARACTERISTIC_1_1 = 5;
    private final int LE_CHARACTERISTIC_1_2 = 6;
    private final int LE_CHARACTERISTIC_LISTENER = 7;
    private final int LE_CHARACTERISTIC_WRITE_LISTENER = 8;

    private final int RSSI = 9;

    private LeRemoteDevice remoteDevice;
}
