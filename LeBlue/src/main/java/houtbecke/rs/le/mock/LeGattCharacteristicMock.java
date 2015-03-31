package houtbecke.rs.le.mock;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

public class LeGattCharacteristicMock implements LeGattCharacteristic {

    LeMockController mockController;

    public LeGattCharacteristicMock(LeMockController mockController) {
        this.mockController = mockController;
    }

    @Override
    public byte[] getValue() {
        return mockController.characteristicGetValue(this);
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        return mockController.characteristicGetIntValue(this, format, index);
    }

    @Override
    public void setValue(byte[] value) {
        mockController.characteristicSetValue(this, value);
    }

    @Override
    public void read() {
        mockController.characteristicRead(this);
    }
}
