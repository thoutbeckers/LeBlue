package houtbecke.rs.le.session;

public interface EventSource {
    Event nextEvent();
    boolean hasMoreEvent();
    void reset();
}
