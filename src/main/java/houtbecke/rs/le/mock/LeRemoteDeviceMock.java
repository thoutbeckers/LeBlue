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

    final Map<UUID, LeCharacteristicListener> uuidCharacteristicListeners = new HashMap<>(0);

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {
        if (uuids == null || uuids.length == 0)
            uuidCharacteristicListeners.put(null, listener);
        else for (UUID uuid: uuids)
            uuidCharacteristicListeners.put(uuid, listener);
    }

    @Override
    public String getName() {
        return mockController.remoteDeviceGetName(this);
    }

    public void changeCharacteristic(UUID uuid, LeGattCharacteristic characteristic) {
        if (uuidCharacteristicListeners.get(null) != null)
            uuidCharacteristicListeners.get(null).leCharacteristicChanged(uuid, this, characteristic);

        if (uuidCharacteristicListeners.get(uuid) != null)
            uuidCharacteristicListeners.get(uuid).leCharacteristicChanged(uuid, this, characteristic);
    }
}
