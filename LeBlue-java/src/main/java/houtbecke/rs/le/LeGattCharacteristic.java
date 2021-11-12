package houtbecke.rs.le;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public interface LeGattCharacteristic {

    @Nullable
    byte[] getValue();

    void setValue(@Nonnull byte[] value);

    int getIntValue(@Nonnull LeFormat format, int index);

    void setValue(@Nonnull byte[] value, boolean withResponse);

    void read();
}

