package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;

public class LeDeviceMock implements LeDevice {

    public LeDeviceMock(LeMockController leMockController) {
        this.controller = leMockController;
    }

    LeMockController controller;

    @Override
    public void addListener(LeDeviceListener listener) {
        controller.deviceAddListener(this, listener);
    }

    @Override
    public void removeListener(LeDeviceListener listener) {
        controller.deviceRemoveListener(this, listener);
    }


    @Override
    public boolean checkBleHardwareAvailable() {
        return controller.deviceCheckBleHardwareAvailable(this);
    }

    @Override
    public boolean isBtEnabled() {
        return controller.deviceIsBtEnabled(this);
    }

    @Override
    public void startScanning() {
        controller.deviceStartScanning(this);
    }

    @Override
    public void startScanning(UUID... uuids) {
        controller.deviceStartScanning(this, uuids);
    }

    @Override
    public void stopScanning() {
        controller.deviceStopScanning(this);
    }

//    public void findLeDevice(LeRemoteDevice remoteDevice, int rssi, byte[] scanRecord) {
//        for (LeDeviceListener listener: listeners)
//            listener.leDeviceFound(this, remoteDevice, rssi, scanRecord);
//    }

}
