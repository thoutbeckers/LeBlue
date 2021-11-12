package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

class LeGattCharacteristic43 implements LeGattCharacteristic {
    final BluetoothGattCharacteristic characteristic;
    final BluetoothGatt gatt;
    final LeRemoteDevice43 leRemoteDevice43;



    LeGattCharacteristic43(BluetoothGatt gatt,BluetoothGattCharacteristic characteristic, LeRemoteDevice43 leRemoteDevice43) {
        this.characteristic = characteristic;
        this.gatt = gatt;
        this.leRemoteDevice43 = leRemoteDevice43;
    }


    @Override
    public void read() {
        if ((characteristic.getProperties() & BluetoothGattCharacteristic.PROPERTY_READ ) !=0) {
            leRemoteDevice43.addToQueue(characteristic);
        }
    }


    @Override
    public byte[] getValue() {
        return characteristic.getValue();
    }

    @Override
    public int getIntValue(@javax.annotation.Nonnull LeFormat format, int index) {
        return characteristic.getIntValue(format.format(), index);
    }

    @Override
    public void setValue(@javax.annotation.Nonnull byte[] value) {
        setValue(value, true);
    }

    @Override
    public void setValue(@javax.annotation.Nonnull byte[] value, boolean withResponse) {

        leRemoteDevice43.addToQueue(this, value, withResponse);
    }


    protected void setValueNow(byte[] value,boolean withResponse) {

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
