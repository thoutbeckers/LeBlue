package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeCharacteristicListener;
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

    @Override
    public void read() {
        synchronized(leInterceptor) {
            leGattCharacteristic.read();
            leInterceptor.read(this);
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeGattCharacteristic)
           o = ((InterceptingLeGattCharacteristic) o).leGattCharacteristic;

        return o instanceof LeCharacteristicListener && o.equals(leGattCharacteristic);
    }

    @Override
    public int hashCode() {
        return leGattCharacteristic.hashCode();
    }
}
