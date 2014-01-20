package houtbecke.rs.le;

import android.bluetooth.BluetoothGattCharacteristic;

import java.util.UUID;

public interface LeGattService {

    UUID getUuid();

    LeGattCharacteristic getCharacteristic(UUID uuid);

    boolean enableCharacteristicNotification(UUID characteristic);

    //void disableCharacteristicNotification(LeGattCharacteristic characteristic);


    //void notify(UUID service);
}

