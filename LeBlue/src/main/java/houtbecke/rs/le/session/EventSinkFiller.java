package houtbecke.rs.le.session;

import houtbecke.rs.le.LeUtil;

public class EventSinkFiller {

    public final static int DEFAULT_DEVICE_ID = 0;

    ListEventSinkSource listEventSinkSource;

    int defaultDelay;

    public final SessionObject and;
    public SessionObject end() {
        return and;
    }

    public EventSinkFiller(ListEventSinkSource listEventSinkSource) {
        this(listEventSinkSource, null);
    }
    public EventSinkFiller(ListEventSinkSource listEventSinkSource, SessionObject sessionObject) {
        this.listEventSinkSource = listEventSinkSource;
        and = sessionObject;
    }

    public EventSinkFiller addEvent(EventType type, int source, int secondSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, LeUtil.extend(args, secondSource)));
        return this;
    }

    public EventSinkFiller addEvent(EventType type, int source, int secondSource, int thirdSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, LeUtil.extend(args, secondSource, thirdSource)));
        return this;
    }

    public EventSinkFiller addEvent(EventType type, int source, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, args));
        return this;
    }

    public EventSinkFiller addDeviceEvent(EventType type, int secondSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, args);
        return this;
    }

    public EventSinkFiller addDeviceEvent(EventType type, int secondSource, int thirdSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, thirdSource, args);
        return this;
    }

    public EventSinkFiller addDeviceEvent(EventType type, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, args);
        return this;
    }

    public EventSinkFiller mockCharacteristicChange(int remoteDevice, int characteristic, byte[] value) {
        addEvent(EventType.mockCharacteristicChangedWithMockedValue, remoteDevice, characteristic, LeUtil.bytesToString(value));
        return this;
    }

    public EventSinkFiller waitForPoint(String point) {
        addEvent(EventType.mockWaitForPoint, 0, point);
        return this;
    }

    public EventSinkFiller pointReached(String point) {
        addEvent(EventType.mockPointReached, 0, point);
        return this;
    }

    public EventSinkFiller andNoDelay() {
        return andDelay(0);
    }

    public EventSinkFiller andDelay(int delay) {
        listEventSinkSource.lastEvent().delay = delay;
        return this;
    }

    public EventSinkFiller hasDefaultDelay(int delay) {
        defaultDelay = delay;
        return this;
    }
}
