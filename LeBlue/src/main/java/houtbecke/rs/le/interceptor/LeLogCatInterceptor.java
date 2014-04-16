package houtbecke.rs.le.interceptor;

import android.util.Log;

import java.util.Arrays;
import java.util.UUID;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeUtil;

public class LeLogCatInterceptor extends LeInterceptor {
    public final String TAG = "LeBlueInterceptor";

    @Override
    public void listenerAdded(InterceptingLeDevice iLeDevice, InterceptingLeDeviceListener iListener) {
        Log.i(TAG, "listenerAdded: "+iLeDevice+iListener);
    }

    @Override
    public void deviceFound(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice ileRemoteDevice, int rssi, byte[] scanRecord) {
         Log.i(TAG, "deviceFound: "+iLeDevice+ileRemoteDevice+rssi+ LeUtil.bytesToString(scanRecord));
    }

    @Override
    public void connected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "connected: "+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void disconnected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "disconnected: "+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void closed(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "closed: "+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void gotUUID(InterceptingLeGattService iLeGattService, UUID uuid) {
        Log.i(TAG, "gotUUID: "+iLeGattService+uuid);
    }

    @Override
    public void enabledCharacteristicNotification(InterceptingLeGattService iLeGattService, UUID characteristic, boolean enabled) {
        Log.i(TAG, "enabledCharacteristicNotification: "+iLeGattService+characteristic+enabled);
    }

    @Override
    public void servicesDiscovered(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, LeGattStatus status, InterceptingLeGattService[] iLeGattServices) {
        Log.i(TAG, "servicesDiscovered: "+iLeDevice+iLeRemoteDevice+status+ Arrays.toString(iLeGattServices));
    }

    @Override
    public void listenerRemoved(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "listenerRemoved: "+iLeDevice);
    }

    @Override
    public void checkedBleHardwareAvailable(InterceptingLeDevice iLeDevice, boolean bleHardwareEnabled) {
        Log.i(TAG, "checkedBleHardwareAvailable: "+iLeDevice+bleHardwareEnabled);
    }

    @Override
    public void wasBtEnabled(InterceptingLeDevice iLeDevice, boolean btEnabled) {
        Log.i(TAG, "wasBtEnabled: "+iLeDevice+btEnabled);
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "startedScanning: "+iLeDevice);
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice, UUID[] uuids) {
        Log.i(TAG, "startedScanning: "+iLeDevice+Arrays.toString(uuids));
    }

    @Override
    public void stoppedScanning(InterceptingLeDevice iLeDevice) {
        Log.i(TAG, "stoppedScanning: "+iLeDevice);
    }

    @Override
    public void gotValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value) {
        Log.i(TAG, "gotValue: "+iLeGattCharacteristic+LeUtil.bytesToString(value));
    }

    @Override
    public void gotIntValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, LeFormat format, int value) {
        Log.i(TAG, "gotIntValue: "+iLeGattCharacteristic + format + value);
    }

    @Override
    public void remoteListenerAdded(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        Log.i(TAG, "remoteListenerAdded: "+iLeRemoteDevice+iListener);
    }

    @Override
    public void remoteListenerRemoved(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        Log.i(TAG, "remoteListenerRemoved: "+iLeRemoteDevice+iListener);
    }

    @Override
    public void gotAddress(InterceptingLeRemoteDevice iLeRemoteDevice, String address) {
        Log.i(TAG, "gotAddress: "+iLeRemoteDevice+address);
    }

    @Override
    public void connecting(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "connecting: "+iLeRemoteDevice);
    }

    @Override
    public void disconnecting(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "disconnecting: "+iLeRemoteDevice);
    }

    @Override
    public void closing(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "closing: "+iLeRemoteDevice);
    }

    @Override
    public void serviceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "serviceDiscoveryStarted: "+iLeRemoteDevice);
    }

    @Override
    public void gotRemoteDeviceName(InterceptingLeRemoteDevice iLeRemoteDevice, String name) {
        Log.i(TAG, "gotRemoteDeviceName: "+iLeRemoteDevice+name);
    }

    @Override
    public void characteristicChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic) {
        Log.i(TAG, "characteristicChanged: "+iLeCharacteristicListener+uuid+" "+iLeRemoteDevice+iLeGattCharacteristic);
    }

    @Override
    public void characteristicListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicListener iCharacteristicsListener, UUID[] uuids) {
        Log.i(TAG, "characteristicListenerSet: "+iLeRemoteDevice+iCharacteristicsListener+Arrays.toString(uuids));
    }

    @Override
    public void setValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value) {
        Log.i(TAG, "setValue"+iLeGattCharacteristic+LeUtil.bytesToString(value));
    }
}