package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeScanRecord;

public class InterceptingLeDeviceListener extends LeIntercepting implements LeDeviceListener {

    final LeDeviceListener leDeviceListener;
    public InterceptingLeDeviceListener(LeDeviceListener leDeviceListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leDeviceListener = leDeviceListener;
    }

    @Override
    public void leDeviceFound(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi, LeScanRecord scanRecord) {
            InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
            InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);
            leInterceptor.deviceFound(this, iLeDevice, iLeRemoteDevice, rssi, scanRecord);
            leDeviceListener.leDeviceFound(iLeDevice, iLeRemoteDevice, rssi, scanRecord);

    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeDeviceListener)
            o = ((InterceptingLeDeviceListener) o).leDeviceListener;

        return o instanceof LeDeviceListener && leDeviceListener.equals(o);
    }

    @Override
    public int hashCode() {
        return leDeviceListener.hashCode();
    }


    @Override
    public void leDeviceState(LeDevice leDevice, LeDeviceState leDeviceState) {

        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        leInterceptor.deviceState(this, iLeDevice, leDeviceState);
        leDeviceListener.leDeviceState(iLeDevice,leDeviceState);


    }
}
