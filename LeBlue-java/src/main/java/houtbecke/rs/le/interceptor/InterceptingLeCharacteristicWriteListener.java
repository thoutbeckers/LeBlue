package houtbecke.rs.le.interceptor;

import java.util.UUID;

import javax.annotation.Nonnull;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeCharacteristicWriteListener extends LeIntercepting implements LeCharacteristicWriteListener {

    public final LeCharacteristicWriteListener leCharacteristicWriteListener;

    public InterceptingLeCharacteristicWriteListener(LeCharacteristicWriteListener leCharacteristicWriteListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leCharacteristicWriteListener = leCharacteristicWriteListener;
    }

    @Override
    public void leCharacteristicWritten(@Nonnull UUID uuid, @Nonnull UUID serviceUuid, @Nonnull LeRemoteDevice remoteDevice, @Nonnull LeGattCharacteristic characteristic,
                                        boolean success) {
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(remoteDevice);
        InterceptingLeGattCharacteristic iLeGattCharacteristic = leInterceptor.getInterceptingLeGattCharacteristic(characteristic);

        if (leCharacteristicWriteListener != null) {
            leCharacteristicWriteListener.leCharacteristicWritten(uuid, serviceUuid, iLeRemoteDevice, iLeGattCharacteristic, success);
        }

        leInterceptor.characteristicWritten(this, uuid, iLeRemoteDevice, iLeGattCharacteristic, success);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeCharacteristicWriteListener)
            o = ((InterceptingLeCharacteristicWriteListener) o).leCharacteristicWriteListener;

        return o instanceof LeCharacteristicListener && o.equals(leCharacteristicWriteListener);
    }

    @Override
    public int hashCode() {
        return leCharacteristicWriteListener.hashCode();
    }


}