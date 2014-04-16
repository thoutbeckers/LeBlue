package houtbecke.rs.le;

import java.util.UUID;

public interface LeCharacteristicListener {

    void leCharacteristicChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic);
}
