package houtbecke.rs.le;


import org.junit.Before;


import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.EventType;
import houtbecke.rs.le.session.ListEventSinkSource;

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
