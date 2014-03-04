package houtbecke.rs.le.mock;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

public class LeGattCharacteristicMock implements LeGattCharacteristic {

    public byte[] value;

    @Override
    public byte[] getValue() {
        return value;
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        throw new RuntimeException("getIntValue() not supported yet");
    }
}
