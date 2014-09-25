package houtbecke.rs.le.fourdotthree;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;

import java.util.UUID;

import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;

class LeGattService43 implements LeGattService {
    final LeDevice43 leDevice43;
    final LeRemoteDevice43 leRemoteDevice43;
    final BluetoothGattService gattService;

    LeGattService43(LeDevice43 leDevice43, LeRemoteDevice43 leRemoteDevice43, BluetoothGattService gattService) {
        this.leDevice43 = leDevice43;
        this.gattService = gattService;
        this.leRemoteDevice43 = leRemoteDevice43;
    }

    @Override
    public UUID getUuid() {
        return gattService.getUuid();
    }

    @Override
    public LeGattCharacteristic getCharacteristic(UUID uuid) {
        BluetoothGattCharacteristic characteristic = gattService.getCharacteristic(uuid);
        if (characteristic == null || leRemoteDevice43.gatt == null)
            return null;
        return new LeGattCharacteristic43(leRemoteDevice43.gatt, characteristic);
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || !(o instanceof LeGattService43)) return false;

        LeGattService43 that = (LeGattService43) o;
        UUID thatUuid =  that.getUuid();
        UUID ourUuid = getUuid();
        return ourUuid.equals(thatUuid) && leRemoteDevice43.equals(that.leRemoteDevice43);
    }

    @Override
    public int hashCode() {
        int result = leRemoteDevice43.hashCode();
        result = 31 * result + getUuid().hashCode();
        return result;
    }
}
