package houtbecke.rs.le.interceptor;

import android.util.Log;

import java.util.UUID;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;

public class LeLogCatInterceptor extends LeInterceptor {
    public final String TAG = "LeInterceptor";

    @Override
    public void deviceListenerAdded(InterceptingLeDevice iLeDevice, InterceptingLeDeviceListener iListener) {
        Log.i(TAG, "deviceListenerAdded: ");
    }

    @Override
    public void deviceFound(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice ileRemoteDevice, int rssi, byte[] scanRecord) {
        Log.i(TAG, "deviceFound: ");
    }

    @Override
    public void remoteDeviceConnected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "remoteDeviceConnected: ");
    }

    @Override
    public void deviceDisconnected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "deviceDisconnected: ");
    }

    @Override
    public void deviceClosed(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "deviceClosed: ");
    }

    @Override
    public void gotUUID(InterceptingLeGattService iLeGattService, UUID uuid) {
        Log.i(TAG, "gotUUID: ");
    }

    @Override
    public void enabledCharacteristicNotification(InterceptingLeGattService iLeGattService, UUID characteristic, boolean enabled) {
        Log.i(TAG, "enabledCharacteristicNotification: ");
    }

    @Override
    public void servicesDiscovered(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattService[] iLeGattServices, LeGattStatus status) {
        Log.i(TAG, "servicesDiscovered: ");
    }

    @Override
    public void deviceListenerRemoved(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "deviceListenerRemoved: ");
    }

    @Override
    public void checkedBleHardwareAvailable(InterceptingLeDevice iLeDevice, boolean bleHardwareEnabled) {
        Log.i(TAG, "checkedBleHardwareAvailable: ");
    }

    @Override
    public void wasBtEnabled(InterceptingLeDevice iLeDevice, boolean btEnabled) {
        Log.i(TAG, "wasBtEnabled: ");
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "startedScanning: ");
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice, UUID[] uuids) {
        Log.i(TAG, "startedScanning: ");
    }

    @Override
    public void stoppedScanning(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "stoppedScanning: ");
    }

    @Override
    public void gotCharacteristicValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value) {
        Log.i(TAG, "gotCharacteristicValue: ");
    }

    @Override
    public void gotCharacteristicIntValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, LeFormat format, int value) {
        Log.i(TAG, "gotCharacteristicIntValue: ");
    }

    @Override
    public void remoteDeviceListenerAdded(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        Log.i(TAG, "remoteDeviceListenerAdded: ");
    }

    @Override
    public void remoteDeviceListenerRemoved(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        Log.i(TAG, "remoteDeviceListenerRemoved: ");
    }

    @Override
    public void gotRemoteDeviceAddress(InterceptingLeRemoteDevice iLeRemoteDevice, String address) {
        Log.i(TAG, "gotRemoteDeviceAddress: ");
    }

    @Override
    public void remoteDeviceConnected(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "remoteDeviceConnected: ");
    }

    @Override
    public void remoteDeviceDisconnected(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "remoteDeviceDisconnected: ");
    }

    @Override
    public void remoteDeviceClosed(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "remoteDeviceClosed: ");
    }

    @Override
    public void remoteDeviceServiceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "remoteDeviceServiceDiscoveryStarted: ");
    }

    @Override
    public void gotRemoteDeviceName(InterceptingLeRemoteDevice iLeRemoteDevice, String name) {
        Log.i(TAG, "gotRemoteDeviceName: ");
    }

    @Override
    public void characteristicChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {
        Log.i(TAG, "characteristicChanged: ");
    }

    @Override
    public void remoteDeviceCharacteristicListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicListener iCharacteristicsListener, UUID[] uuids) {
        Log.i(TAG, "remoteDeviceCharacteristicListenerSet: ");
    }
}
