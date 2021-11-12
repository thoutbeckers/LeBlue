package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;

public interface LeCharacteristicWriteListener {

    void leCharacteristicWritten(@Nonnull UUID uuid, @Nonnull LeRemoteDevice remoteDevice, @Nonnull LeGattCharacteristic characteristic,
                                 boolean success);
}
