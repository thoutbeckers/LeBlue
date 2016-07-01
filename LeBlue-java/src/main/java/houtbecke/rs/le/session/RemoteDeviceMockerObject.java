package houtbecke.rs.le.session;

import java.util.ArrayList;
import java.util.List;

import houtbecke.rs.le.LeGattStatus;

import static houtbecke.rs.le.session.LeEventType.remoteDeviceClose;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceConnect;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceDisconnect;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceGetAddress;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceGetName;
import static houtbecke.rs.le.session.LeEventType.mockRemoteDeviceConnected;
import static houtbecke.rs.le.session.LeEventType.mockRemoteDeviceClosed;
import static houtbecke.rs.le.session.LeEventType.mockRemoteDeviceDisconnected;

import static houtbecke.rs.le.session.LeEventType.mockRemoteDeviceServicesDiscovered;
import static houtbecke.rs.le.session.LeEventType.remoteDeviceStartServiceDiscovery;

public class RemoteDeviceMockerObject extends MockerObject {
    public RemoteDeviceMockerObject(SessionObject sessionObject, int sessionSource) {
        super(sessionObject, sessionSource);
    }

    int mockedDeviceSource;

    public RemoteDeviceMockerObject mocksRemoteDevice(String address, String name) {
        return mocksRemoteDevice(address, name, true);
    }

    public RemoteDeviceMockerObject mocksRemoteDevice(String address, String name, boolean connects) {
        return mocksRemoteDevice(EventSinkFiller.DEFAULT_DEVICE_ID, address, name, connects);
    }

    // can only be called once per mocker, you can after all use different mocker object for different devices.
    public RemoteDeviceMockerObject mocksRemoteDevice(int deviceId, String address, String name, boolean connects) {
        this.mockedDeviceSource = deviceId;
        withMock(remoteDeviceGetAddress, address);
        withMock(remoteDeviceGetName, name);
        if (connects) {
            withMock(remoteDeviceConnect, new MockedResponseObject(new Event(mockRemoteDeviceConnected, getDelay(), sessionSource, deviceId + "")));
            withMock(remoteDeviceDisconnect, new MockedResponseObject(new Event(mockRemoteDeviceDisconnected, getDelay(), sessionSource, deviceId + "")));
            withMock(remoteDeviceClose, new MockedResponseObject(new Event(mockRemoteDeviceClosed, getDelay(), sessionSource, deviceId + "")));

        }
        return this;
    }
    public RemoteDeviceMockerObject hasServices(int... services) {
        return hasServices(LeGattStatus.SUCCESS, services);
    }
    public RemoteDeviceMockerObject
    hasServices(LeGattStatus status, int... services) {

        List<String> params = new ArrayList<>();
        params.add(mockedDeviceSource +"");
        params.add(status.toString());
        for (int service: services) {
            params.add(service+"");
        }

        withMock(remoteDeviceStartServiceDiscovery, new MockedResponseObject(new Event(mockRemoteDeviceServicesDiscovered, getDelay(), sessionSource, params.toArray(new String[params.size()]))));
        return this;
    }

    public RemoteDeviceMockerObject withFakeCharacteristicsListeners() {
        mockCharacteristicsListeners = true;
        return this;
    }

    public RemoteDeviceMockerObject withFakeRemoteDeviceListeners() {
        mockRemoteDeviceListeners = true;
        return this;
    }



}
