package houtbecke.rs.le;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import org.junit.Assert;
import org.junit.Before;

import java.util.UUID;

import javax.annotation.Nonnull;

import houtbecke.rs.le.mock.LeDeviceMock;
import houtbecke.rs.le.mock.LeSessionController;
import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.LeEventType;
import houtbecke.rs.le.session.ListEventSinkSource;
import houtbecke.rs.le.session.SessionObject;

@SuppressWarnings("FieldCanBeLocal")
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

        filler.addEvent(LeEventType.mockCharacteristicChanged, LE_REMOTE_DEVICE, LE_CHARACTERISTIC_1_2);


        filler.addDeviceEvent(LeEventType.mockRemoteDeviceFound, LE_REMOTE_DEVICE_2, "123", "");


        filler.pointReached("secondDevice");


        filler.waitForPoint("done");

        return source;
    }

    @org.junit.Test
    public void testController() throws InterruptedException {


        ListEventSinkSource events = createSource();

        sessionController = new LeSessionController(SessionObject.newSession().setDefaultSource(events).withDeviceMocker().withFakeDeviceListeners().hasRemoteDevices(LE_REMOTE_DEVICE_3, LE_REMOTE_DEVICE).and.withRemoteDeviceMocker(LE_REMOTE_DEVICE).mocksRemoteDevice("0001:0002:0003:0004", "d1234", true).withFakeRemoteDeviceListeners().withFakeCharacteristicsListeners().hasServices(LeGattStatus.SUCCESS, LE_SERVICE_1_1, LE_SERVICE_1_2).and.withRemoteDeviceMocker(LE_REMOTE_DEVICE_2).mocksRemoteDevice("0005:0006:0007:0008", "d5678", true).withFakeRemoteDeviceListeners().withFakeCharacteristicsListeners().hasServices(LeGattStatus.SUCCESS, LE_SERVICE_2_1).and.withGattServiceMocker(LE_SERVICE_1_1).mocksService(UUID.fromString("12345678-1234-1234-1234-123456789aaaa")).canNotify(LE_CHARACTERISTIC_1_2,UUID.fromString("12345678-1234-1234-1234-123456789bbcc"),LE_REMOTE_DEVICE,true).hasCharacteristic(LE_CHARACTERISTIC_1_1, UUID.fromString("12345678-1234-1234-1234-123456789bbbb")) .and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_1_1).mocksCharacteristic().hasFixedValue(0, 1, 2) .and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_1_2).mocksCharacteristic("12345678-1234-1234-1234-123456789bbcc").hasFixedValue(0, 1, 2).and.withGattCharacteristicsMocker(LE_CHARACTERISTIC_2_1).mocksCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789eeee")).hasValue(0, 1, 2).hasValue(3, 4, 5).hasFixedValue(6, 7, 8) .and.withGattServiceMocker(LE_SERVICE_2_1).mocksService(UUID.fromString("12345678-1234-1234-1234-123456789dddd")).hasCharacteristic(LE_CHARACTERISTIC_2_1).end());

        device = new LeDeviceMock(EventSinkFiller.DEFAULT_DEVICE_ID, sessionController);
        sessionController.startDefaultSession();

        Assert.assertTrue(sessionController.waitTillSessionStarted());

        final int[] foundRemoteDevices  = new int[1];
        foundRemoteDevices[0] = 0;
        final Boolean[] foundRemoteDevice2  = new Boolean[1];
        foundRemoteDevice2[0] =false;

        device.addListener(new LeDeviceListener() {
            @Override
            public synchronized void leDeviceFound(@Nonnull LeDevice leDeviceFound, @Nonnull LeRemoteDevice leFoundRemoteDevice, int rssi, @Nonnull
                    LeScanRecord scanRecord) {
                synchronized (MockerTest.this) {
                    assertEquals(getDevice(), leDeviceFound);
                    assertNotNull(leFoundRemoteDevice);
                    assertEquals(rssi, 123);

                    System.out.println(leFoundRemoteDevice.getAddress());

                    if (leFoundRemoteDevice.getAddress().equals("0001:0002:0003:0004") ||
                            leFoundRemoteDevice.getAddress().equals("0005:0006:0007:0008")) { setRemoteDevice(leFoundRemoteDevice); }

                    foundRemoteDevices[0]++;
                    MockerTest.this.notify();
                }

            }

            @Override
            public void leDeviceState(@Nonnull LeDevice leDevice, @Nonnull LeDeviceState leDeviceState) {

            }

        });

        (device).addListener(new LeDeviceListener() {
            @Override
            public void leDeviceFound(@Nonnull LeDevice leDeviceFound, @Nonnull LeRemoteDevice leFoundRemoteDevice, int rssi,
                                      @Nonnull LeScanRecord scanRecord) {
                foundRemoteDevice2[0] = true;
            }

            @Override
            public void leDeviceState(@Nonnull LeDevice leDevice, @Nonnull LeDeviceState leDeviceState) {

            }

        });
        device.startScanning();

        synchronized (this) {
            while (foundRemoteDevices[0] < 2) this.wait();
        }


        assertTrue("check both listeners are notified", foundRemoteDevices[0] == 2 && foundRemoteDevice2[0]);

        Thread.sleep(100);

        assertEquals(remoteDevice.getAddress(), "0001:0002:0003:0004");
        assertEquals(remoteDevice.getName(), "d1234");


        final Boolean[] connected  = new Boolean[1];
        connected[0] =false;
        final Boolean[] discovered  = new Boolean[1];
        discovered[0] =false;

       final LeGattService[] service  = new LeGattService[1];



        remoteDevice.addListener(new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(@Nonnull LeDevice leDeviceFoundOn, @Nonnull LeRemoteDevice leRemoteDevice) {
                assertEquals(getDevice(), leDeviceFoundOn);
                assertEquals(getRemoteDevice(), leRemoteDevice);
                synchronized (MockerTest.this) {
                    connected[0] = true;
                    MockerTest.this.notifyAll();
                }

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
                discovered[0] = true;
                assertEquals(getDevice(), leDevice);
                assertEquals(leRemoteDevice, getRemoteDevice());
                assertEquals(LeGattStatus.SUCCESS, status);
                assertEquals(gatts.length, 2);
                service[0] = (gatts[0]);
            }

            @Override
            public void rssiRead(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, int rssi) {

            }

        });

        remoteDevice.connect();

        while (!connected[0]) synchronized (this) {
            wait();
        }

        assertTrue(connected[0]);

        remoteDevice.startServicesDiscovery();

        Thread.sleep(1000);
        assertTrue(discovered[0]);

        assertTrue(service[0].getUuid().equals(UUID.fromString("12345678-1234-1234-1234-123456789aaaa")));

        final LeGattCharacteristic characteristic = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789bbbb"));
        assert characteristic != null;

        byte[] byteArray1 = characteristic.getValue();
        assertEquals(byteArray1[0],0);
        assertEquals(byteArray1[1],1);
        assertEquals(byteArray1[2],2);

        byteArray1 = characteristic.getValue();
        assertEquals(byteArray1[0],0);
        assertEquals(byteArray1[1],1);
        assertEquals(byteArray1[2],2);

        final Boolean[] changed  = new Boolean[1];
        changed[0] =false;

        final Boolean[] changedNotification  = new Boolean[1];
        changedNotification[0] =false;

        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
            @Override
            public void leCharacteristicChanged(@Nonnull UUID uuid, @Nonnull LeRemoteDevice leRemoteDevice,
                                                @Nonnull LeGattCharacteristic leCharacteristic) {
                assertEquals(uuid, UUID.fromString("12345678-1234-1234-1234-123456789bbcc"));
                assertEquals(remoteDevice, leRemoteDevice);
                assertNotEquals("make sure this is a different characteristic", leCharacteristic, characteristic);
                changed[0] = true;
            }

            @Override
            public void leCharacteristicNotificationChanged(@Nonnull UUID uuid, @Nonnull LeRemoteDevice remoteDevice,
                                                            @Nonnull LeGattCharacteristic characteristic, boolean success) {
                changedNotification[0] = true;
            }

        }, UUID.fromString("12345678-1234-1234-1234-123456789bbcc"));

        service[0].enableCharacteristicNotification(UUID.fromString("12345678-1234-1234-1234-123456789bbcc"));

        // signal to the script that we are at the point where our listeners etc are working.
        sessionController.pointReached("ready");


        Thread.sleep(1000);
        assertTrue(changedNotification[0]);
        assertTrue(changed[0]);

        characteristic.setValue(new byte[]{3, 4, 5});


        sessionController.waitForPoint("secondDevice");

        assertEquals(remoteDevice.getAddress(),"0005:0006:0007:0008");

        remoteDevice.addListener(new LeRemoteDeviceListener() {
            @Override
            public void leDevicesConnected(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice) {

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
                service[0] = gatts[0];
            }

            @Override
            public void rssiRead(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, int rssi) {

            }

        });
        remoteDevice.startServicesDiscovery();
        Thread.sleep(100);

        LeGattCharacteristic char21 = service[0].getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789eeee"));

        changed[0]=false;

        byte[] byteArray2 = char21.getValue();
        assertEquals(byteArray2[0],0);
        assertEquals(byteArray2[1],1);
        assertEquals(byteArray2[2],2);

        byteArray2 = char21.getValue();
        assertEquals(byteArray2[0],3);
        assertEquals(byteArray2[1],4);
        assertEquals(byteArray2[2],5);

        byteArray2 = char21.getValue();
        assertEquals(byteArray2[0],6);
        assertEquals(byteArray2[1],7);
        assertEquals(byteArray2[2],8);

        byteArray2 = char21.getValue();
        assertEquals(byteArray2[0],6);
        assertEquals(byteArray2[1],7);
        assertEquals(byteArray2[2],8);


        sessionController.pointReached("done");

        sessionController.waitForFinishedSession();

        assertFalse(events.hasMoreEvent());
        assertNull(sessionController.getSessionException());
    }

    public LeDevice getDevice() {
        return device;
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
