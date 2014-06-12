package houtbecke.rs.le;

import java.util.UUID;

public interface LeGattCharacteristic {

    byte[] getValue();

    int getIntValue(LeFormat format, int index);

    void setValue(byte[] value);

}
