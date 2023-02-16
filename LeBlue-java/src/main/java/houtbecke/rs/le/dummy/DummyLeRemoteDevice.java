package houtbecke.rs.le.dummy;

import java.util.UUID;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class DummyLeRemoteDevice implements LeRemoteDevice {
    @Override
    public void addListener(LeRemoteDeviceListener listener) {

    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {

    }

    @Override
    public String getAddress() {
        return null;
    }

    @Override
    public void connect() {

    }

    @Override
    public void disconnect() {

    }

    @Override
    public void close() {

    }

    @Override
    public void startServicesDiscovery() {

    }

    @Override
    public void startServicesDiscovery(@Nonnull UUID... uuids) {

    }

    @Override
    public void setCharacteristicWriteListener(LeCharacteristicWriteListener listener, @Nullable UUID... uuids) {

    }

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {

    }

    @Override
    public String getName() {
        return null;
    }

    @Override
    public void readRssi() {

    }

    @Override
    public void refreshDeviceCache() {

    }

    @Override
    public void unpair() {

    }
}
