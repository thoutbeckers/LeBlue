package houtbecke.rs.le.session;

import java.util.Arrays;

import houtbecke.rs.le.interceptor.BaseIntercepting;

public class Event {

    public EventType type;
    public int source;
    int delay = 0;
    public String[] values;

    public Event(EventType type, BaseIntercepting source, String... values) {
        this(type, 0, source.id, values);
    }

    public Event(EventType type, int delay, BaseIntercepting source, String... values) {
        this(type, source.id, delay, values);
    }

    public Event(EventType type, int source, boolean value) {
        this(type, source, 0, value);
    }
    public Event(EventType type, int source, int delay, boolean value) {
        this(type, source, delay, Boolean.toString(value));
    }

    public Event(EventType type, int source, String... values) {
        this(type, source, 0, values);
    }
    public Event(EventType type, int source, int delay, String... values) {
        this.type = type;
        this.source = source;
        this.values = values;
        this.delay = delay;
    }
    @Override
    public String toString() {
        return "Event{" +
                "type=" + type +
                ", source=" + source +
                ", values=" + Arrays.toString(values) +
                '}';
    }
}
