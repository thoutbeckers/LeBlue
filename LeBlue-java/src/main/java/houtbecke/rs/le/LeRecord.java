package houtbecke.rs.le;

import javax.annotation.Nullable;

public interface LeRecord {

    int getType();

    @Nullable
    byte[] getRecordContent();
}
