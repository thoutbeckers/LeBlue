package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public interface LeGattService {

    @Nonnull
    UUID getUuid();

    @Nullable
    LeGattCharacteristic getCharacteristic(@Nonnull UUID uuid);

    boolean enableCharacteristicNotification(@Nonnull UUID characteristic);

    //void disableCharacteristicNotification(LeGattCharacteristic characteristic);

    //void notify(UUID service);
}