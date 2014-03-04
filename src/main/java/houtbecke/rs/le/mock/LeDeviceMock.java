package houtbecke.rs.le.mock;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDevice;

public class LeDeviceMock implements LeDevice {



    LeMockListener mockListener;
    public LeDeviceMock(LeMockListener mockListener) {
        this.mockListener = mockListener;
    }

    Set<LeDeviceListener> listeners = new LinkedHashSet<>();

    @Override
    public void addListener(LeDeviceListener listener) {
        listeners.add(listener);
    }

    @Override
    public void removeListener(LeDeviceListener listener) {
        listeners.remove(listener);
    }

    public boolean bleHardwareAvailable = true;

    @Override
    public boolean checkBleHardwareAvailable() {
        return bleHardwareAvailable;
    }

    public boolean btEnabled = true;

    @Override
    public boolean isBtEnabled() {
        return btEnabled;
    }

    @Override
    public void startScanning() {
        mockListener.startScanning(this);
    }

    @Override
    public void startScanning(UUID... uuids) {
        mockListener.startScanning(this, uuids);
    }

    @Override
    public void stopScanning() {
        mockListener.stopScanning(this);
    }

    public void findLeDevice(LeRemoteDevice remoteDevice, int rssi, byte[] scanRecord) {
        for (LeDeviceListener listener: listeners)
            listener.leDeviceFound(this, remoteDevice, rssi, scanRecord);
    }

}
