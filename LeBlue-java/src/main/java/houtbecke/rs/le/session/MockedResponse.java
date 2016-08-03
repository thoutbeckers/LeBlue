package houtbecke.rs.le.session;

public interface MockedResponse {
    String[] getMockedResultValues();

    Event[] getNextMockedEvents();

    boolean isSelfDestroying();

    boolean isForArguments(String[] values);
}
