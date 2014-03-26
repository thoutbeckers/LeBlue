package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.util.Log;

import java.util.UUID;

import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

class LeGattService43 implements LeGattService {
    private LeDevice43 leDevice43;
    BluetoothGattService gattService;
    BluetoothGatt gatt;

    LeGattService43(LeDevice43 leDevice43, BluetoothGatt gatt, BluetoothGattService gattService) {
        this.leDevice43 = leDevice43;
        this.gatt = gatt;
        this.gattService = gattService;
    }

    @Override
    public UUID getUuid() {
        return gattService.getUuid();
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        return new LeGattCharacteristic43(gatt, gattService.getCharacteristic(uuid));
    }

    @Override
    public boolean enableCharacteristicNotification(UUID characteristic) {
        Log.i("LeBlue", "enable "+characteristic);
        BluetoothGattCharacteristic characteristic43 = gattService.getCharacteristic(characteristic);
        if(gatt.setCharacteristicNotification(characteristic43, true)) {

            Log.i("LeBlue", "enabling "+characteristic);

            BluetoothGattDescriptor descriptor = characteristic43.getDescriptor(LeDefinedUUIDs.Descriptor.CHAR_CLIENT_CONFIG);
            if (descriptor != null) {
                Log.i("LeBlue", "client config "+characteristic);
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                gatt.writeDescriptor(descriptor);
                // boolean waitForDescriptorWrite(10000)
                return true;
            }
            else {
                gatt.setCharacteristicNotification(characteristic43, false);
            }
        }
    return false;
    }
}
