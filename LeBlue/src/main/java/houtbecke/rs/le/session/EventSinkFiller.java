package houtbecke.rs.le.session;

public class EventSinkFiller {

    ListEventSinkSource listEventSinkSource;
    public EventSinkFiller(ListEventSinkSource listEventSinkSource) {
        this.listEventSinkSource = listEventSinkSource;
    }

    String[] extend(String[] args, int... paramsInFront) {
        String[] ret = new String[args.length+paramsInFront.length];
        for (int k = 0; k < paramsInFront.length; k++)
            ret[k] = paramsInFront[k]+"";

        System.arraycopy(args, 0, ret, 0 + paramsInFront.length, args.length);

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
}
