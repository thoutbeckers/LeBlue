package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public interface LeRemoteDevice {

    void addListener(@Nonnull LeRemoteDeviceListener listener);

    void removeListener(@Nonnull LeRemoteDeviceListener listener);

    @Nonnull
    String getAddress();

    void connect();

    void disconnect();

    void close();

    void startServicesDiscovery();

    void startServicesDiscovery(@Nonnull UUID... uuids);

    void setCharacteristicWriteListener(@Nullable LeCharacteristicWriteListener listener, @Nullable UUID... uuids);

    void setCharacteristicListener(@Nullable LeCharacteristicListener listener, @Nullable UUID... uuids);

    @Nullable
    String getName();

    void readRssi();

    void refreshDeviceCache();

    void unpair();
    }
