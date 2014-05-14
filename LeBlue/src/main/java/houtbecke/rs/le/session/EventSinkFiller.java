package houtbecke.rs.le.session;

public class EventSinkFiller {

    public final static int DEFAULT_DEVICE_ID = 0;

    ListEventSinkSource listEventSinkSource;
    public EventSinkFiller(ListEventSinkSource listEventSinkSource) {
        this.listEventSinkSource = listEventSinkSource;
    }

    String[] extend(String[] args, int... paramsInFront) {
        String[] ret = new String[args.length+paramsInFront.length];
        for (int k = 0; k < paramsInFront.length; k++)
            ret[k] = paramsInFront[k]+"";

        System.arraycopy(args, 0, ret, paramsInFront.length, args.length);

        return ret;
    }

    public void addEvent(EventType type, int source, int secondSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, source, extend(args, secondSource)));
    }

    public void addEvent(EventType type, int source, int secondSource, int thirdSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, source, extend(args, secondSource, thirdSource)));
    }

    public void addEvent(EventType type, int source, String... args) {
        listEventSinkSource.addEvent(new Event(type, source, args));
    }

    public void addDeviceEvent(EventType type, int secondSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, args);
    }

    public void addDeviceEvent(EventType type, int secondSource, int thirdSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, thirdSource, args);
    }

    public void addDeviceEvent(EventType type, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, args);
    }

}
