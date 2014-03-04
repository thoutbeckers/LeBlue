package houtbecke.rs.le.mock;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

public class LeGattServiceMock implements LeGattService {
    public UUID uuid;

    LeMockListener mockListener;
    public LeGattServiceMock(LeMockListener mockListener) {
        this.mockListener = mockListener;
    }

    @Override
    public UUID getUuid() {
        return uuid;
    }


    public Map<UUID, LeGattCharacteristic> characteristicMap = new HashMap<>();
    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        return characteristicMap.get(uuid);
    }

    @Override
    public boolean enableCharacteristicNotification(UUID characteristic) {
        return mockListener.enableCharacteristicNotification(this, characteristic);
    }
}
