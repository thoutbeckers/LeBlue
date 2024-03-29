package houtbecke.rs.le.fourdotthree;

import static android.content.pm.PackageManager.PERMISSION_GRANTED;
import static no.nordicsemi.android.support.v18.scanner.ScanSettings.CALLBACK_TYPE_MATCH_LOST;

import android.Manifest;
import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelUuid;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import javax.inject.Inject;

import houtbecke.rs.le.BleException;
import houtbecke.rs.le.ErrorLogger;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeUtil;
import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;

public class LeDevice43 implements LeDevice {

    private interface L {
        void l(LeDeviceListener l);
    }

    final Context context;
    final BluetoothManager mBluetoothManager;
    final BluetoothAdapter bluetoothAdapter;
    private final ReadWriteLock listenerReadWriteLock = new ReentrantReadWriteLock();
    private final Handler mTimerHandler = new Handler();
    protected Map<String, LeRemoteDevice43> remoteDevices = new LinkedHashMap<String, LeRemoteDevice43>();
    ErrorLogger errorLogger;
    Collection<LeDeviceListener> listeners = new HashSet<>();
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();
            BluetoothDevice device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);

            if (action.equals(BluetoothAdapter.ACTION_STATE_CHANGED)) {
                final int state = intent.getIntExtra(BluetoothAdapter.EXTRA_STATE,
                        BluetoothAdapter.ERROR);
                LeDeviceState deviceState;
                switch (state) {
                    case BluetoothAdapter.STATE_OFF:
                        deviceState = LeDeviceState.OFF;
                        break;
                    case BluetoothAdapter.STATE_ON:
                        deviceState = LeDeviceState.ON;
                        break;
                    default:
                        return;
                }

                final LeDeviceState finalLeDeviceState = deviceState;
                listeners(
                        l -> l.leDeviceState(LeDevice43.this, finalLeDeviceState));

            } else if (BluetoothDevice.ACTION_ACL_CONNECTED.equals(action)) {
            } else if (BluetoothDevice.ACTION_ACL_DISCONNECTED.equals(action)) {

                final LeRemoteDevice43 remoteDevice43 = remoteDevices.remove(device.getAddress());
                if (remoteDevice43 != null) {remoteDevice43.notifyDisconnected();}
            }
        }
    };
    /* defines callback for scanning results */
    private final BluetoothAdapter.LeScanCallback deviceFoundCallback = new BluetoothAdapter.LeScanCallback() {
        @Override
        public void onLeScan(final BluetoothDevice device, final int rssi, final byte[] scanRecord) {
            final LeRemoteDevice43 device43 = new LeRemoteDevice43(LeDevice43.this, device);

            listeners(
                    l -> l.leDeviceFound(LeDevice43.this, device43, rssi, LeUtil.parseLeScanRecord(scanRecord)));

        }
    };
    /* defines callback for scanning results */
    private final ScanCallback scanCallback = new ScanCallback() {
        public void onBatchScanResults(List<ScanResult> results) {
            for (ScanResult result : results) {
                sendScanResult(result);

            }
        }

        public void onScanFailed(int errorCode) {
            log(Log.ERROR, "LeBlue", "scan record: " + "onScanFailed: " + errorCode);
        }

        public void onScanResult(int callbackType, ScanResult result) {
            if (callbackType == CALLBACK_TYPE_MATCH_LOST) {return;}
            sendScanResult(result);
        }

        void sendScanResult(final ScanResult result) {
            final LeRemoteDevice43 device43 = new LeRemoteDevice43(LeDevice43.this, result.getDevice());
            listeners(
                    l -> l.leDeviceFound(LeDevice43.this, device43, result.getRssi(), LeUtil.parseLeScanRecord(result.getScanRecord().getBytes())));

        }

    };

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
            IntentFilter filter = new IntentFilter();
            filter.addAction(BluetoothAdapter.ACTION_STATE_CHANGED);
            filter.addAction(BluetoothDevice.ACTION_ACL_CONNECTED);
            filter.addAction(BluetoothDevice.ACTION_ACL_DISCONNECTED);
            context.registerReceiver(receiver, filter);

        } catch (BleException ble) {
            throw ble;
        } catch (Exception e) {
            throw new BleException("Error initializing Bluetooth adapter", e);
        }
    }

    public void setErrorLogger(@NonNull ErrorLogger errorLogger) {
        if (errorLogger != null) {this.errorLogger = errorLogger;}
    }

    protected void log(int priority, String tag, String msg) {
        if (errorLogger != null) {
            errorLogger.log(priority, tag, msg);
        } else {
            Log.println(priority, tag, msg);
        }
    }

    protected void logException(Exception e) {
        if (errorLogger != null) {
            errorLogger.logException(e);
        } else {
            if (e != null) {e.printStackTrace();}
        }
    }

    @Override
    public void addListener(@javax.annotation.Nonnull LeDeviceListener listener) {
        listenerReadWriteLock.writeLock().lock();
        try {
            listeners.add(listener);
        } finally {
            listenerReadWriteLock.writeLock().unlock();
        }
    }

    @Override
    public void removeListener(@javax.annotation.Nonnull LeDeviceListener listener) {
        listenerReadWriteLock.writeLock().lock();
        try {
            listeners.remove(listener);
        } finally {
            listenerReadWriteLock.writeLock().unlock();
        }
    }

    @Override
    public boolean checkBleHardwareAvailable() {
        // First check general Bluetooth Hardware:
        // get BluetoothManager...
        final BluetoothManager manager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);
        if (manager == null) {return false;}
        // .. and then get adapter from manager
        final BluetoothAdapter adapter = manager.getAdapter();
        if (adapter == null) {return false;}

        // and then check if BT LE is also available
        return context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE);
    }

    @Override
    public boolean isBtEnabled() {
        if (!hasPermission()) {
            return false;
        }

        final BluetoothManager manager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);
        if (manager == null) {return false;}

        final BluetoothAdapter adapter = manager.getAdapter();
        if (adapter == null) {return false;}

        return adapter.isEnabled();
    }

    @Override
    public void startScanning() {
        if (!hasPermission()) {return;}
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        scanner.startScan(scanCallback);
    }

    @Override
    public void startScanning(@javax.annotation.Nonnull final UUID... uuids) {
        if (!hasPermission()) {
            return;
        }

        final BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        final List<ScanFilter> scanFilters = new ArrayList<>();
        for (UUID uuid : uuids) {
            scanFilters.add(new ScanFilter.Builder().setServiceUuid(new ParcelUuid(uuid)).build());
        }
        startScanning(scanner, scanFilters);
    }

    @Override
    public void startScanning(@javax.annotation.Nonnull final List<List<UUID>> filters) {
        if (!hasPermission()) {
            return;
        }

        final BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        final List<ScanFilter> scanFilters = new ArrayList<>();
        for (List<UUID> filter : filters) {
            for (UUID uuid : filter) {
                scanFilters.add(new ScanFilter.Builder().setServiceUuid(new ParcelUuid(uuid)).build());
            }
        }
        startScanning(scanner, scanFilters);
    }

    @Override
    public void stopScanning() {
        if (!hasPermission()) {return;}
        BluetoothLeScannerCompat scanner = BluetoothLeScannerCompat.getScanner();
        scanner.stopScan(scanCallback);
    }

    LeGattStatus toGattStatus(int status) {
        switch (status) {
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

    @SuppressLint("MissingPermission")
    public void disable() {
        bluetoothAdapter.disable();
    }

    @SuppressLint("MissingPermission")
    public void enable() {
        bluetoothAdapter.enable();
    }

    private void listeners(L l) {
        listenerReadWriteLock.readLock().lock();
        try {
            for (LeDeviceListener listener : listeners)
                l.l(listener);
        } finally {
            listenerReadWriteLock.readLock().unlock();
        }
    }

    private void startScanning(final BluetoothLeScannerCompat scanner, final List<ScanFilter> scanFilters) {
        final ScanSettings settings = new ScanSettings.Builder()
                .setScanMode(ScanSettings.SCAN_MODE_BALANCED)
                .setNumOfMatches(ScanSettings.MATCH_NUM_MAX_ADVERTISEMENT)
                .setUseHardwareBatchingIfSupported(false)
                .setUseHardwareFilteringIfSupported(false)//scanning with filters is unreliable on some older samsung phones
                .build();
        scanner.startScan(scanFilters, settings, scanCallback);
    }

    private boolean hasPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            return ContextCompat.checkSelfPermission(context,
                    Manifest.permission.BLUETOOTH_CONNECT) == PERMISSION_GRANTED;
        } else {
            boolean bluetooth_admin = ContextCompat.checkSelfPermission(context,
                    Manifest.permission.BLUETOOTH_ADMIN) == PERMISSION_GRANTED;
            boolean fine = ContextCompat.checkSelfPermission(context,
                    Manifest.permission.ACCESS_FINE_LOCATION) == PERMISSION_GRANTED;
            return bluetooth_admin && fine;
        }
    }
}
