package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.os.Build;
import android.util.Log;

import java.lang.reflect.Method;
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
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeCharacteristicWriteListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeUtil;

public class LeRemoteDevice43 extends BluetoothGattCallback implements LeRemoteDevice {

    private final LeDevice43 leDevice43;
    private final BluetoothDevice remoteDevice43;

    private final Map<UUID, LeCharacteristicListener> uuidCharacteristicListeners = new HashMap<UUID, LeCharacteristicListener>(0);
    private final Map<UUID, LeCharacteristicWriteListener> uuidCharacteristicWriteListeners = new HashMap<UUID, LeCharacteristicWriteListener>(0);

    private final ConcurrentLinkedQueue<Object> queue = new ConcurrentLinkedQueue<>();

    public LeRemoteDevice43(LeDevice43 leDevice43, BluetoothDevice device)  {
        this.leDevice43 = leDevice43;
        this.remoteDevice43 = device;
    }

    private final Set<LeRemoteDeviceListener> listeners = new LinkedHashSet<>();
    private final ReadWriteLock listenerReadWriteLock = new ReentrantReadWriteLock();


    private interface L {
        void l(LeRemoteDeviceListener l);
    }

    private void listeners(L l) {
        listenerReadWriteLock.readLock().lock();
        try {
            for (LeRemoteDeviceListener listener: listeners)
                l.l(listener);
        } finally {
            listenerReadWriteLock.readLock().unlock();
        }
    }


    @Override
    public void addListener(LeRemoteDeviceListener listener) {
        listenerReadWriteLock.writeLock().lock();
        try
        {
            if (listeners.contains(listener))
                listeners.remove(listener);

            listeners.add(listener);        } finally {
            listenerReadWriteLock.writeLock().unlock();
        }
    }

    @Override
    public void removeListener(LeRemoteDeviceListener listener) {
        listenerReadWriteLock.writeLock().lock();
        try
        {
            listeners.remove(listener);
        } finally {
            listenerReadWriteLock.writeLock().unlock();
        }
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

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            remoteDevice43.connectGatt(leDevice43.context, false, this,BluetoothDevice.TRANSPORT_LE);
        }else{
            remoteDevice43.connectGatt(leDevice43.context, false, this);
        }
    }

    @Override
    public void disconnect() {
        if (gatt != null) {
            gatt.disconnect();
        }
    }


    private boolean refreshDeviceCache(BluetoothGatt gatt){
        //workaround for https://code.google.com/p/android/issues/detail?id=81130
        try {
            BluetoothGatt localBluetoothGatt = gatt;
            Method localMethod = localBluetoothGatt.getClass().getMethod("refresh", new Class[0]);
            if (localMethod != null) {
                boolean bool = ((Boolean) localMethod.invoke(localBluetoothGatt, new Object[0])).booleanValue();
                return bool;
            }
        }
        catch (Exception localException) {
        }
        return false;
    }

    @Override
    public void refreshDeviceCache(){
        if (gatt != null)
            refreshDeviceCache(gatt);
    }

    @Override
    public void close() {
        this.queue.clear();
            if (gatt != null)
                gatt.close();
            gatt = null;

        listeners(
                new L() {
                    @Override
                    public void l(LeRemoteDeviceListener l) {
                        l.leDevicesClosed(leDevice43, LeRemoteDevice43.this);
                    }
                });


    }

    @Override
    public void startServicesDiscovery(UUID... uuids){
        //scanning for specific services is not supported on android
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
            if (listener == null)
                uuidCharacteristicListeners.remove(null);
            else
                uuidCharacteristicListeners.put(null, listener);
        else for (UUID uuid: uuids)
            if (listener == null)
                uuidCharacteristicListeners.remove(uuid);
            else
                uuidCharacteristicListeners.put(uuid, listener);
    }

    @Override
    public void setCharacteristicWriteListener(LeCharacteristicWriteListener listener, UUID... uuids) {

        if (uuids == null || uuids.length == 0)
            if (listener == null)
                uuidCharacteristicWriteListeners.remove(null);
            else
                uuidCharacteristicWriteListeners.put(null, listener);
        else for (UUID uuid: uuids)
            if (listener == null)
                uuidCharacteristicWriteListeners.remove(uuid);
            else
                uuidCharacteristicWriteListeners.put(uuid, listener);
    }

    @Override
    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
        super.onConnectionStateChange(gatt, status, newState);

        if (status!=BluetoothGatt.GATT_SUCCESS){
            leDevice43.log(Log.ERROR,"LeBlue","onConnectionStateChange " + status);
        }

        try {

            if (newState == BluetoothProfile.STATE_CONNECTED) {
                this.gatt = gatt;
                listeners(
                        new L() {
                            @Override
                            public void l(LeRemoteDeviceListener l) {
                                l.leDevicesConnected(leDevice43, LeRemoteDevice43.this);
                            }
                        });


            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                listeners(
                        new L() {
                            @Override
                            public void l(LeRemoteDeviceListener l) {
                                l.leDevicesDisconnected(leDevice43, LeRemoteDevice43.this);
                            }
                        });
                close();
            }
        } catch (Throwable t) {
            Log.w("LeBlue", "error during onConnectionStateChange callback", t);
        }
    }

    @Override
    public void onServicesDiscovered(BluetoothGatt gatt,final int status) {
        super.onServicesDiscovered(gatt, status);

        if (status!=BluetoothGatt.GATT_SUCCESS){
            leDevice43.log(Log.ERROR,"LeBlue","onServicesDiscovered " + status);
        }

        try {

            List<BluetoothGattService> services43 = gatt.getServices();
            final LeGattService[] services = new LeGattService[services43.size()];
            for (int i = 0; i < services43.size(); i++)
                services[i] = new LeGattService43(leDevice43, this, services43.get(i).getUuid());

            listeners(
                    new L() {
                        @Override
                        public void l(LeRemoteDeviceListener l) {
                            l.serviceDiscovered(leDevice43, LeRemoteDevice43.this, leDevice43.toGattStatus(status), services);

                        }
                    });


        } catch (Throwable t) {
            Log.w("LeBlue", "error during onServicesDiscovered callback", t);
        }

    }

    public void addToQueue(Object object){
        if (object instanceof BluetoothGattCharacteristic || object instanceof BluetoothGattDescriptor || object instanceof CharacteristicData ) {
            synchronized (queue) {
                queue.add(object);
                if (queue.size() == 1) {
                    sendFirst();
                }
            }
        }
    }



    public void sendFirst(){
        synchronized (queue) {

            if (queue.size() > 0) {
                Object object = queue.element();
                if (object instanceof BluetoothGattCharacteristic) {
                    gatt.readCharacteristic((BluetoothGattCharacteristic) object);
                } else if (object instanceof BluetoothGattDescriptor) {
                    gatt.writeDescriptor((BluetoothGattDescriptor) object);
                } else if (object instanceof CharacteristicData) {
                    CharacteristicData characteristicData = (CharacteristicData) object;
                    characteristicData.characteristic.setValueNow(characteristicData.value,characteristicData.withResponse);
                }

            }
        }
    }


    @Override
    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        try {
            this.characteristicNotificationChanged(gatt,descriptor.getCharacteristic(),(status==gatt.GATT_SUCCESS));
            if (status!=BluetoothGatt.GATT_SUCCESS){
                leDevice43.log(Log.ERROR,"LeBlue","onDescriptorWrite " + status);
            }
            queue.remove();
            sendFirst();

        } catch (Throwable t) {
            Log.w("LeBlue", "error during onDescriptorWrite callback", t);
        }
    }



    @Override
    public void onCharacteristicRead (BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status){
        queue.remove();
        sendFirst();
        if (status!=BluetoothGatt.GATT_SUCCESS){
            leDevice43.log(Log.ERROR,"LeBlue","onDescriptorWrite " + status);
        }
        if(status==gatt.GATT_SUCCESS)
            this.characteristicUpdated(gatt,characteristic);


    }

    @Override
    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        this.characteristicUpdated(gatt,characteristic);
    }


    public void characteristicNotificationChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic,boolean success) {

        try {


            UUID uuid = characteristic.getUuid();

            byte[] bytes = characteristic.getValue();

            LeCharacteristicListener nullListener = uuidCharacteristicListeners.get(null);
            LeCharacteristicListener uuidListener = uuidCharacteristicListeners.get(uuid);

            if ((nullListener != null || uuidListener != null) && gatt != null) {
                LeGattCharacteristic43 characteristic43 = new LeGattCharacteristic43(gatt, characteristic,this);
                if (nullListener != null)
                    nullListener.leCharacteristicNotificationChanged(uuid, this, characteristic43,success);
                if (uuidListener != null)
                    uuidListener.leCharacteristicNotificationChanged(uuid, this, characteristic43,success);
            }
        } catch (Throwable t) {
            Log.w("LeBlue", "error during onCharacteristicChanged callback", t);
        }
    }

    public void characteristicUpdated(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {

        try {


            UUID uuid = characteristic.getUuid();

            byte[] bytes = characteristic.getValue();

            LeCharacteristicListener nullListener = uuidCharacteristicListeners.get(null);
            LeCharacteristicListener uuidListener = uuidCharacteristicListeners.get(uuid);

            if ((nullListener != null || uuidListener != null) && gatt != null) {
                LeGattCharacteristic43 characteristic43 = new LeGattCharacteristic43(gatt, characteristic,this);
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
        queue.remove();
        sendFirst();

        try {
            boolean succes = (status ==  gatt.GATT_SUCCESS);
            if (status!=BluetoothGatt.GATT_SUCCESS){
                leDevice43.log(Log.ERROR,"LeBlue","onCharacteristicWrite " + status);
            }
            UUID uuid = characteristic.getUuid();

            LeCharacteristicWriteListener nullListener = uuidCharacteristicWriteListeners.get(null);
            LeCharacteristicWriteListener uuidListener = uuidCharacteristicWriteListeners.get(uuid);

            if ((nullListener != null || uuidListener != null) && gatt != null) {
                LeGattCharacteristic43 characteristic43 = new LeGattCharacteristic43(gatt, characteristic,this);
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



   protected void addToQueue(LeGattCharacteristic43 characteristic,  byte[] value,boolean withResponse) {

       this.addToQueue(new CharacteristicData(characteristic,value,withResponse));
   }

    class CharacteristicData{

        LeGattCharacteristic43 characteristic;
        byte[] value;
        boolean withResponse;
        protected CharacteristicData( LeGattCharacteristic43 characteristic, byte[] value,boolean withResponse){
            this.characteristic = characteristic;
            this.value = value;
            this.withResponse =  withResponse;
        }

    }


}
