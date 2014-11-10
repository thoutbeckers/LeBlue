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


    private void correctDelay(){
        long lastTimeStamp =0;
        for (Event event : events) {
            if (lastTimeStamp == 0) {
                event.delay = 0;
            } else {
                event.delay = (int) (event.timeStamp - lastTimeStamp);
            }
            lastTimeStamp = event.timeStamp;
        }
    }

    @Override
    public Event[] getEvents(){
        this.correctDelay();
        return events.toArray(new Event[events.size()]


        );
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
