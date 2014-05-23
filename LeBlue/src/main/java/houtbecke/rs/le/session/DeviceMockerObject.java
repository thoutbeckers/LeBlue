package houtbecke.rs.le.session;

public class DeviceMockerObject extends MockerObject {

    public DeviceMockerObject(SessionObject sessionObject, int sessionSource) {
        super(sessionObject, sessionSource);
    }

    public DeviceMockerObject withFakeDeviceListeners() {
        mockDeviceListeners = true;
        return this;
    }


}
