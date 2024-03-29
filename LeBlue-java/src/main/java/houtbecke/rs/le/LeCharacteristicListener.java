package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;

public interface LeCharacteristicListener {

    void leCharacteristicChanged(@Nonnull UUID characteristicUUID, @Nonnull UUID serviceUUID, @Nonnull LeRemoteDevice remoteDevice, @Nonnull LeGattCharacteristic characteristic);

    void leCharacteristicNotificationChanged(@Nonnull UUID characteristicUUID, @Nonnull UUID serviceUUID, @Nonnull LeRemoteDevice remoteDevice, @Nonnull LeGattCharacteristic characteristic,
                                             boolean success);

}
