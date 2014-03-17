package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

public class LeGattServiceMock implements LeGattService {

    LeMockController mockController;
    public LeGattServiceMock(LeMockController mockController) {
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
    public boolean enableCharacteristicNotification(UUID characteristic) {
        return mockController.serviceEnableCharacteristicNotification(this, characteristic);
    }
}
