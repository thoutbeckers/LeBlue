package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.interceptor.InterceptingLeRemoteDevice;

public class LeRemoteDeviceMock implements LeRemoteDevice {

    LeMockController mockController;
    LeDeviceMock leDeviceMock;
    final Integer key;

    public LeRemoteDeviceMock(int key, LeMockController mockController, LeDeviceMock leDeviceMock) {
        this.key = key;
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
        // if the device we are comparing with is wrapped by an intercepting device use the root device to compare
        while (o instanceof InterceptingLeRemoteDevice)
            o = ((InterceptingLeRemoteDevice)o).leRemoteDevice;
        if (o instanceof LeRemoteDeviceMock)
            return ((LeRemoteDeviceMock) o).key.equals(key);
        return o == this;
    }

    @Override
    public int hashCode() {
        return key.hashCode();
    }

    @Override
    public boolean enableCharacteristicNotification(UUID characteristic,UUID service) {
        return mockController.remoteDeviceEnableCharacteristicNotification(this, characteristic,service);
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID characteristic,UUID service){
        return mockController.remoteDeviceGetCharacteristic(this, characteristic,service);
    }


}
