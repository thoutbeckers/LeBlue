package houtbecke.rs.le;

import java.util.UUID;

public interface LeCharacteristicWriteListener {

    void leCharacteristicWritten(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic,boolean succes);
}
