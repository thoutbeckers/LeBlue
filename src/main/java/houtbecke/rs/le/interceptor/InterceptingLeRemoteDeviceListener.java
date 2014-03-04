package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class InterceptingLeRemoteDeviceListener implements LeRemoteDeviceListener {
    public final int id;

    LeRemoteDeviceListener leRemoteDeviceListener;
    LeInterceptor leInterceptor;
    public InterceptingLeRemoteDeviceListener(LeRemoteDeviceListener leRemoteDeviceListener, LeInterceptor leInterceptor) {
        this.leInterceptor = leInterceptor;
        this.leRemoteDeviceListener = leRemoteDeviceListener;
        id = ++leInterceptor.counter;
    }

    @Override
    public void leDeviceConnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getLeRemoteDevice(leRemoteDevice);
        leInterceptor.remoteDeviceConnected(iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDeviceConnected(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void leDeviceDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getLeRemoteDevice(leRemoteDevice);
        leInterceptor.deviceDisconnected(iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDeviceDisconnected(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void leDeviceClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getLeRemoteDevice(leRemoteDevice);
        leInterceptor.deviceClosed(iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDeviceClosed(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattService[] gatts, LeGattStatus status) {
        InterceptingLeDevice iLeDevice = leInterceptor.getLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getLeRemoteDevice(leRemoteDevice);

        InterceptingLeGattService[] iLeGattServices = new InterceptingLeGattService[gatts.length];
        for (int k=0; k < gatts.length; k++)
            iLeGattServices[k] = leInterceptor.getInterceptingLeGattService(gatts[k]);

        leInterceptor.servicesDiscovered(iLeDevice, iLeRemoteDevice, iLeGattServices, status);
        leRemoteDeviceListener.serviceDiscovered(iLeDevice, iLeRemoteDevice, iLeGattServices, status);

    }
}
