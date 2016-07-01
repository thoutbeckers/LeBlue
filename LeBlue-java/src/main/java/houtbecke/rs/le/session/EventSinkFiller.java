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

    public EventSinkFiller addEvent(LeEventType type, int source, int secondSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, LeUtil.extend(args, secondSource)));
        return this;
    }

    public EventSinkFiller addEvent(LeEventType type, int source, int secondSource, int thirdSource, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, LeUtil.extend(args, secondSource, thirdSource)));
        return this;
    }

    public EventSinkFiller addEvent(LeEventType type, int source, String... args) {
        listEventSinkSource.addEvent(new Event(type, defaultDelay, source, args));
        return this;
    }

    public EventSinkFiller addDeviceEvent(LeEventType type, int secondSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, args);
        return this;
    }

    public EventSinkFiller addDeviceEvent(LeEventType type, int secondSource, int thirdSource, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, secondSource, thirdSource, args);
        return this;
    }

    public EventSinkFiller addDeviceEvent(LeEventType type, String... args) {
        addEvent(type, DEFAULT_DEVICE_ID, args);
        return this;
    }

    int currentRemoteDevice, currentCharacteristic;
    public EventSinkFiller mockCharacteristicChanges(int remoteDevice, int characteristic) {
        currentRemoteDevice = remoteDevice;
        currentCharacteristic = characteristic;
        return this;
    }

    public EventSinkFiller characteristicChange(byte[] value) {
        return mockCharacteristicChange(currentRemoteDevice, currentCharacteristic, value);
    }

    public EventSinkFiller mockCharacteristicChange(int remoteDevice, int characteristic, byte[] value) {
        addEvent(LeEventType.mockCharacteristicChangedWithMockedValue, remoteDevice, characteristic, LeUtil.bytesToString(value));
        return this;
    }

    public EventSinkFiller waitForPoint(String point) {
        addEvent(LeEventType.mockWaitForPoint, 0, point);
        return this;
    }

    public EventSinkFiller pointReached(String point) {
        addEvent(LeEventType.mockPointReached, 0, point);
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
