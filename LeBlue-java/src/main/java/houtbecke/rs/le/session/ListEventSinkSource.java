package houtbecke.rs.le.session;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ListEventSinkSource implements EventSink, EventSource {

    LinkedList<Event> events = new LinkedList<>();
    ReadWriteLock lock = new ReentrantReadWriteLock();

    Iterator<Event> iterator = null;
    int limit = -1;

    public ListEventSinkSource(){

    }

    public ListEventSinkSource(int limit){
        if (limit >1)
            this.limit = limit;
    }

    @Override
    public void addEvent(Event event) {
        lock.writeLock().lock();
        try {
            if (limit == -1) {
                events.addLast(event);
            } else {
                if (limit <= events.size())
                    events.removeFirst();
                events.addLast(event);
            }
        } finally {
            lock.writeLock().unlock();

        }

    }
    private void correctDelay(){
        lock.writeLock().lock();
        try {
            long lastTimeStamp = 0;
            for (Event event : events) {
                if (lastTimeStamp == 0) {
                    event.delay = 0;
                } else {
                    event.delay = (int) (event.timeStamp - lastTimeStamp);
                }
                lastTimeStamp = event.timeStamp;
            }
        }finally {
            lock.writeLock().unlock();

        }

    }

    @Override
    public Event[] getEvents(){
        lock.readLock().lock();
        try {
            this.correctDelay();
            return events.toArray(new Event[events.size()]


            );
        }finally {
            lock.readLock().unlock();

        }
    }


    @Override
    public Event nextEvent() {
        lock.readLock().lock();
        try {
            if (iterator == null)
                iterator = events.iterator();

            return iterator.next();
        }finally {
            lock.readLock().unlock();

        }
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
