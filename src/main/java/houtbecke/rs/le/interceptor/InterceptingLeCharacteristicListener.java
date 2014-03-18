package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeCharacteristicListener extends BaseIntercepting implements LeCharacteristicListener {

    public final LeCharacteristicListener leCharacteristicListener;

    public InterceptingLeCharacteristicListener(LeCharacteristicListener leCharacteristicListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leCharacteristicListener = leCharacteristicListener;
    }

    @Override
    public void leCharacteristicChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {
        leCharacteristicListener.leCharacteristicChanged(uuid, remoteDevice, characteristic);
        leInterceptor.characteristicChanged(this, uuid, leInterceptor.getInterceptingLeRemoteDevice(remoteDevice), leInterceptor.getInterceptingLeGattCharacteristic(characteristic));

    }
}
