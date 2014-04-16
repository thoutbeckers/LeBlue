package houtbecke.rs.le.session;

import java.util.LinkedList;

public class ListEventSinkSource implements EventSink, EventSource {

    LinkedList<Event> events = new LinkedList<>();

    @Override
    public void addEvent(Event event) {
        events.addLast(event);
    }

    @Override
    public Event nextEvent() {
        return events.removeFirst();
    }

    @Override
    public boolean hasMoreEvent() {
        return !events.isEmpty();
    }
}
