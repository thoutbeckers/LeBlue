package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

public class InterceptingLeGattService extends BaseIntercepting implements LeGattService {

    LeGattService leGattService;

    public InterceptingLeGattService(LeGattService leGattService, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leGattService = leGattService;
    }

    @Override
    public UUID getUuid() {
        UUID uuid = leGattService.getUuid();
        leInterceptor.gotUUID(this, uuid);
        return uuid;
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        LeGattCharacteristic leGattCharacteristic = leGattService.getCharacteristic(uuid);
        InterceptingLeGattCharacteristic iLeGattCharacteristic = leInterceptor.serviceGotCharacteristic(this, leGattCharacteristic);
        return iLeGattCharacteristic;
    }

    @Override
    public boolean enableCharacteristicNotification(UUID characteristic) {
        boolean enabled = leGattService.enableCharacteristicNotification(characteristic);
        leInterceptor.enabledCharacteristicNotification(this, characteristic, enabled);
        return enabled;
    }
}
