package houtbecke.rs.le.session;

public interface MockedResponse {
    String[] getMockedResultValues();

    Event getNextMockedEvent();

    boolean isSelfDestroying();

    boolean isForArguments(String[] values);
}
