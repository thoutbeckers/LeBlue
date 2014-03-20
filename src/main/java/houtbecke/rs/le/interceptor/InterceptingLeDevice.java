package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;

public class InterceptingLeDevice extends BaseIntercepting implements LeDevice {


    LeDevice leDevice;
    public InterceptingLeDevice(LeDevice leDevice, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leDevice = leDevice;
        leInterceptor.iDevices.put(leDevice, this);
    }


    @Override
    public void addListener(LeDeviceListener listener) {
        InterceptingLeDeviceListener iListener = leInterceptor.getInterceptingLeDeviceListener(listener);
        leDevice.addListener(iListener);
        leInterceptor.listenerAdded(this, iListener);
    }

    @Override
    public void removeListener(LeDeviceListener listener) {
        leDevice.removeListener(leInterceptor.getInterceptingLeDeviceListener(listener));
        leInterceptor.listenerRemoved(this);

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
