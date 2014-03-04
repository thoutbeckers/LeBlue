package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeCharacteristicListener implements LeCharacteristicListener {

    public final LeCharacteristicListener leCharacteristicListener;
    final LeInterceptor leInterceptor;
    final public int id;

    public InterceptingLeCharacteristicListener(LeCharacteristicListener leCharacteristicListener, LeInterceptor leInterceptor) {
        this.leCharacteristicListener = leCharacteristicListener;
        this.leInterceptor = leInterceptor;
        id = ++leInterceptor.counter;
    }

    @Override
    public void leCharacteristicChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {
        leCharacteristicListener.leCharacteristicChanged(uuid, remoteDevice, characteristic);
        leInterceptor.characteristicChanged(this, uuid, remoteDevice, characteristic);

    }
}
