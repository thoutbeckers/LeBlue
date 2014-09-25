package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.interceptor.InterceptingLeGattService;
import houtbecke.rs.le.interceptor.InterceptingLeRemoteDevice;

public class LeGattServiceMock implements LeGattService {

    LeMockController mockController;
    Integer key;

    public LeGattServiceMock(Integer key, LeMockController mockController) {
        this.key = key;
        this.mockController = mockController;
    }

    @Override
    public UUID getUuid() {
        return mockController.serviceGetUuid(this);
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        return mockController.serviceGetCharacteristic(this, uuid);
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
