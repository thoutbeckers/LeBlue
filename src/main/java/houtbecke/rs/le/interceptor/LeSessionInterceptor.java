package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.session.EventSink;
import houtbecke.rs.le.session.EventType;

import static houtbecke.rs.le.session.EventType.*;

public class LeSessionInterceptor extends LeInterceptor {

    protected EventSink sink;
    public void LeSessionInterceptor(EventSink sink) {
        this.sink = sink;
    }
    @Override
    public void listenerAdded(InterceptingLeDevice iLeDevice, InterceptingLeDeviceListener iListener) {
        drainEvent(deviceAddListener, iLeDevice, iListener.id+"");
    }

    private void drainEvent(EventType type, BaseIntercepting interceptor, String... values) {
        drainEvent(type, interceptor, values);
    }

    @Override
    public void remoteDeviceFound(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, int rssi, byte[] scanRecord) {
        drainEvent(remoteDeviceFound, iLeDevice, iLeRemoteDevice.id+"", rssi+"", bytesToString(scanRecord));
    }

    @Override
    public void connected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceConnect, iLeDevice, iLeRemoteDevice.id+"");
    }

    @Override
    public void disconnected(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceDisconnect, iLeDevice, iLeRemoteDevice.id + "");
    }

    @Override
    public void closed(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceClose, iLeDevice, iLeRemoteDevice.id + "");
    }

    @Override
    public void gotUUID(InterceptingLeGattService iLeGattService, UUID uuid) {
        drainEvent(serviceGetUUID, iLeGattService, uuid.toString());
    }

    @Override
    public void enabledCharacteristicNotification(InterceptingLeGattService iLeGattService, UUID characteristic, boolean enabled) {
        drainEvent(serviceEnableCharacteristicNotification, iLeGattService, characteristic.toString(), Boolean.toString(enabled));
    }

    @Override
    public void servicesDiscovered(InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, LeGattStatus status, InterceptingLeGattService[] iLeGattServices) {
        String[] params = new String[2 + iLeGattServices.length];
        params[0] = iLeRemoteDevice.id+"";
        params[1] = status.toString();
        for (int k = 0; k < iLeGattServices.length; k++)
            params[2+k] = iLeGattServices[k].id+"";
        drainEvent(remoteDeviceServicesDiscovered, iLeDevice, params);
    }

    @Override
    public void listenerRemoved(InterceptingLeDevice iLeDevice) {
        drainEvent(deviceRemoveListener, iLeDevice);
    }

    @Override
    public void checkedBleHardwareAvailable(InterceptingLeDevice iLeDevice, boolean bleHardwareEnabled) {
        drainEvent(deviceCheckBleHardwareAvailable, iLeDevice, Boolean.toString(bleHardwareEnabled));
    }

    @Override
    public void wasBtEnabled(InterceptingLeDevice iLeDevice, boolean btEnabled) {
         drainEvent(deviceIsBtEnabled, iLeDevice, Boolean.toString(btEnabled));
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice) {
        drainEvent(deviceStartScanning, iLeDevice);
    }

    @Override
    public void startedScanning(InterceptingLeDevice iLeDevice, UUID[] uuids) {
        String[] params = new String[uuids.length];
        for (int k=0; k < uuids.length; k++)
            params[k] = uuids[k].toString();
        drainEvent(deviceStartScanning, iLeDevice, params);
    }

    @Override
    public void stoppedScanning(InterceptingLeDevice iLeDevice) {
        drainEvent(deviceStopScanning, iLeDevice);
    }

    @Override
    public void gotValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value) {
        drainEvent(characteristicGetValue, iLeGattCharacteristic, bytesToString(value));
    }

    @Override
    public void gotIntValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, LeFormat format, int value) {
        drainEvent(characteristicGetIntValue, iLeGattCharacteristic, format.toString(), value+"");
    }

    @Override
    public void remoteListenerAdded(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        drainEvent(remoteDeviceAddListener, iLeRemoteDevice, iListener.id+"");
    }

    @Override
    public void remoteListenerRemoved(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener) {
        drainEvent(remoteDeviceRemoveListener, iLeRemoteDevice, iLeRemoteDevice.id+"");
    }

    @Override
    public void gotAddress(InterceptingLeRemoteDevice iLeRemoteDevice, String address) {
        drainEvent(remoteDeviceGetAddress, iLeRemoteDevice, address);
    }

    @Override
    public void remoteDeviceConnecting(InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceConnect, iLeRemoteDevice);
    }

    @Override
    public void remoteDeviceDisconnecting(InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceDisconnect, iLeRemoteDevice);
    }

    @Override
    public void remoteDeviceClosing(InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(remoteDeviceClose, iLeRemoteDevice);
    }

    @Override
    public void remoteDeviceServiceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice) {
        drainEvent(startServicesDiscovery, iLeRemoteDevice);
    }

    @Override
    public void gotRemoteDeviceName(InterceptingLeRemoteDevice iLeRemoteDevice, String name) {
        drainEvent(remoteDeviceGetName, iLeRemoteDevice, name);
    }

    @Override
    public void characteristicChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {

    }

    @Override
    public void remoteDeviceCharacteristicListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicListener iCharacteristicsListener, UUID[] uuids) {

    }

    private String bytesToString(byte[] scanRecord) {
        StringBuilder builder = new StringBuilder();
        for (byte b: scanRecord) {
            builder.append(b).append(",");
        }
        String bytes = builder.toString();
        if (bytes.length() > 0)
            return bytes.substring(0, bytes.length() - 1);
        return bytes;
    }
}
