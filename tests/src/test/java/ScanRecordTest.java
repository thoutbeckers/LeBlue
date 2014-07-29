import java.util.UUID;

import houtbecke.rs.le.LeDefinedUUIDs;
import houtbecke.rs.le.LeScanRecord;
import houtbecke.rs.le.LeUtil;

public class ScanRecordTest {
    @org.junit.Test
    public void testScanRecord() {

        byte[] scanrecord = LeUtil.stringToBytes("2,1,6,3,2,13,24,15,9,87,97,104,111,111,32,72,82,77,32,118,50,46,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");

        LeScanRecord leScanRecord = LeUtil.parseLeScanRecord(scanrecord);

        assert contains(leScanRecord.getServices(), LeDefinedUUIDs.Service.HEART_RATE);

        scanrecord = LeUtil.stringToBytes("15,9,84,97,99,120,32,65,78,84,32,66,114,97,107,101,2,1,5,17,7,95,103,98,80,-83,-122,17,-30,-98,-106,8,12,5,-92,-102,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");
        leScanRecord = LeUtil.parseLeScanRecord(scanrecord);
        assert contains(leScanRecord.getServices(), UUID.fromString("669aa405-0c08-969e-e211-86ad5062675f"));

        scanrecord = LeUtil.stringToBytes("13,9,84,97,99,120,32,66,117,115,104,105,100,111,2,1,6,5,3,24,24,22,24,17,7,95,103,98,80,-83,-122,17,-30,-98,-106,8,12,5,-92,-102,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");
        leScanRecord = LeUtil.parseLeScanRecord(scanrecord);
        assert contains(leScanRecord.getServices(), UUID.fromString("669aa405-0c08-969e-e211-86ad5062675f"));

        leScanRecord = LeUtil.parseLeScanRecord(new byte[0]);
        assert leScanRecord.getServices().length == 0;

    }

    public boolean contains( UUID[] uuids,UUID uuid ){
        for(UUID u :uuids){
            if (u.equals(uuid)) return true;
        }
        return false;
    }

}
