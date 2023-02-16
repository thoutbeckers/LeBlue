package houtbecke.rs.le;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public enum LeGattStatus {
    SUCCESS,
    READ_NOT_PERMITTED,
    WRITE_NOT_PERMITTED,
    INSUFFICIENT_AUTHENTICATION,
    REQUEST_NOT_SUPPORTED,
    INSUFFICIENT_ENCRYPTION,
    INVALID_OFFSET,
    INVALID_ATTRIBUTE_LENGTH,
    FAILURE;

    @Nullable
    public static LeGattStatus fromString(@Nonnull String status) {

        for (LeGattStatus leGattStatus : LeGattStatus.values()) { if (leGattStatus.toString().equals(status)) { return leGattStatus; } }
        return null;
    }
}
