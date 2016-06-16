package houtbecke.rs.le.session;

import java.util.Arrays;

public class MockedResponseObject implements MockedResponse {

    final private String[] mockedResultValues;

    private Event[] nextMockedEvents;

    @Override
    public String[] getMockedResultValues() {
        //      TODO: allow lazy getting of results
        //        String[] ret = new String[mockedResultValues.length];
        //        for (int k = 0; k < mockedResultValues.length; k++)
        //            ret[k] = mockedResultValues[k].toString();
        //        return ret;

        return mockedResultValues;
    }

    public void addEvents(Event... events) {
        Event[] newEvents = new Event[events.length + nextMockedEvents.length];
        System.arraycopy(nextMockedEvents, 0, newEvents, 0, nextMockedEvents.length);
        System.arraycopy(events, 0, newEvents, nextMockedEvents.length, events.length);
        nextMockedEvents = newEvents;
    }

    @Override
    public Event[] getNextMockedEvents() {
        return nextMockedEvents;
    }

    int pos = -1;
    String value = null;

    public void forArguments(String argument, int pos) {
        this.pos = pos;
        this.value = argument;
    }

    boolean selfDestroying = false;
    @Override
    public boolean isSelfDestroying() {
        return selfDestroying;
    }

    public void destroyAfterUse() {
        selfDestroying = true;
    }

    @Override
    public boolean isForArguments(String[] values) {
        if (pos == -1)
            return true;
        if (pos >= values.length)
            return false;

        if (value == null)
            return values[pos] == null;

        return value.equals(values[pos]);
    }

    public MockedResponseObject(Event nextMockedEvent) {
        this(new Event[] {nextMockedEvent}, null);
    }

    public MockedResponseObject(String... mockedResultValues) {
        this(new Event[]{}, mockedResultValues);
    }

    public MockedResponseObject(Event nextMockedEvent, String[] mockedResultValues) {
        this(new Event[]{nextMockedEvent}, mockedResultValues);
    }

    public MockedResponseObject(Event... nextMockedEvents) {
        this(nextMockedEvents, new String[] {});
    }

    public MockedResponseObject(Event nextMockedEvents[], String[] mockedResultValues) {
        this.mockedResultValues = mockedResultValues == null ? new String[] {} : mockedResultValues;
        this.nextMockedEvents = nextMockedEvents;
    }
}
