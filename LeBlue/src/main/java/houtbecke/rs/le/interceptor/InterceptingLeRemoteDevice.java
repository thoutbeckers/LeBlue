package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class InterceptingLeRemoteDevice extends BaseIntercepting implements LeRemoteDevice {

    LeRemoteDevice leRemoteDevice;

    public InterceptingLeRemoteDevice(LeRemoteDevice leRemoteDevice, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leRemoteDevice = leRemoteDevice;
    }
    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        synchronized(leInterceptor) {
            InterceptingLeRemoteDeviceListener iListener = new InterceptingLeRemoteDeviceListener(listener, leInterceptor);
            leInterceptor.remoteListenerAdded(this, iListener);
            leRemoteDevice.addListener(iListener);
        }
    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        synchronized(leInterceptor) {
            InterceptingLeRemoteDeviceListener iListener = new InterceptingLeRemoteDeviceListener(listener, leInterceptor);
            leInterceptor.remoteListenerRemoved(this, iListener);
            leRemoteDevice.removeListener(iListener);
        }
    }

    @Override
    public String getAddress() {
        synchronized(leInterceptor) {
            String address = leRemoteDevice.getAddress();
            leInterceptor.gotAddress(this, address);
            return address;
        }
    }

    @Override
    public void connect() {
        synchronized(leInterceptor) {
            leInterceptor.connecting(this);
            leRemoteDevice.connect();
        }
    }

    @Override
    public void disconnect() {
        synchronized(leInterceptor) {
            leInterceptor.disconnecting(this);
            leRemoteDevice.disconnect();
        }
    }

    @Override
    public void close() {
        synchronized(leInterceptor) {
            leInterceptor.closing(this);
            leRemoteDevice.close();
        }
    }

    @Override
    public void startServicesDiscovery() {
        synchronized(leInterceptor) {
            leInterceptor.serviceDiscoveryStarted(this);
            leRemoteDevice.startServicesDiscovery();
        }
    }

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {
        synchronized(leInterceptor) {
            InterceptingLeCharacteristicListener iCharacteristicsListener = leInterceptor.getInterceptingCharacteristicsListener(listener);
            leInterceptor.characteristicListenerSet(this, iCharacteristicsListener, uuids);
            leRemoteDevice.setCharacteristicListener(iCharacteristicsListener, uuids);
        }
    }

    @Override
    public String getName() {
        synchronized(leInterceptor) {
            String name = leRemoteDevice.getName();
            leInterceptor.gotRemoteDeviceName(this, name);
            return name;
        }
    }

    @Override
    public boolean equals(Object o) {
        return leRemoteDevice.equals(o);
    }

    @Override
    public int hashCode() {
        return leRemoteDevice.hashCode();
    }
}
