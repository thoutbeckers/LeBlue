package tests

import houtbecke.rs.le.*
import houtbecke.rs.le.mock.LeDeviceMock
import houtbecke.rs.le.mock.LeSessionController
import houtbecke.rs.le.session.EventSinkFiller
import houtbecke.rs.le.session.ListEventSinkSource
import houtbecke.rs.le.session.MockerObject
import houtbecke.rs.le.session.SessionObject
import org.junit.Before
import org.junit.Test

import static houtbecke.rs.le.session.EventType.*

class MockerTest {

    LeSessionController sessionController
    LeDevice device

    final int LE_DEVICE = 1
    final int LE_REMOTE_DEVICE = 11

    final int LE_SERVICE_2 = 21;
    final int LE_SERVICE_1 = 22;

    final int LE_CHARACTERISTIC_1_1 = 31;
    final int LE_CHARACTERISTIC_1_2 = 32;

    @Before
    void setUp() throws Exception {
        System.setProperty "doNotLog", "true"
    }

    def createSource() {
        def source = new ListEventSinkSource();
        def filler = new EventSinkFiller(source)

        filler.addDeviceEvent(deviceStartScanning);

        filler.addDeviceEvent(deviceRemoteDeviceFound,
                    LE_REMOTE_DEVICE,
                    "123",
                    "0,1,2")

        filler.addDeviceEvent(deviceStartScanning);

        return source
    }

    LeRemoteDevice remoteDevice

    @Test
    void testController() {
        def events = createSource();
        sessionController = new LeSessionController(
            SessionObject.newSession()
                .withDefaultSessionSource(events)

                .withDeviceMocker(
                    MockerObject.newMocker()
                    .withFakeDeviceListeners()
                )

                .withRemoteDeviceMocker(
                    LE_REMOTE_DEVICE,
                    MockerObject.newMocker()
                    .mocksRemoteDevice(LE_REMOTE_DEVICE, "0001:0002:0003:0004", "d1234", true)
                    .withFakeRemoteDeviceListeners()
                    .withFakeCharacteristicsListeners()
                    .hasServices(LeGattStatus.SUCCESS, LE_SERVICE_1, LE_SERVICE_2)

                )

                .withGattServiceMocker(LE_SERVICE_1,
                    MockerObject.newMocker()
                    .mocksService(LE_SERVICE_1, UUID.fromString("12345678-1234-1234-1234-123456789aaaa"))

                )
        )

        device = new LeDeviceMock(sessionController)
        sessionController.startSessionThread()
        assert sessionController.waitForSessionToWait();
        def foundRemoteDevice = false, foundRemoteDevice2 = false

        device.addListener(new LeDeviceListener() {
            @Override
            void leDeviceFound(LeDevice leDeviceFound, LeRemoteDevice leFoundRemoteDevice, int rssi, byte[] scanRecord) {
                assert device == leDeviceFound
                assert leFoundRemoteDevice != null
                assert rssi == 123
                assert scanRecord == [0, 1, 2]

                remoteDevice = leFoundRemoteDevice

                foundRemoteDevice = true
            }
        })

        device.addListener(new LeDeviceListener() {
            @Override
            void leDeviceFound(LeDevice leDeviceFound, LeRemoteDevice leFoundRemoteDevice, int rssi, byte[] scanRecord) {
                foundRemoteDevice2 = true
            }
        })

        device.startScanning()
        assert foundRemoteDevice && foundRemoteDevice2, "check both listeners are notified"

        assert remoteDevice.getAddress() == "0001:0002:0003:0004"
        assert remoteDevice.getName() == "d1234"

        def connected = false, disconnected = false, closed = false, discovered = false;

        LeGattService service;
        remoteDevice.addListener(new LeRemoteDeviceListener() {

            @Override
            void leDevicesConnected(LeDevice leDeviceFoundOn, LeRemoteDevice leRemoteDevice) {
                assert device == leDeviceFoundOn
                assert remoteDevice == leRemoteDevice
                connected = true;
            }

            @Override
            void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
                discovered = true;
                assert device == leDevice;
                assert leRemoteDevice == remoteDevice
                assert LeGattStatus.SUCCESS == status;
                assert gatts.length == 2
                service = gatts[0]
            }
        })

        remoteDevice.connect();

        Thread.sleep(200);
        assert connected

        remoteDevice.startServicesDiscovery()

        assert discovered

        service.getUuid() == UUID.fromString("12345678-1234-1234-1234-123456789aaaa")


//
//        def characteristic = service.getCharacteristic(UUID.fromString("12345678-1234-1234-1234-123456789bbbb"))
//        assert characteristic != null
//
//        assert characteristic.getValue() == [0, 1, 2]
//
//        def changed = false
//
//        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
//            @Override
//            void leCharacteristicChanged(UUID uuid, LeRemoteDevice leRemoteDevice, LeGattCharacteristic leCharacteristic) {
//                assert uuid == UUID.fromString("12345678-1234-1234-1234-123456789cccc")
//                assert remoteDevice == leRemoteDevice
//                assert leCharacteristic != characteristic, "make sure this is a different characteristic"
//                changed = true;
//            }
//        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"))
//
//        service.enableCharacteristicNotification(UUID.fromString("12345678-1234-1234-1234-123456789cccc"))
//        assert changed;
//
//        characteristic.setValue([3, 4, 5] as byte[]);
//
//        assert !events.hasMoreEvent()
//
//        assert sessionController.getSessionException() == null
    }
}