package houtbecke.rs.le.session;

public interface EventSink {
    void addEvent(Event event);
    Event[] getEvents();

}
