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

import com.splendo.ble.BleException;
import com.splendo.ble.BleWrapperUiCallbacks;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;

public class LeDevice43 implements LeDevice {
	/* defines (in milliseconds) how often RSSI should be updated */
    private static final int RSSI_UPDATE_TIME_INTERVAL = 1500; // 1.5 seconds

    /* callback object through which we are returning results to the caller */
    //private BleWrapperUiCallbacks mUiCallback = null;
    /* define NULL object for UI callbacks */
    private static final BleWrapperUiCallbacks NULL_CALLBACK = new BleWrapperUiCallbacks.Null();

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

//    public void readPeriodicalyRssiValue(final String device, final boolean repeat) {
//    	mTimerEnabled = repeat;
//    	// check if we should stop checking RSSI value
//    	if(mConnected == false || mBluetoothGatt == null || mTimerEnabled == false) {
//    		mTimerEnabled = false;
//    		return;
//    	}
//
//    	mTimerHandler.postDelayed(new Runnable() {
//			@Override
//			public void run() {
//				if(mBluetoothGatt == null ||
//				   bluetoothAdapter == null ||
//				   mConnected == false)
//				{
//					mTimerEnabled = false;
//					return;
//				}
//
//				// request RSSI value
//				mBluetoothGatt.readRemoteRssi();
//				// add call it once more in the future
//				readPeriodicalyRssiValue(device, mTimerEnabled);
//			}
//    	}, RSSI_UPDATE_TIME_INTERVAL);
//    }
//
//    /* starts monitoring RSSI value */
//    public void startMonitoringRssiValue() {
//    	readPeriodicalyRssiValue(true);
//    }
//
//    /* stops monitoring of RSSI value */
//    public void stopMonitoringRssiValue() {
//    	readPeriodicalyRssiValue(false);
//    }
//
//
//    /* gets services and calls UI callback to handle them
//     * before calling getServices() make sure service discovery is finished! */
//    public void getSupportedServices(String deviceAddress) {
//    	if(mBluetoothGattServices != null && mBluetoothGattServices.size() > 0) mBluetoothGattServices.clear();
//    	if(mBluetoothGatt != null) mBluetoothGattServices = mBluetoothGatt.getServices();
//
//        //mUiCallback.uiAvailableServices(mBluetoothGatt, mBluetoothDevice, mBluetoothGattServices);
//    }
    
    /* get all characteristic for particular service and pass them to the UI callback */
//    public void getCharacteristicsForService(final BluetoothGattService service) {
//    	if(service == null) return;
//    	List<BluetoothGattCharacteristic> chars = null;
//
//    	chars = service.getCharacteristics();
//    	mUiCallback.uiCharacteristicForService(mBluetoothGatt, mBluetoothDevice, service, chars);
//    	// keep reference to the last selected service
//    	mBluetoothSelectedService = service;
//    }
//
//    /* request to fetch newest value stored on the remote device for particular characteristic */
//    public void requestCharacteristicValue(BluetoothGattCharacteristic ch) {
//        if (bluetoothAdapter == null || mBluetoothGatt == null) return;
//
//        mBluetoothGatt.readCharacteristic(ch);
//        // new value available will be notified in Callback Object
//    }
//
//    /* get characteristic's value (and parse it for some types of characteristics)
//     * before calling this You should always update the value by calling requestCharacteristicValue() */
//    public void getCharacteristicValue(BluetoothGattCharacteristic ch) {
//        if (bluetoothAdapter == null || mBluetoothGatt == null || ch == null) return;
//
//        byte[] rawValue = ch.getValue();
//        String strValue = null;
//        int intValue = 0;
//
//        // lets read and do real parsing of some characteristic to get meaningful value from it
//        UUID uuid = ch.getUuid();
//
//        if(uuid.equals(BleDefinedUUIDs.Characteristic.HEART_RATE_MEASUREMENT)) { // heart rate
//        	// follow https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.heart_rate_measurement.xml
//        	// first check format used by the device - it is specified in bit 0 and tells us if we should ask for index 1 (and uint8) or index 2 (and uint16)
//        	int index = ((rawValue[0] & 0x01) == 1) ? 2 : 1;
//        	// also we need to define format
//        	int format = (index == 1) ? BluetoothGattCharacteristic.FORMAT_UINT8 : BluetoothGattCharacteristic.FORMAT_UINT16;
//        	// now we have everything, get the value
//        	intValue = ch.getIntValue(format, index);
//        	strValue = intValue + " bpm"; // it is always in bpm units
//        }
//        else if (uuid.equals(BleDefinedUUIDs.Characteristic.HEART_RATE_MEASUREMENT) || // manufacturer name string
//        		 uuid.equals(BleDefinedUUIDs.Characteristic.MODEL_NUMBER_STRING) || // model number string)
//        		 uuid.equals(BleDefinedUUIDs.Characteristic.FIRMWARE_REVISION_STRING)) // firmware revision string
//        {
//        	// follow https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.manufacturer_name_string.xml etc.
//        	// string value are usually simple utf8s string at index 0
//        	strValue = ch.getStringValue(0);
//        }
//        else if(uuid.equals(BleDefinedUUIDs.Characteristic.APPEARANCE)) { // appearance
//        	// follow: https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.gap.appearance.xml
//        	intValue  = ((int)rawValue[1]) << 8;
//        	intValue += rawValue[0];
//        	strValue = LeNamesResolver.resolveAppearance(intValue);
//        }
//        else if(uuid.equals(BleDefinedUUIDs.Characteristic.BODY_SENSOR_LOCATION)) { // body sensor location
//        	// follow: https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.body_sensor_location.xml
//        	intValue = rawValue[0];
//        	strValue = LeNamesResolver.resolveHeartRateSensorLocation(intValue);
//        }
//        else if(uuid.equals(BleDefinedUUIDs.Characteristic.BATTERY_LEVEL)) { // battery level
//        	// follow: https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.battery_level.xml
//        	intValue = rawValue[0];
//        	strValue = "" + intValue + "% battery level";
//        }
//        else {
//        	// not known type of characteristic, so we need to handle this in "general" way
//        	// get first four bytes and transform it to integer
//        	intValue = 0;
//        	if(rawValue.length > 0) intValue = (int)rawValue[0];
//        	if(rawValue.length > 1) intValue = intValue + ((int)rawValue[1] << 8);
//        	if(rawValue.length > 2) intValue = intValue + ((int)rawValue[2] << 8);
//        	if(rawValue.length > 3) intValue = intValue + ((int)rawValue[3] << 8);
//
//            if (rawValue.length > 0) {
//                final StringBuilder stringBuilder = new StringBuilder(rawValue.length);
//                for(byte byteChar : rawValue) {
//                    stringBuilder.append(String.format("%c", byteChar));
//                }
//                strValue = stringBuilder.toString();
//            }
//        }
//
//        String timestamp = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss.SSS").format(new Date());
//        mUiCallback.uiNewValueForCharacteristic(mBluetoothGatt,
//                                                mBluetoothDevice,
//                                                mBluetoothSelectedService,
//        		                                ch,
//        		                                strValue,
//        		                                intValue,
//        		                                rawValue,
//        		                                timestamp);
//    }
//
//    /* reads and return what what FORMAT is indicated by characteristic's properties
//     * seems that value makes no sense in most cases */
//    public int getValueFormat(BluetoothGattCharacteristic ch) {
//    	int properties = ch.getProperties();
//
//    	if((BluetoothGattCharacteristic.FORMAT_FLOAT & properties) != 0) return BluetoothGattCharacteristic.FORMAT_FLOAT;
//    	if((BluetoothGattCharacteristic.FORMAT_SFLOAT & properties) != 0) return BluetoothGattCharacteristic.FORMAT_SFLOAT;
//    	if((BluetoothGattCharacteristic.FORMAT_SINT16 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_SINT16;
//    	if((BluetoothGattCharacteristic.FORMAT_SINT32 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_SINT32;
//    	if((BluetoothGattCharacteristic.FORMAT_SINT8 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_SINT8;
//    	if((BluetoothGattCharacteristic.FORMAT_UINT16 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_UINT16;
//    	if((BluetoothGattCharacteristic.FORMAT_UINT32 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_UINT32;
//    	if((BluetoothGattCharacteristic.FORMAT_UINT8 & properties) != 0) return BluetoothGattCharacteristic.FORMAT_UINT8;
//
//    	return 0;
//    }
//
//    /* set new value for particular characteristic */
//    public void writeDataToCharacteristic(final BluetoothGattCharacteristic ch, final byte[] dataToWrite) {
//    	if (bluetoothAdapter == null || mBluetoothGatt == null || ch == null) return;
//
//    	// first set it locally....
//    	ch.setValue(dataToWrite);
//    	// ... and then "commit" changes to the peripheral
//    	mBluetoothGatt.writeCharacteristic(ch);
//    }
//
//    /* enables/disables notification for characteristic */
//    public void setNotificationForCharacteristic(BluetoothGattCharacteristic ch, boolean enabled) {
//        if (bluetoothAdapter == null || mBluetoothGatt == null) return;
//
//        boolean success = mBluetoothGatt.setCharacteristicNotification(ch, enabled);
//        if(!success) {
//        	Log.e("------", "Seting proper notification status for characteristic failed!");
//        }
//
//        // This is also sometimes required (e.g. for heart rate monitors) to enable notifications/indications
//        // see: https://developer.bluetooth.org/gatt/descriptors/Pages/DescriptorViewer.aspx?u=org.bluetooth.descriptor.gatt.client_characteristic_configuration.xml
//        BluetoothGattDescriptor descriptor = ch.getDescriptor(UUID.fromString("00002902-0000-1000-8000-00805f9b34fb"));
//        if(descriptor != null) {
//        	byte[] val = enabled ? BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE;
//	        descriptor.setValue(val);
//	        mBluetoothGatt.writeDescriptor(descriptor);
//        }
//    }
//
//
//    /* callbacks called for any action on particular Ble Device */
//    private final BluetoothGattCallback mBleCallback = new BluetoothGattCallback() {
//        @Override
//        public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
//            if (newState == BluetoothProfile.STATE_CONNECTED) {
//            	mConnected = true;
//            	mUiCallback.uiDeviceConnected(mBluetoothGatt, mBluetoothDevice);
//
//            	// now we can start talking with the device, e.g.
//            	mBluetoothGatt.readRemoteRssi();
//            	// response will be delivered to callback object!
//
//            	// in our case we would also like automatically to call for services discovery
//            	startServicesDiscovery();
//
//            	// and we also want to get RSSI value to be updated periodically
//            	startMonitoringRssiValue();
//            }
//            else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
//            	mConnected = false;
//            	mUiCallback.uiDeviceDisconnected(mBluetoothGatt, mBluetoothDevice);
//            }
//        }
//
//        @Override
//        public void onServicesDiscovered(BluetoothGatt gatt, int status) {
//            if (status == BluetoothGatt.GATT_SUCCESS) {
//            	// now, when services discovery is finished, we can call getServices() for Gatt
//            	getSupportedServices();
//            }
//        }
//
//        @Override
//        public void onCharacteristicRead(BluetoothGatt gatt,
//                                         BluetoothGattCharacteristic characteristic,
//                                         int status)
//        {
//        	// we got response regarding our request to fetch characteristic value
//            if (status == BluetoothGatt.GATT_SUCCESS) {
//            	// and it success, so we can get the value
//            	getCharacteristicValue(characteristic);
//            }
//        }
//
//        @Override
//        public void onCharacteristicChanged(BluetoothGatt gatt,
//                                            BluetoothGattCharacteristic characteristic)
//        {
//        	// characteristic's value was updated due to enabled notification, lets get this value
//        	// the value itself will be reported to the UI inside getCharacteristicValue
//        	getCharacteristicValue(characteristic);
//        	// also, notify UI that notification are enabled for particular characteristic
//        	mUiCallback.uiGotNotification(mBluetoothGatt, mBluetoothDevice, mBluetoothSelectedService, characteristic);
//        }
//
//        @Override
//        public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
//        	String deviceName = gatt.getDevice().getName();
//        	String serviceName = LeNamesResolver.resolveServiceName(characteristic.getService().getUuid().toString().toLowerCase(Locale.getDefault()));
//        	String charName = LeNamesResolver.resolveCharacteristicName(characteristic.getUuid().toString().toLowerCase(Locale.getDefault()));
//        	String description = "Device: " + deviceName + " Service: " + serviceName + " Characteristic: " + charName;
//
//        	// we got response regarding our request to write new value to the characteristic
//        	// let see if it failed or not
//        	if(status == BluetoothGatt.GATT_SUCCESS) {
//        		 mUiCallback.uiSuccessfulWrite(mBluetoothGatt, mBluetoothDevice, mBluetoothSelectedService, characteristic, description);
//        	}
//        	else {
//        		 mUiCallback.uiFailedWrite(mBluetoothGatt, mBluetoothDevice, mBluetoothSelectedService, characteristic, description + " STATUS = " + status);
//        	}
//        };
//
//        @Override
//        public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
//        	if(status == BluetoothGatt.GATT_SUCCESS) {
//        		// we got new value of RSSI of the connection, pass it to the UI
//        		 mUiCallback.uiNewRssiAvailable(mBluetoothGatt, mBluetoothDevice, rssi);
//        	}
//        };
//    };
    
    private Map<String, LeRemoteDevice43> remoteDevices = new LinkedHashMap<String, LeRemoteDevice43>();

    final BluetoothManager mBluetoothManager;
    final BluetoothAdapter bluetoothAdapter;

    private Handler mTimerHandler = new Handler();

//    private Map<String, Boolean> timerEnabled = new HashMap<String, Boolean>();
//
//    boolean exists(LeRemoteDevice device) {
//        return remoteDevices.keySet().contains(device.getAddress());
//    }
//
//    boolean gattExists(LeRemoteDevice device) {
//        return exists(device) && remoteDevices.get(device).gatt != null;
//    }

//    boolean exists(String deviceAddress) {
//       return remoteDevices.keySet().contains(deviceAddress);
//    }

//    LeRemoteDevice43 device(LeRemoteDevice device) {
//        if (device instanceof LeRemoteDevice43)
//            return (LeRemoteDevice43) device;
//      return remoteDevices.get(device.getAddress());
//
//    }
//
//    BluetoothGatt gatt(LeRemoteDevice device) {
//        return device(device).gatt;
//    }


//    LeRemoteDevice43 device(String deviceAddress) {
//        return remoteDevices.get(deviceAddress);
//    }

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
