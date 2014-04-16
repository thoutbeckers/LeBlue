package houtbecke.rs.le.session;

import java.util.Arrays;

import houtbecke.rs.le.interceptor.BaseIntercepting;

public class Event {

    public EventType type;
    public int source;
    public String[] values;

    public Event(EventType type, BaseIntercepting source, String... values) {
        this(type, source.id, values);
    }


    public Event(EventType type, int source, boolean value) {
        this(type, source, Boolean.toString(value));
    }


    public Event(EventType type, int source, String... values) {
        this.type = type;
        this.source = source;
        this.values = values;
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
