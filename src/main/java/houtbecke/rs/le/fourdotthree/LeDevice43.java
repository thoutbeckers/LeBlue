package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import javax.inject.Inject;

import houtbecke.rs.le.BleException;
import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;

public class LeDevice43 implements LeDevice {

    final Context context;

    List<LeDeviceListener> listeners = new ArrayList<LeDeviceListener>();
    @Override
    public void addListener(LeDeviceListener listener) {
        listeners.add(listener);
    }
    @Override
    public void removeListener(LeDeviceListener listener) {
        listeners.remove(listener);
    }

    @Inject
    public LeDevice43(Context context) throws BleException {
        this.context = context;
        try {
            mBluetoothManager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);

            if (mBluetoothManager == null) {
                throw new BleException("Bluetooth Manager not found");
            }

            bluetoothAdapter = mBluetoothManager.getAdapter();
            if (bluetoothAdapter == null) {
                throw new BleException("Bluetooth Adapter not found");
            }
        } catch (BleException ble) {
            throw  ble;
        } catch (Exception e) {
            throw new BleException("Error initializing Bluetooth adapter", e);
        }
    }

    @Override
    public boolean checkBleHardwareAvailable() {
		// First check general Bluetooth Hardware:
		// get BluetoothManager...
		final BluetoothManager manager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);
		if(manager == null) return false;
		// .. and then get adapter from manager
		final BluetoothAdapter adapter = manager.getAdapter();
		if(adapter == null) return false;
		
		// and then check if BT LE is also available
        return context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE);
	}    

	
	@Override
    public boolean isBtEnabled() {
		final BluetoothManager manager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);
		if(manager == null) return false;
		
		final BluetoothAdapter adapter = manager.getAdapter();
		if(adapter == null) return false;
		
		return adapter.isEnabled();
	}

    /* defines callback for scanning results */
    private BluetoothAdapter.LeScanCallback deviceFoundCallback = new BluetoothAdapter.LeScanCallback() {
        @Override
        public void onLeScan(final BluetoothDevice device, final int rssi, final byte[] scanRecord) {
            LeRemoteDevice43 device43 = new LeRemoteDevice43(LeDevice43.this, device);
            for(LeDeviceListener listener: listeners)
                listener.leDeviceFound(LeDevice43.this, device43, rssi, scanRecord);
        }
    };


    @Override
    public void startScanning() {
        bluetoothAdapter.startLeScan(deviceFoundCallback);
	}

    @Override
    public void startScanning(UUID... uuids) {
        bluetoothAdapter.startLeScan(uuids, deviceFoundCallback);
    }


    @Override
	public void stopScanning() {
		bluetoothAdapter.stopLeScan(deviceFoundCallback);
	}

    private Map<String, LeRemoteDevice43> remoteDevices = new LinkedHashMap<String, LeRemoteDevice43>();

    final BluetoothManager mBluetoothManager;
    final BluetoothAdapter bluetoothAdapter;

    private Handler mTimerHandler = new Handler();

    LeGattStatus toGattStatus(int status) {
        switch(status) {
            case BluetoothGatt.GATT_SUCCESS:
                return LeGattStatus.SUCCESS;
            case BluetoothGatt.GATT_READ_NOT_PERMITTED:
                return LeGattStatus.READ_NOT_PERMITTED;
            case BluetoothGatt.GATT_WRITE_NOT_PERMITTED:
                return LeGattStatus.WRITE_NOT_PERMITTED;
            case BluetoothGatt.GATT_INSUFFICIENT_AUTHENTICATION:
                return LeGattStatus.INSUFFICIENT_AUTHENTICATION;
            case BluetoothGatt.GATT_REQUEST_NOT_SUPPORTED:
                return LeGattStatus.REQUEST_NOT_SUPPORTED;
            case BluetoothGatt.GATT_INSUFFICIENT_ENCRYPTION:
                return LeGattStatus.INSUFFICIENT_ENCRYPTION;
            case BluetoothGatt.GATT_INVALID_OFFSET:
                return LeGattStatus.INVALID_OFFSET;
            case BluetoothGatt.GATT_INVALID_ATTRIBUTE_LENGTH:
                return LeGattStatus.INVALID_ATTRIBUTE_LENGTH;
            case BluetoothGatt.GATT_FAILURE:
            default:
                return LeGattStatus.FAILURE;
        }
    }


}
