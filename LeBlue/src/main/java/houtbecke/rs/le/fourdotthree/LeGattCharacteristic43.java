package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

class LeGattCharacteristic43 implements LeGattCharacteristic {
    BluetoothGattCharacteristic characteristic;
    BluetoothGatt gatt;

    LeGattCharacteristic43(BluetoothGatt gatt,BluetoothGattCharacteristic characteristic) {
        this.characteristic = characteristic;
        this.gatt = gatt;
    }

    @Override
    public byte[] getValue() {
        return characteristic.getValue();
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        return characteristic.getIntValue(format.format(), index);
    }

    @Override
    public void setValue(byte[] value) {
        characteristic.setValue(value);
        gatt.writeCharacteristic(characteristic);
    }
}
