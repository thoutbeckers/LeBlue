package houtbecke.rs.le.interceptor;

import java.util.List;
import java.util.UUID;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;

public class InterceptingLeDevice extends LeIntercepting implements LeDevice {

    final LeDevice leDevice;
    public InterceptingLeDevice(LeDevice leDevice, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leDevice = leDevice;
        leInterceptor.iDevices.put(leDevice, this);
    }


    @Override
    public synchronized void addListener(LeDeviceListener listener) {
        synchronized(leInterceptor) {
            InterceptingLeDeviceListener iListener = leInterceptor.getInterceptingLeDeviceListener(listener);
            leDevice.addListener(iListener);
            leInterceptor.listenerAdded(this, iListener);
        }
    }

    @Override
    public synchronized void removeListener(LeDeviceListener listener) {
        synchronized(leInterceptor) {
            leDevice.removeListener(leInterceptor.getInterceptingLeDeviceListener(listener));
            leInterceptor.listenerRemoved(this);
        }
    }

    @Override
    public synchronized boolean checkBleHardwareAvailable() {
        synchronized(leInterceptor) {
            boolean bleHardwareEnabled = leDevice.checkBleHardwareAvailable();
            leInterceptor.checkedBleHardwareAvailable(this, bleHardwareEnabled);
            return bleHardwareEnabled;
        }
    }

    @Override
    public synchronized boolean isBtEnabled() {
        synchronized(leInterceptor) {
            boolean btEnabled = leDevice.isBtEnabled();
            leInterceptor.wasBtEnabled(this, btEnabled);
            return btEnabled;
        }
    }

    @Override
    public synchronized void startScanning() {
        synchronized(leInterceptor) {
            leInterceptor.startedScanning(this);
            leDevice.startScanning();
        }
    }

    @Override
    public synchronized void startScanning(UUID... uuids) {
        synchronized(leInterceptor) {
            leInterceptor.startedScanning(this, uuids);
            leDevice.startScanning(uuids);
        }
    }

    @Override
    public void startScanning(List<List<UUID>> filters) {
        synchronized(leInterceptor) {
            leInterceptor.startedScanning(this, filters);
            leDevice.startScanning(filters);
        }
    }

    @Override
    public synchronized void stopScanning() {
        synchronized(leInterceptor) {
            leInterceptor.stoppedScanning(this);
            leDevice.stopScanning();
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeDevice) {
            o = ((InterceptingLeDevice) o).leDevice;
        }
        return o instanceof LeDevice && o.equals(leDevice);
    }

    @Override
    public int hashCode() {
        return leDevice.hashCode();
    }
}
