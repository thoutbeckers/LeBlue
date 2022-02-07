package houtbecke.rs.le;


import org.junit.Before;
import org.junit.Test;

import java.util.UUID;

import javax.annotation.Nonnull;

import houtbecke.rs.le.mock.LeDeviceMock;
import houtbecke.rs.le.mock.LeSessionController;
import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.LeEventType;
import houtbecke.rs.le.session.ListEventSinkSource;
import houtbecke.rs.le.session.SessionObject;

public class SessionSwitchingTest {
    @Before
    public void setUp() throws Exception {
        System.setProperty("doNotLog", "true");
    }

    public ListEventSinkSource createSource1() {
        ListEventSinkSource source1 = new ListEventSinkSource();
        EventSinkFiller filler1 = new EventSinkFiller(source1);

        filler1.addDeviceEvent(LeEventType.deviceStartScanning);

        filler1.addDeviceEvent(LeEventType.mockRemoteDeviceFound, LE_REMOTE_DEVICE, "123", "0,1,2");

        filler1.waitForPoint("ready");

        return source1;
    }

    public ListEventSinkSource createSource2() {
        ListEventSinkSource source2 = new ListEventSinkSource();
        EventSinkFiller filler2 = new EventSinkFiller(source2);

        filler2.addEvent(LeEventType.mockCharacteristicChanged, LE_REMOTE_DEVICE, LE_CHARACTERISTIC);

        filler2.waitForPoint("done");

        return source2;
    }

    @Test
    public void testController() throws InterruptedException {
        ListEventSinkSource events1 = createSource1();
        ListEventSinkSource events2 = createSource2();

        sessionController = new LeSessionController(SessionObject.newSession().setDefaultSource(events1).withNamedEventSource("values", events2).withDeviceMocker().withFakeDeviceListeners().and.withRemoteDeviceMocker(LE_REMOTE_DEVICE).mocksRemoteDevice("0001:0002:0003:0004", "d1234", true).withFakeRemoteDeviceListeners().withFakeCharacteristicsListeners().hasServices(LeGattStatus.SUCCESS, LE_SERVICE).and.withGattServiceMocker(LE_SERVICE).mocksService(UUID.fromString("12345678-1234-1234-1234-123456789aaaa")).hasCharacteristic(LE_CHARACTERISTIC, UUID.fromString("12345678-1234-1234-1234-123456789bbbb")).and.withGattCharacteristicsMocker(LE_CHARACTERISTIC).mocksCharacteristic().hasFixedValue(0, 1, 2).end());

        device = new LeDeviceMock(EventSinkFiller.DEFAULT_DEVICE_ID, sessionController);
        sessionController.startDefaultSession();
        assert sessionController.waitTillSessionStarted();
        final Boolean[] foundRemoteDevice  = new Boolean[1];
        foundRemoteDevice[0] =false;

        device.addListener(new LeDeviceListener() {
            @Override
            public void leDeviceFound(@Nonnull LeDevice leDeviceFound, @Nonnull LeRemoteDevice leFoundRemoteDevice, int rssi,
                                      @Nonnull LeScanRecord scanRecord) {
                assert getDevice().equals(leDeviceFound);
                assert leFoundRemoteDevice != null;
                assert rssi == 123;
                // assert scanRecord.getRawData() == new ArrayList<Integer>(Arrays.asList(0, 1, 2));

                setRemoteDevice(leFoundRemoteDevice);

                foundRemoteDevice[0] = true;
            }

            @Override
            public void leDeviceState(@Nonnull LeDevice leDevice, @Nonnull LeDeviceState leDeviceState) {

            }

        });

        device.startScanning();
        Thread.sleep(100);
        assert foundRemoteDevice[0];

        final Object[] service  = new Object[1];
        remoteDevice.addListener(new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(@Nonnull LeDevice leDeviceFoundOn, @Nonnull LeRemoteDevice leRemoteDevice) {
                assert getRemoteDevice().equals(leRemoteDevice);
            }

            @Override
            public void leDevicesDisconnected(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void leDevicesClosed(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice) {

            }

            @Override
            public void serviceDiscovered(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, @Nonnull LeGattStatus status, @Nonnull
                    LeGattService[] gatts) {
                assert leRemoteDevice.equals(getRemoteDevice());
                service[0] = (gatts[0]);
            }

            @Override
            public void rssiRead(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, int rssi) {

            }

        });

        remoteDevice.connect();

        Thread.sleep(100);
        remoteDevice.startServicesDiscovery();
        Thread.sleep(100);

        final Boolean[] valueRead  = new Boolean[1];
        valueRead[0] =false;


        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
            @Override
            public void leCharacteristicChanged(@Nonnull UUID uuid, @Nonnull UUID serviceUuid, @Nonnull LeRemoteDevice leRemoteDevice,
                                                @Nonnull LeGattCharacteristic leCharacteristic) {
                // assert leCharacteristic.getValue() == new ArrayList<Integer>(Arrays.asList(0, 1, 2));
                valueRead[0] = true;
            }

            @Override
            public void leCharacteristicNotificationChanged(@Nonnull UUID uuid, @Nonnull LeRemoteDevice remoteDevice,
                                                            @Nonnull LeGattCharacteristic characteristic, boolean success) {

            }

        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"));

        sessionController.pointReached("ready");

        assert !valueRead[0];

        sessionController.startSession("values");
        Thread.sleep(100);

        assert valueRead[0];

        sessionController.pointReached("done");

        sessionController.waitForFinishedSession();

        assert !events1.hasMoreEvent();
        assert !events2.hasMoreEvent();
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

    public final int getLE_SERVICE() {
        return LE_SERVICE;
    }

    public final int getLE_CHARACTERISTIC() {
        return LE_CHARACTERISTIC;
    }

    public LeRemoteDevice getRemoteDevice() {
        return remoteDevice;
    }

    public void setRemoteDevice(LeRemoteDevice remoteDevice) {
        this.remoteDevice = remoteDevice;
    }

    private LeSessionController sessionController;
    private LeDevice device;
    private final int LE_REMOTE_DEVICE = 1;
    private final int LE_SERVICE = 1;
    private final int LE_CHARACTERISTIC = 1;
    private LeRemoteDevice remoteDevice;
}
