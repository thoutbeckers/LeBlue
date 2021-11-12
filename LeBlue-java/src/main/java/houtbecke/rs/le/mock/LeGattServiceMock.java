package houtbecke.rs.le.mock;

import java.util.UUID;

import javax.annotation.Nonnull;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.interceptor.InterceptingLeGattService;

public class LeGattServiceMock implements LeGattService {

    LeMockController mockController;
    Integer key;

    public LeGattServiceMock(Integer key, LeMockController mockController) {
        this.key = key;
        this.mockController = mockController;
    }

    @Nonnull
    @Override
    public UUID getUuid() {
        return mockController.serviceGetUuid(this);
    }

    @Nonnull
    @Override
    public LeGattCharacteristic getCharacteristic(@Nonnull UUID uuid) {
        return mockController.serviceGetCharacteristic(this, uuid);
    }

    @Override
    public boolean enableCharacteristicNotification(@Nonnull UUID characteristic) {
        return mockController.serviceEnableCharacteristicNotification(this, characteristic);
    }

    @Override
    public boolean equals(Object o) {
        while (o instanceof InterceptingLeGattService)
            o = ((InterceptingLeGattService)o).leGattService;
        if (o instanceof LeGattServiceMock)
            return ((LeGattServiceMock)o).key.equals(key);
        return o == this;
    }

    @Override
    public int hashCode() {
        return key.hashCode();
    }
}
