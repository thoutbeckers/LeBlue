package houtbecke.rs.le.mock;

import javax.annotation.Nonnull;

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
    public int getIntValue(@Nonnull LeFormat format, int index) {
        return mockController.characteristicGetIntValue(this, format, index);
    }

    @Override
    public void setValue(@Nonnull byte[] value) {
        mockController.characteristicSetValue(this, value);
    }

    @Override
    public void setValue(@Nonnull byte[] value, boolean withResponse) {
        mockController.characteristicSetValue(this, value, withResponse);
    }

    @Override
    public void read() {
        mockController.characteristicRead(this);
    }
}
