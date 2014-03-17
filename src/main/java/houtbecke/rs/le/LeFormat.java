package houtbecke.rs.le;

public enum LeFormat {

    FORMAT_UINT8(0x11),
    FORMAT_UINT16(0x12),
    FORMAT_UINT32(0x14),
    FORMAT_SINT8(0x21),
    FORMAT_SINT16(0x22),
    FORMAT_SINT32(0x24),
    FORMAT_SFLOAT(0x32),
    FORMAT_FLOAT(0x34);

    private int format;
    public int format() {
        return format;
    }

    LeFormat(int value) {
        format = value;
    }

    public static LeFormat fromString(String status) {

        for (LeFormat leFormat: LeFormat.values())
            if (leFormat.toString().equals(status))
                return leFormat;
        return null;
    }

}
