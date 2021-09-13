package houtbecke.rs.le;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
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
        for (LeRecord record : records)
            for (int type : types)
                len += record.getType() == type ? 1 : 0;

        LeRecord[] ret = new LeRecord[len];
        int count = 0;
        for (LeRecord record : records)
            for (int type : types)
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

        List<UUID> uuidList = new ArrayList<>();
        for (LeRecord record : uuids16) {
            ByteBuffer buffer = ByteBuffer.wrap(record.getRecordContent()).order(ByteOrder.LITTLE_ENDIAN);

            while (buffer.remaining() >= 2)
                uuidList.add(UUID.fromString(String.format(
                        "%08x-0000-1000-8000-00805f9b34fb", buffer.getShort())));

        }
        for (LeRecord record : uuids128) {
            ByteBuffer buffer = ByteBuffer.wrap(record.getRecordContent()).order(ByteOrder.LITTLE_ENDIAN);
            while (buffer.remaining() >= 16) {
                long lsb = buffer.getLong();
                long msb = buffer.getLong();
                uuidList.add(new UUID(msb, lsb));
            }
        }
        UUID[] uuids = new UUID[uuidList.size()];
        return uuidList.toArray(uuids);
    }

    public boolean hasService(UUID uuid) {
        UUID[] uuids = getServices();
        for (UUID u : uuids) {
            if (u.equals(uuid)) return true;
        }
        return false;
    }

    @Override
    public String getLocalName() {
        LeRecord[] localName = getRecords(9);
        if (localName.length > 0) {
            return new String(localName[0].getRecordContent());
        } else {
            return null;
        }
    }

    @Override
    public byte[] getManufacturerData() {
        LeRecord[] manufacturerData = getRecords(0xFF);
        if (manufacturerData.length > 0) {
            return manufacturerData[0].getRecordContent();
        }
        return null;
    }

    @Override
    public byte[] getRawData() {
        return scanrecord;
    }

    void parse() {
        int recordLength, recordPos = 0;
        while (recordPos < scanrecord.length && ((recordLength = scanrecord[recordPos++] & 0xFF) != 0)) {
            final int type = scanrecord[recordPos++] & 0xFF;
            final byte[] record = Arrays.copyOfRange(scanrecord, recordPos, recordPos + recordLength - 1);
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
            recordPos += recordLength - 1;
        }
    }

    @Override
    public byte[] getServiceData(UUID serviceUUID) {
        LeRecord[] serviceDataRecords = getRecords(0x16);
        for (LeRecord record : serviceDataRecords) {
            if (record.getRecordContent().length < 3) {
                continue;
            }

            byte[] serviceDataId = Arrays.copyOfRange(scanrecord, 0, 2);
            byte[] serviceData = Arrays.copyOfRange(scanrecord, 2, scanrecord.length - 2);
            ByteBuffer serviceDataIdWrapped = ByteBuffer.wrap(serviceDataId);

            UUID foundServiceUUID = UUID.fromString(String.format("%08x-0000-1000-8000-00805f9b34fb", serviceDataIdWrapped.getShort()));

            if (foundServiceUUID.equals(serviceUUID)) {
                return serviceData;
            }

        }

        return null;
    }
}
