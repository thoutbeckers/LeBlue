package houtbecke.rs.le.session;

import houtbecke.rs.le.LeUtil;

import static houtbecke.rs.le.session.LeEventType.*;

public class DeviceMockerObject extends MockerObject {

    public DeviceMockerObject(SessionObject sessionObject, int sessionSource) {
        super(sessionObject, sessionSource);
    }

    public DeviceMockerObject withFakeDeviceListeners() {
        mockDeviceListeners = true;
        return this;
    }

    public DeviceMockerObject hasRemoteDevices(int... remoteDevices) {
        return hasRemoteDevices(123, new byte[] {}, remoteDevices);
    }

    public DeviceMockerObject hasRemoteDevice(byte[] scanRecord, int remoteDevice) {
        return hasRemoteDevices(123, scanRecord, remoteDevice);
    }

    public DeviceMockerObject hasRemoteDevices(int rssi, byte[] scanRecord, int... remoteDevices) {

        Event[] events = new Event[remoteDevices.length];
        for (int k = 0; k < remoteDevices.length; k++)
            events[k] = new Event(mockRemoteDeviceFound, EventSinkFiller.DEFAULT_DEVICE_ID, remoteDevices[k]+"", rssi+"", LeUtil.bytesToString(scanRecord));

        MockedResponseObject mro  = getFirstMockObject(deviceStartScanning);
        if (mro == null)
            withMock(deviceStartScanning, new MockedResponseObject(events));
        else {
            mro.addEvents(events);
        }
        return this;
    }

}
