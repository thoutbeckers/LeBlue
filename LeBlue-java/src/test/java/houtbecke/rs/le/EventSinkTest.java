package houtbecke.rs.le;


import org.junit.Before;


import houtbecke.rs.le.session.EventSinkFiller;
import houtbecke.rs.le.session.LeEventType;
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

        assertEquals(source.getEvents()[0].type, LeEventType.mockWaitForPoint);
        assertEquals(source.getEvents()[1].type, LeEventType.mockPointReached);

        filler.waitForPoint("done");
        assertEquals(2, source.getEvents().length);

        assertEquals(source.getEvents()[0].type, LeEventType.mockPointReached);
        assertEquals(source.getEvents()[1].type, LeEventType.mockWaitForPoint);

    }



}
