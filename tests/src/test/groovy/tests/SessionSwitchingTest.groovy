package tests

import houtbecke.rs.le.*
import houtbecke.rs.le.mock.LeDeviceMock
import houtbecke.rs.le.mock.LeSessionController
import houtbecke.rs.le.session.EventSinkFiller
import houtbecke.rs.le.session.ListEventSinkSource
import houtbecke.rs.le.session.SessionObject
import org.junit.Before
import org.junit.Test

import static houtbecke.rs.le.session.EventType.*

class SessionSwitchingTest {

    LeSessionController sessionController
    LeDevice device

    final int LE_REMOTE_DEVICE = 1
    final int LE_SERVICE = 1
    final int LE_CHARACTERISTIC = 1

    @Before
    void setUp() throws Exception {
        System.setProperty "doNotLog", "true"
    }

    def createSource1() {
        def source1 = new ListEventSinkSource();
        def filler1 = new EventSinkFiller(source1)

        filler1.addDeviceEvent(deviceStartScanning);

        filler1.addDeviceEvent(mockRemoteDeviceFound,
                LE_REMOTE_DEVICE,
                "123",
                "0,1,2")

        filler1.waitForPoint("ready")

        return source1;
    }

    def createSource2() {
        def source2 = new ListEventSinkSource();
        def filler2 = new EventSinkFiller(source2)

        filler2.addEvent(mockCharacteristicChanged, LE_REMOTE_DEVICE, LE_CHARACTERISTIC)

        filler2.waitForPoint("done")

        return source2;
    }


    LeRemoteDevice remoteDevice

    @Test
    void testController() {
        def events1 = createSource1();
        def events2 = createSource2();

        sessionController = new LeSessionController(

                SessionObject.newSession()
                        .setDefaultSource(events1)
                        .withNamedEventSource("values", events2)

                        .withDeviceMocker()
                        .withFakeDeviceListeners()

                        .and.withRemoteDeviceMocker(
                        LE_REMOTE_DEVICE)
                        .mocksRemoteDevice("0001:0002:0003:0004", "d1234", true)
                        .withFakeRemoteDeviceListeners()
                        .withFakeCharacteristicsListeners()
                        .hasServices(LeGattStatus.SUCCESS, LE_SERVICE)

                        .and.withGattServiceMocker(LE_SERVICE)
                        .mocksService(UUID.fromString("12345678-1234-1234-1234-123456789aaaa"))
                        .hasCharacteristic(LE_CHARACTERISTIC, UUID.fromString("12345678-1234-1234-1234-123456789bbbb"))

                        .and.withGattCharacteristicsMocker(
                        LE_CHARACTERISTIC)
                        .mocksCharacteristic()
                        .hasFixedValue(0, 1, 2)

                        .end()
        )

        device = new LeDeviceMock(EventSinkFiller.DEFAULT_DEVICE_ID, sessionController)
        sessionController.startDefaultSession()
        assert sessionController.waitTillSessionStarted()
        def foundRemoteDevice = false

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

        device.startScanning()
        Thread.sleep(100)
        assert foundRemoteDevice

        def service;

        remoteDevice.addListener(new LeRemoteDeviceListener() {

            @Override
            void leDevicesConnected(LeDevice leDeviceFoundOn, LeRemoteDevice leRemoteDevice) {
                assert remoteDevice == leRemoteDevice
            }

            @Override
            void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {

            }

            @Override
            void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
                assert leRemoteDevice == remoteDevice
                service = gatts[0]
            }
        })

        remoteDevice.connect();

        Thread.sleep(100);
        remoteDevice.startServicesDiscovery()
        Thread.sleep(100);

        def valueRead = false;

        remoteDevice.setCharacteristicListener(new LeCharacteristicListener() {
            @Override
            void leCharacteristicChanged(UUID uuid, LeRemoteDevice leRemoteDevice, LeGattCharacteristic leCharacteristic) {
                assert leCharacteristic.getValue() == [ 0, 1 , 2]
                valueRead = true;
            }
        }, UUID.fromString("12345678-1234-1234-1234-123456789cccc"))

        sessionController.pointReached "ready"

        assert !valueRead

        sessionController.startSession "values"
        Thread.sleep(100)

        assert valueRead

        sessionController.pointReached "done"

        sessionController.waitForFinishedSession()

        assert !events1.hasMoreEvent()
        assert !events2.hasMoreEvent()
        assert sessionController.getSessionException() == null
    }
}