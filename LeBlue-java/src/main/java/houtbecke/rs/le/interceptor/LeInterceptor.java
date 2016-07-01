package houtbecke.rs.le.interceptor;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeScanRecord;

public abstract class LeInterceptor {

    // public Map<LeDeviceListener,InterceptingLeDeviceListener> iListeners = new HashMap<>();
    public Map<LeDevice, InterceptingLeDevice> iDevices = new HashMap<>();
    public Map<LeDeviceListener, InterceptingLeDeviceListener> iDeviceListeners = new HashMap<>();
    public Map<LeRemoteDevice, InterceptingLeRemoteDevice> iRemoteDevices = new HashMap<>();
    public Map<LeRemoteDeviceListener, InterceptingLeRemoteDeviceListener> iRemoteDeviceListeners = new HashMap<>();

    public Map<LeGattService, InterceptingLeGattService> iGattServices = new HashMap<>();
    public Map<LeGattCharacteristic, InterceptingLeGattCharacteristic> iGattCharacteristics = new HashMap<>();
    public Map<LeCharacteristicListener, InterceptingLeCharacteristicListener> iCharacteristicListeners = new HashMap<>();
    public Map<LeCharacteristicWriteListener, InterceptingLeCharacteristicWriteListener> iCharacteristicWriteListeners = new HashMap<>();


    public InterceptingLeRemoteDevice getInterceptingLeRemoteDevice(LeRemoteDevice leRemoteDevice) {
        InterceptingLeRemoteDevice iRemoteDevice = iRemoteDevices.get(leRemoteDevice);
        if (iRemoteDevice == null) {
            iRemoteDevice = new InterceptingLeRemoteDevice(leRemoteDevice, this);
            iRemoteDevices.put(leRemoteDevice, iRemoteDevice);
        }
        return iRemoteDevice;
    }

    public InterceptingLeDevice getInterceptingLeDevice(LeDevice leDevice) {
        InterceptingLeDevice device = iDevices.get(leDevice);
        if (device == null) {

            System.out.println("Warning: unknown LeDevice");
        }
        return device;
    }

    public InterceptingLeDeviceListener getInterceptingLeDeviceListener(LeDeviceListener listener) {
        InterceptingLeDeviceListener iDeviceListener= iDeviceListeners.get(listener);
        if (iDeviceListener == null) {
            iDeviceListener = new InterceptingLeDeviceListener(listener, this);
            iDeviceListeners.put(listener, iDeviceListener);
        }
        return iDeviceListener;
    }

    public InterceptingLeRemoteDeviceListener getInterceptingLeRemoteDeviceListener(LeRemoteDeviceListener listener) {
        InterceptingLeRemoteDeviceListener iRemoteDeviceListener= iRemoteDeviceListeners.get(listener);
        if (iRemoteDeviceListener == null) {
            iRemoteDeviceListener = new InterceptingLeRemoteDeviceListener(listener, this);
            iRemoteDeviceListeners.put(listener, iRemoteDeviceListener);
        }
        return iRemoteDeviceListener;
    }

    public InterceptingLeGattService getInterceptingLeGattService(LeGattService leGattService) {
        InterceptingLeGattService iLeGattService = iGattServices.get(leGattService);
        if (iLeGattService == null) {
            iLeGattService = new InterceptingLeGattService(leGattService, this);
            iGattServices.put(leGattService, iLeGattService);
        }
        return iLeGattService;
    }

    public InterceptingLeGattCharacteristic serviceGotCharacteristic(InterceptingLeGattService iLeGattService, LeGattCharacteristic leGattCharacteristic) {
        InterceptingLeGattCharacteristic iLeGattCharacteristic = iGattCharacteristics.get(leGattCharacteristic);
        if (iLeGattCharacteristic == null) {
            iLeGattCharacteristic = new InterceptingLeGattCharacteristic(leGattCharacteristic, this);
            iGattCharacteristics.put(leGattCharacteristic, iLeGattCharacteristic);
        }
        return iLeGattCharacteristic;
    }

    public InterceptingLeCharacteristicListener getInterceptingCharacteristicsListener(LeCharacteristicListener listener) {
        InterceptingLeCharacteristicListener iLeCharacteristicListener = iCharacteristicListeners.get(listener);
        if (iLeCharacteristicListener == null) {
            iLeCharacteristicListener = new InterceptingLeCharacteristicListener(listener, this);
            iCharacteristicListeners.put(listener, iLeCharacteristicListener);
        }
        return iLeCharacteristicListener;
    }

    public InterceptingLeCharacteristicWriteListener getInterceptingCharacteristicsWriteListener(LeCharacteristicWriteListener listener) {
        InterceptingLeCharacteristicWriteListener iLeCharacteristicWriteListener = iCharacteristicWriteListeners.get(listener);
        if (iLeCharacteristicWriteListener == null) {
            iLeCharacteristicWriteListener = new InterceptingLeCharacteristicWriteListener(listener, this);
            iCharacteristicWriteListeners.put(listener, iLeCharacteristicWriteListener);
        }
        return iLeCharacteristicWriteListener;
    }


    public InterceptingLeGattCharacteristic getInterceptingLeGattCharacteristic(LeGattCharacteristic characteristic) {
        InterceptingLeGattCharacteristic iLeGattCharacteristic = iGattCharacteristics.get(characteristic);
        if (iLeGattCharacteristic == null) {
            iLeGattCharacteristic = new InterceptingLeGattCharacteristic(characteristic, this);
            iGattCharacteristics.put(characteristic, iLeGattCharacteristic);
        }
        return iLeGattCharacteristic;
    }

    public volatile int counter = 0;

    public abstract void listenerAdded(InterceptingLeDevice iLeDevice, InterceptingLeDeviceListener iListener);

    public abstract void deviceFound(InterceptingLeDeviceListener iLeDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice ileRemoteDevice, int rssi, LeScanRecord scanrecord);

    public abstract void deviceState(InterceptingLeDeviceListener iLeDeviceListener, InterceptingLeDevice iLeDevice,LeDeviceState deviceState);

    public abstract void connected(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void disconnected(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void closed(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener,InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void gotUUID(InterceptingLeGattService iLeGattService, UUID uuid);

    public abstract void enabledCharacteristicNotification(InterceptingLeGattService iLeGattService, UUID characteristic, boolean enabled);

    public abstract void servicesDiscovered(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, LeGattStatus status, InterceptingLeGattService[] iLeGattServices);

    public abstract void listenerRemoved(InterceptingLeDevice iLeDevice);

    public abstract void checkedBleHardwareAvailable(InterceptingLeDevice iLeDevice, boolean bleHardwareEnabled);

    public abstract void wasBtEnabled(InterceptingLeDevice iLeDevice, boolean btEnabled);

    public abstract void startedScanning(InterceptingLeDevice iLeDevice);

    public abstract void startedScanning(InterceptingLeDevice iLeDevice, UUID[] uuids);

    public abstract void stoppedScanning(InterceptingLeDevice iLeDevice);

    public abstract void gotValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, byte[] value);

    public abstract void gotIntValue(InterceptingLeGattCharacteristic iLeGattCharacteristic, LeFormat format, int value);

    public abstract void remoteListenerAdded(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener);

    public abstract void remoteListenerRemoved(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeRemoteDeviceListener iListener);

    public abstract void gotAddress(InterceptingLeRemoteDevice iLeRemoteDevice, String address);

    public abstract void connecting(InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void disconnecting(InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void closing(InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void serviceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void serviceDiscoveryStarted(InterceptingLeRemoteDevice iLeRemoteDevice, UUID[] uuids);

    public abstract void gotRemoteDeviceName(InterceptingLeRemoteDevice iLeRemoteDevice, String name);

    public abstract void characteristicChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic);

    public abstract void characteristicNotificationChanged(InterceptingLeCharacteristicListener iLeCharacteristicListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic,Boolean success);

    public abstract void characteristicWritten(InterceptingLeCharacteristicWriteListener iLeCharacteristicWriteListener, UUID uuid, InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeGattCharacteristic iLeGattCharacteristic,Boolean success);

    public abstract void characteristicListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicListener iCharacteristicsListener, UUID[] uuids);

    public abstract void characteristicWriteListenerSet(InterceptingLeRemoteDevice iLeRemoteDevice, InterceptingLeCharacteristicWriteListener iCharacteristicsWriteListener, UUID[] uuids);

    public abstract void setValue(InterceptingLeGattCharacteristic interceptingLeGattCharacteristic, byte[] value);

    public abstract void setValue(InterceptingLeGattCharacteristic interceptingLeGattCharacteristic, byte[] value,Boolean withResponse);

    public abstract void gotCharacteristic(InterceptingLeGattService iLeGattService, InterceptingLeGattCharacteristic iLeGattCharacteristic);

    public abstract void rssiRead(InterceptingLeRemoteDeviceListener iLeRemoteDeviceListener, InterceptingLeDevice iLeDevice, InterceptingLeRemoteDevice iLeRemoteDevice, int rssi);

    public abstract void readRssi(InterceptingLeRemoteDevice iLeRemoteDevice);

    public abstract void read(InterceptingLeGattCharacteristic interceptingLeGattCharacteristic);

}