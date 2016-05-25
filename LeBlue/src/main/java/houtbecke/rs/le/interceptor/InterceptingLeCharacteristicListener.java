package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeCharacteristicListener extends LeIntercepting implements LeCharacteristicListener {

    public final LeCharacteristicListener leCharacteristicListener;

    public InterceptingLeCharacteristicListener(LeCharacteristicListener leCharacteristicListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leCharacteristicListener = leCharacteristicListener;
    }

    @Override
    public void leCharacteristicChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {
            InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(remoteDevice);
            InterceptingLeGattCharacteristic iLeGattCharacteristic  = leInterceptor.getInterceptingLeGattCharacteristic(characteristic);
            if (leCharacteristicListener != null)
                leCharacteristicListener.leCharacteristicChanged(uuid,iLeRemoteDevice,iLeGattCharacteristic );
            leInterceptor.characteristicChanged(this, uuid, iLeRemoteDevice,iLeGattCharacteristic );

    }

    @Override
    public void leCharacteristicNotificationChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic, boolean success) {
            InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(remoteDevice);
            InterceptingLeGattCharacteristic iLeGattCharacteristic  = leInterceptor.getInterceptingLeGattCharacteristic(characteristic);
            if (leCharacteristicListener != null)
                leCharacteristicListener.leCharacteristicNotificationChanged(uuid,iLeRemoteDevice,iLeGattCharacteristic,success );
            leInterceptor.characteristicNotificationChanged(this, uuid, iLeRemoteDevice, iLeGattCharacteristic, success );
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeCharacteristicListener)
            o = ((InterceptingLeCharacteristicListener) o).leCharacteristicListener;

        return o instanceof LeCharacteristicListener && o.equals(leCharacteristicListener);
    }

    @Override
    public int hashCode() {
        return leCharacteristicListener.hashCode();
    }
}