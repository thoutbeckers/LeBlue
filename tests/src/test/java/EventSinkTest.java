import org.junit.Before;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeDeviceState;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeGattService;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDevice;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.LeScanRecord;
import houtbecke.rs.le.mock.LeDeviceMock;
import houtbecke.rs.le.mock.LeSessionController;
import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.EventType;
import houtbecke.rs.le.session.ListEventSinkSource;
import houtbecke.rs.le.session.SessionObject;

import static org.junit.Assert.assertEquals;

public class EventSinkTest {
    @Before
    public void setUp() throws Exception {
        System.setProperty("doNotLog", "true");
    }



    @org.junit.Test
    public void testLimit() throws InterruptedException {
        ListEventSinkSource source = new ListEventSinkSource(2);
        EventSinkFiller filler = new EventSinkFiller(source);
        filler.waitForPoint("ready");
        assertEquals(1, source.getEvents().length);

        filler.pointReached("secondDevice");
        assertEquals(2, source.getEvents().length);

        assertEquals(source.getEvents()[0].type, EventType.mockWaitForPoint);
        assertEquals(source.getEvents()[1].type, EventType.mockPointReached);

        filler.waitForPoint("done");
        assertEquals(2, source.getEvents().length);

        assertEquals(source.getEvents()[0].type, EventType.mockPointReached);
        assertEquals(source.getEvents()[1].type, EventType.mockWaitForPoint);

    }



}
