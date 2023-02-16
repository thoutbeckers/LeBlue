package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;

public interface LeCharacteristicWriteListener {

    void leCharacteristicWritten(@Nonnull UUID characteristicUUID, @Nonnull UUID serviceUUID, @Nonnull LeRemoteDevice remoteDevice, @Nonnull LeGattCharacteristic characteristic,
                                 boolean success);
}
