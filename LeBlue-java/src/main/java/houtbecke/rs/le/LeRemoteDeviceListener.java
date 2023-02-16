package houtbecke.rs.le;

import javax.annotation.Nonnull;

public interface LeRemoteDeviceListener {

    void leDevicesConnected(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice);

    void leDevicesDisconnected(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice);

    void leDevicesClosed(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice);

    void serviceDiscovered(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, @Nonnull LeGattStatus status,
                           @Nonnull LeGattService[] gatts);

    void rssiRead(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, int rssi);

}
