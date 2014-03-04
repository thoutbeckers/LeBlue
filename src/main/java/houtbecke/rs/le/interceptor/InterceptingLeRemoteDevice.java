package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;

public class InterceptingLeRemoteDevice implements LeRemoteDevice {

    LeRemoteDevice leRemoteDevice;
    LeInterceptor leInterceptor;

    public InterceptingLeRemoteDevice(LeRemoteDevice leRemoteDevice, LeInterceptor leInterceptor) {
        this.leRemoteDevice = leRemoteDevice;
        this.leInterceptor = leInterceptor;
    }



    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        InterceptingLeRemoteDeviceListener iListener = new InterceptingLeRemoteDeviceListener(listener, leInterceptor);
        leInterceptor.remoteDeviceListenerAdded(this, iListener);
        leRemoteDevice.addListener(iListener);
    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        InterceptingLeRemoteDeviceListener iListener = new InterceptingLeRemoteDeviceListener(listener, leInterceptor);
        leInterceptor.remoteDeviceListenerRemoved(this, iListener);
        leRemoteDevice.removeListener(iListener);
    }

    @Override
    public String getAddress() {
        String address = leRemoteDevice.getAddress();
        leInterceptor.gotRemoteDeviceAddress(this, address);
        return address;
    }

    @Override
    public void connect() {
        leInterceptor.remoteDeviceConnected(this);
        leRemoteDevice.connect();
    }

    @Override
    public void disconnect() {
        leInterceptor.remoteDeviceDisconnected(this);
        leRemoteDevice.disconnect();
    }

    @Override
    public void close() {
        leInterceptor.remoteDeviceClosed(this);
        leRemoteDevice.close();
    }

    @Override
    public void startServicesDiscovery() {
        leInterceptor.remoteDeviceServiceDiscoveryStarted(this);
        leRemoteDevice.startServicesDiscovery();
    }

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {
        InterceptingLeCharacteristicListener iCharacteristicsListener = leInterceptor.getInterceptingCharacteristicsListener(listener);
        leInterceptor.remoteDeviceCharacteristicListenerSet(this, iCharacteristicsListener, uuids);
        leRemoteDevice.setCharacteristicListener(iCharacteristicsListener, uuids);
    }

    @Override
    public String getName() {
        String name = leRemoteDevice.getName();
        leInterceptor.gotRemoteDeviceName(this, name);
        return name;
    }
}
