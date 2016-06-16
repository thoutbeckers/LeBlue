package houtbecke.rs.le.session;

import java.util.Arrays;

import houtbecke.rs.le.interceptor.BaseIntercepting;

public class Event {

    public EventType type;
    public int source;
    public int delay;
    public long timeStamp;

    public String[] values;

    public Event(EventType type, BaseIntercepting source, String... values) {
        this(type, 0, source.id, values);
    }

    public Event(EventType type, int delay, BaseIntercepting source, String... values) {
        this(type, delay, source.id, values);
    }

    public Event(EventType type, int source, boolean value) {
        this(type, 0, source, value);
    }
    public Event(EventType type, int delay, int source,  boolean value) {
        this(type, delay, source, Boolean.toString(value));
    }

    public Event(EventType type, int source, String... values) {
        this(type, 0, source, values);
    }
    public Event(EventType type, int delay, int source, String... values) {
        this.type = type;
        this.source = source;
        this.values = values;
        this.delay = delay;
        timeStamp = System.currentTimeMillis();
    }
    @Override
    public String toString() {
        return "Event{" +
                "type=" + type +
                ", source=" + source +
                ", values=" + Arrays.toString(values) +
                ", delay="+ delay +
                ", timeStamp=" + timeStamp +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Event event = (Event) o;

        if (source != event.source) return false;
        if (type != event.type) return false;
        if (!Arrays.deepEquals(values, event.values)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = type.hashCode();
        result = 31 * result + source;
        result = 31 * result + Arrays.hashCode(values);
        return result;
    }
}
