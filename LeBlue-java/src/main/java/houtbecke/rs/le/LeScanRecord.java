package houtbecke.rs.le;

import java.util.UUID;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public interface LeScanRecord {

    @Nullable
    UUID[] getServices();

    boolean hasService(@Nonnull UUID uuid);

    @Nullable
    String getLocalName();

    @Nullable
    byte[] getManufacturerData();

    @Nullable
    byte[] getServiceData(@Nonnull UUID serviceId);
}
