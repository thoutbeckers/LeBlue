package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeDeviceListener implements LeDeviceListener {
    public final int id;

    LeDeviceListener leDeviceListener;
    LeInterceptor leInterceptor;
    public InterceptingLeDeviceListener(LeDeviceListener leDeviceListener, LeInterceptor leInterceptor) {
        this.leInterceptor = leInterceptor;
        this.leDeviceListener = leDeviceListener;
        id = ++leInterceptor.counter;
    }

    @Override
    public void leDeviceFound(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi, byte[] scanRecord) {
        InterceptingLeDevice iLeDevice = leInterceptor.getLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getLeRemoteDevice(leRemoteDevice);
        leInterceptor.deviceFound(iLeDevice, iLeRemoteDevice , rssi, scanRecord);
        leDeviceListener.leDeviceFound(iLeDevice, iLeRemoteDevice, rssi, scanRecord);
    }
}
