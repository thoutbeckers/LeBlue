package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class LeRemoteDeviceMock implements LeRemoteDevice {

    LeMockController mockController;
    LeDeviceMock leDeviceMock;
    public LeRemoteDeviceMock(LeMockController mockController, LeDeviceMock leDeviceMock) {
        this.mockController = mockController;
        this.leDeviceMock = leDeviceMock;
    }


    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        mockController.remoteDeviceAddListener(this, listener);
    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        mockController.remoteDeviceRemoveListener(this, listener);
    }

    @Override
    public String getAddress() {
        return mockController.remoteDeviceGetAddress(this);
    }

    @Override
    public void connect() {
        mockController.remoteDeviceConnect(this);
    }

    @Override
    public void disconnect() {
        mockController.remoteDeviceDisconnect(this);
    }

    @Override
    public void close() {
        mockController.remoteDeviceClose(this);
    }

    @Override
    public void startServicesDiscovery() {
        mockController.remoteDeviceStartServiceDiscovery(this);
    }

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {
        mockController.remoteDeviceSetCharacteristicListener(this, listener, uuids);
    }

    @Override
    public String getName() {
        return mockController.remoteDeviceGetName(this);
    }

    @Override
    public boolean equals(Object o) {
        if (o != null && o instanceof LeRemoteDevice)
            return true;
        return false;
    }

    @Override
    public int hashCode() {
        // bad for performance but workaround for not calling back
        return 0; //getAddress().hashCode();
    }
}
