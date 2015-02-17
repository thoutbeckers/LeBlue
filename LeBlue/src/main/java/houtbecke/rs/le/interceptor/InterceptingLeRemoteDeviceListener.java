package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class InterceptingLeRemoteDeviceListener extends BaseIntercepting implements LeRemoteDeviceListener {

    final LeRemoteDeviceListener leRemoteDeviceListener;
    public InterceptingLeRemoteDeviceListener(LeRemoteDeviceListener leRemoteDeviceListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leRemoteDeviceListener = leRemoteDeviceListener;
    }

    @Override
    public void leDevicesConnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);
        leInterceptor.connected(this, iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDevicesConnected(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);
        leInterceptor.disconnected(this, iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDevicesDisconnected(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);
        leInterceptor.closed(this,iLeDevice, iLeRemoteDevice);
        leRemoteDeviceListener.leDevicesClosed(iLeDevice, iLeRemoteDevice);
    }

    @Override
    public void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);

        InterceptingLeGattService[] iLeGattServices = new InterceptingLeGattService[gatts.length];
        for (int k=0; k < gatts.length; k++)
            iLeGattServices[k] = leInterceptor.getInterceptingLeGattService(gatts[k]);

        leInterceptor.servicesDiscovered(this, iLeDevice, iLeRemoteDevice, status, iLeGattServices);
        leRemoteDeviceListener.serviceDiscovered(iLeDevice, iLeRemoteDevice, status, iLeGattServices);

    }

    @Override
    public void rssiRead(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);

        leInterceptor.rssiRead(this, iLeDevice, iLeRemoteDevice, rssi);
        leRemoteDeviceListener.rssiRead(iLeDevice, iLeRemoteDevice, rssi);

    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeRemoteDeviceListener)
            o = ((InterceptingLeRemoteDeviceListener) o).leRemoteDeviceListener;

        return o instanceof LeRemoteDeviceListener && leRemoteDeviceListener.equals(o);
    }

    @Override
    public int hashCode() {
        return leRemoteDeviceListener.hashCode();
    }
}
