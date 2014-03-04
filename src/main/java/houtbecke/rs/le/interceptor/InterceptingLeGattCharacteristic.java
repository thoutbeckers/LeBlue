package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

public class InterceptingLeGattCharacteristic implements LeGattCharacteristic {

    final public LeGattCharacteristic leGattCharacteristic;
    final LeInterceptor leInterceptor;
    final public int id;

    public InterceptingLeGattCharacteristic(LeGattCharacteristic leGattCharacteristic, LeInterceptor leInterceptor) {
        this.leGattCharacteristic = leGattCharacteristic;
        this.leInterceptor = leInterceptor;
        id = ++leInterceptor.counter;
    }

    @Override
    public byte[] getValue() {
        byte[] value = leGattCharacteristic.getValue();
        leInterceptor.gotCharacteristicValue(this, value);
        return value;
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        int value = leGattCharacteristic.getIntValue(format, index);
        leInterceptor.gotCharacteristicIntValue(this, format, value);
        return value;
    }
}
