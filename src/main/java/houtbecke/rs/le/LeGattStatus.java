package houtbecke.rs.le;

import java.util.HashMap;
import java.util.Map;

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

    public static LeGattStatus fromString(String status) {

        for (LeGattStatus leGattStatus: LeGattStatus.values())
            if (leGattStatus.toString().equals(status))
                return leGattStatus;
        return null;
    }
}
