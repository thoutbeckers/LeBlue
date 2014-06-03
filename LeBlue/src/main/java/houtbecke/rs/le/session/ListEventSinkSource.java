package houtbecke.rs.le.session;

import java.util.Iterator;
import java.util.LinkedList;

public class ListEventSinkSource implements EventSink, EventSource {

    LinkedList<Event> events = new LinkedList<>();
    Iterator<Event> iterator = null;

    @Override
    public void addEvent(Event event) {
        events.addLast(event);
    }

    @Override
    public Event nextEvent() {
        if (iterator == null)
            iterator = events.iterator();

        return iterator.next();
    }

    @Override
    public boolean hasMoreEvent() {
        return (iterator == null && events.size() > 0) || iterator.hasNext();
    }

    @Override
    public void reset() {
        iterator = null;
    }

    public Event lastEvent() {
        return events.getLast();
    }
}
