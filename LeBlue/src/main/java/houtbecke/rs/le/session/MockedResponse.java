package houtbecke.rs.le.session;

public class MockedResponse {

    final public String[] mockedResultValues;

    final public Event nextMockedEvent;

    public MockedResponse(Event nextMockedEvent) {
        this(nextMockedEvent, null);
    }

    public MockedResponse(String[] mockedResultValues) {
        this (null, mockedResultValues);
    }

    public MockedResponse(Event nextMockedEvent, String[] mockedResultValues) {
        this.mockedResultValues = mockedResultValues == null ? new String[] {} : mockedResultValues;
        this.nextMockedEvent = nextMockedEvent;
    }
}
