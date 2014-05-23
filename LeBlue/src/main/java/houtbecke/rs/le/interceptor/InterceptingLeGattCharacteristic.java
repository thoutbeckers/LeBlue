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
        synchronized(leInterceptor) {
            byte[] value = leGattCharacteristic.getValue();
            leInterceptor.gotValue(this, value);
            return value;
        }
    }

    @Override
    public int getIntValue(LeFormat format, int index) {
        synchronized(leInterceptor) {
            int value = leGattCharacteristic.getIntValue(format, index);
            leInterceptor.gotIntValue(this, format, value);
            return value;
        }
    }

    @Override
    public void setValue(byte[] value) {
        synchronized(leInterceptor) {
            leGattCharacteristic.setValue(value);
            leInterceptor.setValue(this, value);
        }
    }
}
