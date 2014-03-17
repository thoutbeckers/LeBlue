package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;

public class InterceptingLeGattCharacteristic extends BaseIntercepting implements LeGattCharacteristic {

    final public LeGattCharacteristic leGattCharacteristic;

    public InterceptingLeGattCharacteristic(LeGattCharacteristic leGattCharacteristic, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leGattCharacteristic = leGattCharacteristic;
    }

    @Override
    public byte[] getValue() {
        byte[] value = leGattCharacteristic.getValue();
        leInterceptor.gotValue(this, value);
        return value;
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        int value = leGattCharacteristic.getIntValue(format, index);
        leInterceptor.gotIntValue(this, format, value);
        return value;
    }
}
