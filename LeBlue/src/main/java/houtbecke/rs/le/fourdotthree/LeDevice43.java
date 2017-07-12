package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.ParcelUuid;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import javax.inject.Inject;

import houtbecke.rs.le.BleException;
import houtbecke.rs.le.ErrorLogger;
import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeUtil;
import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;

import static no.nordicsemi.android.support.v18.scanner.ScanSettings.CALLBACK_TYPE_MATCH_LOST;

public class LeDevice43 implements LeDevice {

    final Context context;


    public void setErrorLogger(ErrorLogger errorLogger) {
        if (errorLogger!=null)
            this.errorLogger = errorLogger;
    }

    protected void log(int priority, String tag, String msg){
        if (errorLogger!=null){
            errorLogger.log(priority,tag,msg);
        }else{
            Log.println(priority,tag,msg);
        }
    }

    protected void logException(Exception e){
        if (errorLogger!=null){
            errorLogger.logException(e);
        }else{
            if (e!=null)
                e.printStackTrace();
        }
    }


    ErrorLogger errorLogger;

    Collection<LeDeviceListener> listeners = new HashSet<>();
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
            IntentFilter filter = new IntentFilter(BluetoothAdapter.ACTION_STATE_CHANGED);
            context.registerReceiver(receiver, filter);

        } catch (BleException ble) {
            throw  ble;
        } catch (Exception e) {
            throw new BleException("Error initializing Bluetooth adapter", e);
        }
    }

    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();

            if (action.equals(BluetoothAdapter.ACTION_STATE_CHANGED)) {
                final int state = intent.getIntExtra(BluetoothAdapter.EXTRA_STATE,
                        BluetoothAdapter.ERROR);
                LeDeviceState deviceState;
                switch (state){
                    case BluetoothAdapter.STATE_OFF:
                        deviceState = LeDeviceState.OFF;
                        break;
                    case BluetoothAdapter.STATE_ON:
                        deviceState = LeDeviceState.ON;
                        break;
                    default:
                        return;
                }

                for(LeDeviceListener listener: listeners)
                    listener.leDeviceState(LeDevice43.this,deviceState);
            }
        }
    };


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
            log(Log.INFO,"LeBlue", "scan record: " + LeUtil.bytesToString(scanRecord));
            for(LeDeviceListener listener: listeners)
                listener.leDeviceFound(LeDevice43.this, device43, rssi, LeUtil.parseLeScanRecord(scanRecord));
        }
    };


    /* defines callback for scanning results */
    private ScanCallback scanCallback = new ScanCallback() {
        public void onBatchScanResults(List<ScanResult> results){
            for (ScanResult result :results){
                sendScanResult(result);

            }
        }
        public void	onScanFailed(int errorCode){
            log(Log.ERROR,"LeBlue", "scan record: " + "onScanFailed: " + errorCode);
        }
        public void	onScanResult(int callbackType, ScanResult result){
            if (callbackType==CALLBACK_TYPE_MATCH_LOST) return;
                sendScanResult(result);
            }

        void sendScanResult( ScanResult result){
            LeRemoteDevice43 device43 = new LeRemoteDevice43(LeDevice43.this, result.getDevice());
            for(LeDeviceListener listener: listeners)
                listener.leDeviceFound(LeDevice43.this, device43, result.getRssi(), LeUtil.parseLeScanRecord(result.getScanRecord().getBytes()));


        }



    };



    @Override
    public void startScanning() {
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        scanner.startScan(scanCallback);
    }

    @Override
    public void startScanning(UUID... uuids) {
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        ScanSettings settings = new ScanSettings.Builder()
                .setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY).setNumOfMatches(ScanSettings.MATCH_NUM_MAX_ADVERTISEMENT)
                .setUseHardwareBatchingIfSupported(false).build();
        List<ScanFilter> filters = new ArrayList<>();
        ScanFilter.Builder builder = new ScanFilter.Builder();
        for (UUID uuid : uuids ){
            builder  = builder.setServiceUuid(new ParcelUuid(uuid));

        }
        filters.add(new ScanFilter.Builder().build());
        scanner.startScan(filters, settings, scanCallback);
    }

    @Override
    public void startScanning(List<List<UUID>> filters) {
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        ScanSettings settings = new ScanSettings.Builder()
                .setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY).setNumOfMatches(ScanSettings.MATCH_NUM_MAX_ADVERTISEMENT)
                .setUseHardwareBatchingIfSupported(false).build();
        List<ScanFilter> scanFilters = new ArrayList<>();
        for (List<UUID> filter : filters){
            ScanFilter.Builder builder = new ScanFilter.Builder();
            for (UUID uuid : filter ){
                builder  = builder.setServiceUuid(new ParcelUuid(uuid));

            }
            scanFilters.add(new ScanFilter.Builder().build());

        }
        scanner.startScan(scanFilters, settings, scanCallback);
    }




    @Override
	public void stopScanning() {
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        scanner.stopScan(scanCallback);
	}


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || !(o instanceof LeDevice43)) return false;
        LeDevice43 that = (LeDevice43) o;
        return that.bluetoothAdapter.getAddress().equals(bluetoothAdapter.getAddress());

    }

    @Override
    public int hashCode() {
        return bluetoothAdapter.getAddress().hashCode();
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