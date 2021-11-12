package houtbecke.rs.le;

import javax.annotation.Nonnull;

public interface LeDeviceListener {

    void leDeviceFound(@Nonnull LeDevice leDevice, @Nonnull LeRemoteDevice leRemoteDevice, int rssi, @Nonnull LeScanRecord scanRecord);

    void leDeviceState(@Nonnull LeDevice leDevice, @Nonnull LeDeviceState leDeviceState);

}
