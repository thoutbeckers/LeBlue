package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGattCharacteristic;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

class LeGattCharacteristic43 implements LeGattCharacteristic {
    BluetoothGattCharacteristic characteristic;

    LeGattCharacteristic43(BluetoothGattCharacteristic characteristic) {
        this.characteristic = characteristic;
    }

    @Override
    public byte[] getValue() {
        return characteristic.getValue();
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        return characteristic.getIntValue(format.format(), index);
    }
}
