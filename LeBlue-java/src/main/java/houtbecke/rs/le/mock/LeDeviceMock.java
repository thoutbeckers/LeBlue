package houtbecke.rs.le.mock;

import java.util.List;
import java.util.UUID;

import javax.annotation.Nonnull;

import houtbecke.rs.le.ErrorLogger;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;

public class LeDeviceMock implements LeDevice {

    public LeDeviceMock(int key, LeMockController leMockController) {
        this.controller = leMockController;
        leMockController.addDevice(key, this);
    }

    LeMockController controller;

    @Override
    public void addListener(@Nonnull LeDeviceListener listener) {
        controller.deviceAddListener(this, listener);
    }

    @Override
    public void removeListener(@Nonnull LeDeviceListener listener) {
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
    public void startScanning(@Nonnull UUID... uuids) {
        controller.deviceStartScanning(this, uuids);
    }

    @Override
    public void startScanning(@Nonnull List<List<UUID>> filters) {
        controller.deviceStartScanning(this, filters);
    }

    @Override
    public void stopScanning() {
        controller.deviceStopScanning(this);
    }

    @Override
    public void setErrorLogger(ErrorLogger errorLogger) {

    }

    @Override
    public void disable() {

    }

    @Override
    public void enable(){

    }


//    public void findLeDevice(LeRemoteDevice remoteDevice, int rssi, byte[] scanRecord) {
//        for (LeDeviceListener listener: listeners)
//            listener.leDeviceFound(this, remoteDevice, rssi, scanRecord);
//    }

}
