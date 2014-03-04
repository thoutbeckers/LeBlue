package houtbecke.rs.le.mock;

import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class LeRemoteDeviceMock implements LeRemoteDevice {

    LeMockListener mockListener;
    LeDeviceMock leDeviceMock;
    public LeRemoteDeviceMock(LeMockListener mockListener, LeDeviceMock leDeviceMock) {
        this.mockListener = mockListener;
        this.leDeviceMock = leDeviceMock;
    }

    Set<LeRemoteDeviceListener> listeners = new LinkedHashSet<>();

    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        listeners.add(listener);
    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        listeners.remove(listener);
    }

    public String address = "0000:0000:0000:0000";
    @Override
    public String getAddress() {
        return address;
    }

    @Override
    public void connect() {
        mockListener.connect(this);
    }

    @Override
    public void disconnect() {
        mockListener.disconnect(this);

    }

    @Override
    public void close() {
        mockListener.close(this);
    }

    @Override
    public void startServicesDiscovery() {
        mockListener.startServiceDiscovery(this);
    }

    final Map<UUID, LeCharacteristicListener> uuidCharacteristicListeners = new HashMap<>(0);

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {
        if (uuids == null || uuids.length == 0)
            uuidCharacteristicListeners.put(null, listener);
        else for (UUID uuid: uuids)
            uuidCharacteristicListeners.put(uuid, listener);
    }

    public String name = "remoteDevice";
    @Override
    public String getName() {
        return name;
    }

    public void connectLeDevice() {
        for (LeRemoteDeviceListener listener: listeners)
            listener.leDeviceConnected(leDeviceMock, this);
    }

    public void DeviceDisconnected() {
        for (LeRemoteDeviceListener listener: listeners)
            listener.leDeviceDisconnected(leDeviceMock, this);
    }

    public void closeDevice() {
        for (LeRemoteDeviceListener listener: listeners)
            listener.leDeviceClosed(leDeviceMock, this);
    }

    public void discoverService(LeGattService[] gatts, LeGattStatus status) {
        for (LeRemoteDeviceListener listener: listeners)
            listener.serviceDiscovered(leDeviceMock, this, gatts, status);
    }

    public void changeCharacteristic(UUID uuid, LeGattCharacteristic characteristic) {
        if (uuidCharacteristicListeners.get(null) != null)
            uuidCharacteristicListeners.get(null).leCharacteristicChanged(uuid, this, characteristic);

        if (uuidCharacteristicListeners.get(uuid) != null)
            uuidCharacteristicListeners.get(uuid).leCharacteristicChanged(uuid, this, characteristic);
    }
}
