package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.util.Log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.Set;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeUtil;

public class LeRemoteDevice43 extends BluetoothGattCallback implements LeRemoteDevice {

    final LeDevice43 leDevice43;
    final BluetoothDevice remoteDevice43;

    final Map<UUID, LeCharacteristicListener> uuidCharacteristicListeners = new HashMap<UUID, LeCharacteristicListener>(0);
    final Map<UUID, LeCharacteristicWriteListener> uuidCharacteristicWriteListeners = new HashMap<UUID, LeCharacteristicWriteListener>(0);

    final ConcurrentLinkedQueue<BluetoothGattDescriptor> descriptorWriteQueue = new ConcurrentLinkedQueue<BluetoothGattDescriptor>();


    public LeRemoteDevice43(LeDevice43 leDevice43, BluetoothDevice device)  {
        this.leDevice43 = leDevice43;
        this.remoteDevice43 = device;
    }

    Set<LeRemoteDeviceListener> listeners = new LinkedHashSet<>();
    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        if (listeners.contains(listener))
            listeners.remove(listener);

        listeners.add(listener);
    }
    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        listeners.remove(listener);
    }

    @Override
    public String getAddress() {
        return remoteDevice43.getAddress();
    }

    @Override
    public void connect() {
        if (gatt != null) {
            gatt.connect();
            return;
        }

        remoteDevice43.connectGatt(leDevice43.context, false, this);

    }

    @Override
    public void disconnect() {
        if (gatt != null) {
            gatt.disconnect();
            close();
            for (LeRemoteDeviceListener listener: listeners)
                listener.leDevicesDisconnected(leDevice43, this);
        }
    }

    @Override
    public void close() {
        if (gatt != null) {
            gatt.close();
            gatt = null;
            for (LeRemoteDeviceListener listener: listeners)
                listener.leDevicesClosed(leDevice43, this);

        }
    }
    @Override
    public void startServicesDiscovery(UUID... uuids){
        this.startServicesDiscovery();
    }
    @Override
    public void startServicesDiscovery() {
        if (gatt !=null)
            gatt.discoverServices();
    }

    @Override
    public void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids) {

        if (uuids == null || uuids.length == 0)
            uuidCharacteristicListeners.put(null, listener);
        else for (UUID uuid: uuids)
            uuidCharacteristicListeners.put(uuid, listener);
    }

    @Override
    public void setCharacteristicWriteListener(LeCharacteristicWriteListener listener, UUID... uuids) {

        if (uuids == null || uuids.length == 0)
            uuidCharacteristicWriteListeners.put(null, listener);
        else for (UUID uuid: uuids)
            uuidCharacteristicWriteListeners.put(uuid, listener);
    }

    @Override
    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
        super.onConnectionStateChange(gatt, status, newState);

        try {

            if (newState == BluetoothProfile.STATE_CONNECTED) {
                this.gatt = gatt;
                for (LeRemoteDeviceListener listener : listeners)
                    listener.leDevicesConnected(leDevice43, this);
            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                close();
                for (LeRemoteDeviceListener listener : listeners)
                    listener.leDevicesDisconnected(leDevice43, this);
            }
        } catch (Throwable t) {
            Log.w("LeBlue", "error during onConnectionStateChange callback", t);
        }
    }

    @Override
    public void onServicesDiscovered(BluetoothGatt gatt, int status) {
        super.onServicesDiscovered(gatt, status);

        try {

            List<BluetoothGattService> services43 = gatt.getServices();
            LeGattService[] services = new LeGattService[services43.size()];
            for (int i = 0; i < services43.size(); i++)
                services[i] = new LeGattService43(leDevice43, this, services43.get(i).getUuid());


            LeRemoteDeviceListener[] arrayListeners = new LeRemoteDeviceListener[listeners.size()];
            arrayListeners = listeners.toArray(arrayListeners);
            for (LeRemoteDeviceListener listener : arrayListeners)
                listener.serviceDiscovered(leDevice43, this, leDevice43.toGattStatus(status), services);
        } catch (Throwable t) {
            Log.w("LeBlue", "error during onServicesDiscovered callback", t);
        }

    }

    public void writeGattDescriptor(BluetoothGattDescriptor d){
        //put the descriptor into the write queue
        descriptorWriteQueue.add(d);
        //if there is only 1 item in the queue, then write it.  If more than 1, we handle asynchronously in the callback above
        if(descriptorWriteQueue.size() == 1){
            gatt.writeDescriptor(d);
        }
    }

    @Override
    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        try {
            descriptorWriteQueue.remove();  //pop the item that we just finishing writing
            //if there is more to write, do it!
            if (descriptorWriteQueue.size() > 0)
                gatt.writeDescriptor(descriptorWriteQueue.element());

        } catch (Throwable t) {
            Log.w("LeBlue", "error during onDescriptorWrite callback", t);
        }
    }


    @Override
    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        try {


            UUID uuid = characteristic.getUuid();

            byte[] bytes = characteristic.getValue();

            LeCharacteristicListener nullListener = uuidCharacteristicListeners.get(null);
            LeCharacteristicListener uuidListener = uuidCharacteristicListeners.get(uuid);

            if ((nullListener != null || uuidListener != null) && gatt != null) {
                LeGattCharacteristic43 characteristic43 = new LeGattCharacteristic43(gatt, characteristic);
                if (nullListener != null)
                    nullListener.leCharacteristicChanged(uuid, this, characteristic43);
                if (uuidListener != null)
                    uuidListener.leCharacteristicChanged(uuid, this, characteristic43);
            }
        } catch (Throwable t) {
            Log.w("LeBlue", "error during onCharacteristicChanged callback", t);
        }
    }

    @Override
    public void onCharacteristicWrite(android.bluetooth.BluetoothGatt gatt, android.bluetooth.BluetoothGattCharacteristic characteristic, int status) {

        try {
            boolean succes = (status ==  gatt.GATT_SUCCESS);

            UUID uuid = characteristic.getUuid();

        byte[] bytes = characteristic.getValue();

        LeCharacteristicWriteListener nullListener = uuidCharacteristicWriteListeners.get(null);
            LeCharacteristicWriteListener uuidListener = uuidCharacteristicWriteListeners.get(uuid);

        if ((nullListener != null || uuidListener != null) && gatt != null) {
            LeGattCharacteristic43 characteristic43 = new LeGattCharacteristic43(gatt, characteristic);
            if (nullListener != null)
                nullListener.leCharacteristicWritten(uuid, this, characteristic43,succes);
            if (uuidListener != null)
                uuidListener.leCharacteristicWritten(uuid, this, characteristic43,succes);
        }
    } catch (Throwable t) {
        Log.w("LeBlue", "error during onCharacteristicChanged callback", t);
    }

    }


    @Override
    public String getName() {
        return remoteDevice43.getName();
    }

    @Override
    public void readRssi() {
        if (gatt != null) {
            gatt.readRemoteRssi();
        }
    }

    @Override
    public void onReadRemoteRssi(android.bluetooth.BluetoothGatt gatt, int rssi, int status)
    {
    if (status == BluetoothGatt.GATT_SUCCESS) {
        for (LeRemoteDeviceListener listener : listeners)
            listener.rssiRead(leDevice43, this, rssi);
    }
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || !(o instanceof LeRemoteDevice)) return false;
        LeRemoteDevice that = (LeRemoteDevice) o;
        return remoteDevice43.getAddress().equals(that.getAddress());
    }

    @Override
    public int hashCode() {
        return remoteDevice43.getAddress().hashCode();
    }

    @Override
    public String toString() {
        return "remote device: "+getAddress()+" "+getName();
    }

    BluetoothGatt gatt = null;
    BluetoothGattService gattService;
    List<BluetoothGattService> mBluetoothGattServices = null;
}
