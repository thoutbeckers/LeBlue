package houtbecke.rs.le;

import java.util.UUID;

public interface LeGattService {

    UUID getUuid();

    LeGattCharacteristic getCharacteristic(UUID uuid);


    //void disableCharacteristicNotification(LeGattCharacteristic characteristic);


    //void notify(UUID service);
}