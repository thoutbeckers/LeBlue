package houtbecke.rs.le.interceptor;

import android.util.Log;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeScanRecord;
import houtbecke.rs.le.LeUtil;

public class LeLogCatInterceptor extends LeInterceptor {
    public final String TAG = "LeBlueInterceptor";

    @Override
    public void listenerAdded(InterceptingLeDevice iLeDevice, InterceptingLeDeviceListener iListener) {
        Log.i(TAG, "listenerAdded: "+iLeDevice+iListener);
    }

    @Override
    public void deviceFound(InterceptingLeDeviceListener iLeDeviceListener,InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice ileRemoteDevice, int rssi, LeScanRecord scanRecord) {
         Log.i(TAG, "deviceFound: "+iLeDeviceListener+iLeDevice+ileRemoteDevice+rssi+ LeUtil.bytesToString(scanRecord.getRawData()));
    }

    @Override
    public void deviceState(InterceptingLeDeviceListener iLeDeviceListener, InterceptingLeDevice iLeDevice, LeDeviceState deviceState) {
        Log.i(TAG, "deviceState: "+iLeDeviceListener+iLeDevice+deviceState.toString());
    }

    @Override
    public void connected(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "connected: "+iLeRemoteDeviceListener+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void disconnected(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "disconnected: "+iLeRemoteDeviceListener+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void closed(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener,InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "closed: "+iLeRemoteDeviceListener+iLeDevice+iLeRemoteDevice);
    }

    @Override
    public void gotUUID(InterceptingLeGattService iLeGattService, UUID uuid) {
        Log.i(TAG, "gotUUID: "+iLeGattService+uuid);
    }

    @Override
    public void gotCharacteristic(InterceptingLeGattService iLeGattService, InterceptingLeGattCharacteristic iLeGattCharacteristic) {
        Log.i(TAG, "gotCharacteristic: "+iLeGattService+iLeGattCharacteristic);
    }

    @Override
    public void rssiRead(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, int rssi) {
        Log.i(TAG, "rssiRead: "+iLeRemoteDeviceListener+iLeDevice+iLeRemoteDevice+rssi);

    }

    @Override
    public void readRssi(InterceptingLeRemoteDevice iLeRemoteDevice) {
        Log.i(TAG, "readRssi: "+iLeRemoteDevice);

    }

    @Override
    public void read(InterceptingLeGattCharacteristic interceptingLeGattCharacteristic) {
        Log.i(TAG, "read: "+interceptingLeGattCharacteristic);

    }


    @Override
    public void enabledCharacteristicNotification(InterceptingLeGattService iLeGattService, UUID characteristic, boolean enabled) {
        Log.i(TAG, "enabledCharacteristicNotification: "+iLeGattService+characteristic+enabled);
    }

    @Override
    public void servicesDiscovered(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, LeGattStatus status, InterceptingLeGattService[] iLeGattServices) {
        Log.i(TAG, "servicesDiscovered: "+iLeRemoteDeviceListener+iLeDevice+iLeRemoteDevice+status+ Arrays.toString(iLeGattServices));
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
    public void startedScanning(InterceptingLeDevice iLeDevice, List<List<UUID>> filters) {
        for (List<UUID> filter :filters)
            Log.i(TAG, "startedScanning: "+iLeDevice+Arrays.toString(filter.toArray()));
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
    public void serviceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice, UUID[] uuids) {
        Log.i(TAG, "serviceDiscoveryStarted: "+iLeRemoteDevice +" " +Arrays.toString(uuids));
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
    public void characteristicNotificationChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic, Boolean success) {
        Log.i(TAG, "characteristicNotificationChanged: "+iLeCharacteristicListener+uuid+" "+iLeRemoteDevice+iLeGattCharacteristic + " " +success);
    }

    @Override
    public void characteristicWritten(InterceptingLeCharacteristicWriteListener iLeCharacteristicWriteListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic, Boolean success) {
        Log.i(TAG, "characteristicWritten: "+iLeCharacteristicWriteListener+uuid+" "+iLeRemoteDevice+iLeGattCharacteristic + " " +success);
    }

    @Override
    public void characteristicListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicListener iCharacteristicsListener, UUID[] uuids) {
        Log.i(TAG, "characteristicListenerSet: "+iLeRemoteDevice+iCharacteristicsListener+Arrays.toString(uuids));
    }

    @Override
    public void characteristicWriteListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicWriteListener iCharacteristicsWriteListener, UUID[] uuids) {
        Log.i(TAG, "characteristicWriteListenerSet: "+iLeRemoteDevice+iCharacteristicsWriteListener+Arrays.toString(uuids));
    }

    @Override
    public void setValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value) {
        Log.i(TAG, "setValue"+iLeGattCharacteristic+LeUtil.bytesToString(value));
    }

    @Override
    public void setValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value, Boolean withResponse) {
        Log.i(TAG, "setValue"+iLeGattCharacteristic+LeUtil.bytesToString(value) + " " + withResponse.toString());

    }

}