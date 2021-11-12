package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;

public interface LeGattService {

    @Nonnull
    UUID getUuid();

    @Nonnull
    LeGattCharacteristic getCharacteristic(@Nonnull UUID uuid);

    boolean enableCharacteristicNotification(@Nonnull UUID characteristic);

    //void disableCharacteristicNotification(LeGattCharacteristic characteristic);

    //void notify(UUID service);
}