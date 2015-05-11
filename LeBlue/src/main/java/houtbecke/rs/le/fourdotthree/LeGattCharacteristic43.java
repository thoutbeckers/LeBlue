package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

class LeGattCharacteristic43 implements LeGattCharacteristic {
    final BluetoothGattCharacteristic characteristic;
    final BluetoothGatt gatt;

    LeGattCharacteristic43(BluetoothGatt gatt,BluetoothGattCharacteristic characteristic) {
        this.characteristic = characteristic;
        this.gatt = gatt;
    }


    @Override
    public void read() {
         gatt.readCharacteristic(characteristic);
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
        setValue(value,true);
    }

    @Override
    public void setValue(byte[] value,boolean withResponse) {
        if (withResponse)
            characteristic.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
        else
            characteristic.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
        characteristic.setValue(value);
        gatt.writeCharacteristic(characteristic);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || !(o instanceof LeGattCharacteristic43)) return false;

        return ((LeGattCharacteristic43) o).characteristic.getUuid().equals(characteristic.getUuid());
    }
}
