package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;

public class InterceptingLeDevice implements LeDevice {

    public final int id;

    LeDevice leDevice;
    LeInterceptor leInterceptor;
    public InterceptingLeDevice(LeDevice leDevice, LeInterceptor leInterceptor) {
        leDevice = leDevice;
        this.leInterceptor = leInterceptor;
        id = ++leInterceptor.counter;
    }


    @Override
    public void addListener(LeDeviceListener listener) {
        InterceptingLeDeviceListener iListener = leInterceptor.getLeDeviceListener(listener);
        leDevice.addListener(iListener);
        leInterceptor.deviceListenerAdded(this, iListener);
    }

    @Override
    public void removeListener(LeDeviceListener listener) {
        leDevice.removeListener(leInterceptor.getLeDeviceListener(listener));
        leInterceptor.deviceListenerRemoved(this);

    }

    @Override
    public boolean checkBleHardwareAvailable() {
        boolean bleHardwareEnabled = leDevice.checkBleHardwareAvailable();
        leInterceptor.checkedBleHardwareAvailable(this, bleHardwareEnabled);
        return bleHardwareEnabled;
    }

    @Override
    public boolean isBtEnabled() {
        boolean btEnabled = leDevice.isBtEnabled();
        leInterceptor.wasBtEnabled(this, btEnabled);
        return btEnabled;
    }

    @Override
    public void startScanning() {
        leInterceptor.startedScanning(this);
        leDevice.startScanning();
    }

    @Override
    public void startScanning(UUID... uuids) {
        leInterceptor.startedScanning(this, uuids);
        leDevice.startScanning(uuids);

    }

    @Override
    public void stopScanning() {
        leInterceptor.stoppedScanning(this);
        leDevice.stopScanning();
    }
}
