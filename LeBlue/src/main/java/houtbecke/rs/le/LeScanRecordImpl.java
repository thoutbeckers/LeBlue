package houtbecke.rs.le;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.UUID;

public class LeScanRecordImpl implements LeScanRecord {

    final byte[] scanrecord;
    final Collection<LeRecord> records = new ArrayList<>();
    public LeScanRecordImpl(byte[] scanrecord) {
        this.scanrecord = scanrecord;
        parse();
    }

    @Override
    public LeRecord[] getRecords() {
        LeRecord[] ret = new LeRecord[records.size()];
        return records.toArray(ret);
    }

    @Override
    public LeRecord[] getRecords(int... types) {
        int len = 0;
        for (LeRecord record: records)
            for (int type: types)
                len+= record.getType() == type ? 1 : 0;

        LeRecord[] ret = new LeRecord[len];
        int count = 0;
        for (LeRecord record: records)
            for (int type: types)
            if (record.getType() == type) {
                ret[count] = record;
                count++;
            }
        return ret;
    }

    @Override
    public UUID[] getServices() {
        LeRecord[] uuids16 = getRecords(2, 3);
        LeRecord[] uuids128 = getRecords(6, 7);

        UUID[] uuids = new UUID[uuids16.length + uuids128.length];
        for (int k = 0; k < uuids.length; k++) {
            if (k < uuids16.length) {
                ByteBuffer buffer = ByteBuffer.wrap(uuids16[k].getRecordContent()).order(ByteOrder.LITTLE_ENDIAN);

                while (buffer.remaining() >= 2 ) {
                    uuids[k] = UUID.fromString(String.format(
                            "%08x-0000-1000-8000-00805f9b34fb", buffer.getShort()));
                }
                break;
            }
            else {
                ByteBuffer buffer = ByteBuffer.wrap(uuids128[k - uuids16.length].getRecordContent()).order(ByteOrder.LITTLE_ENDIAN);
                while (buffer.remaining() >= 16) {
                    long lsb = buffer.getLong();
                    long msb = buffer.getLong();
                    uuids[k + uuids16.length] = new UUID(msb, lsb);
                }
            }
        }
        return uuids;
    }

    @Override
    public byte[] getRawData() {
        return scanrecord;
    }

    void parse() {
        int recordLength, recordPos = 0;
        while (recordPos < scanrecord.length && ((recordLength = scanrecord[recordPos++] & 0xFF) != 0)) {
            final int type = scanrecord[recordPos++]  & 0xFF;
            final byte[] record = Arrays.copyOfRange(scanrecord, recordPos, recordPos + recordLength);
            if (type != 0) {
                records.add(new LeRecord() {
                    @Override
                    public int getType() {
                        return type;
                    }

                    @Override
                    public byte[] getRecordContent() {
                        return record;
                    }
                });
            }
            recordPos += recordLength -1;
        }
    }

}
