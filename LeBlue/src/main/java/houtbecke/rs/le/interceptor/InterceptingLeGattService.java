package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

public class InterceptingLeGattService extends LeIntercepting implements LeGattService {

    public final LeGattService leGattService;

    public InterceptingLeGattService(LeGattService leGattService, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leGattService = leGattService;
    }

    @Override
    public UUID getUuid() {
        synchronized(leInterceptor) {
            UUID uuid = leGattService.getUuid();
            leInterceptor.gotUUID(this, uuid);
            return uuid;
        }
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        synchronized(leInterceptor) {
            LeGattCharacteristic leGattCharacteristic = leGattService.getCharacteristic(uuid);
            if (leGattCharacteristic == null) return null;
            InterceptingLeGattCharacteristic iLeGattCharacteristic = leInterceptor.serviceGotCharacteristic(this, leGattCharacteristic);
            leInterceptor.gotCharacteristic(this, iLeGattCharacteristic);
            return iLeGattCharacteristic;
        }
    }

    @Override
    public boolean enableCharacteristicNotification(UUID characteristic) {
        synchronized(leInterceptor) {
            boolean enabled = leGattService.enableCharacteristicNotification(characteristic);
            leInterceptor.enabledCharacteristicNotification(this, characteristic, enabled);
            return enabled;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (o == null) return false;
        if (o == this) return true;

        while (o instanceof InterceptingLeGattService)
            o = ((InterceptingLeGattService)o).leGattService;

        return (o instanceof LeGattService) && o.equals(leGattService);
    }

    @Override
    public int hashCode() {
        return leGattService.hashCode();
    }
}
