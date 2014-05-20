package houtbecke.rs.le.session;

import java.util.HashMap;
import java.util.Map;

public class SessionObject implements Session {

    public SessionObject setDefaultSource(EventSource defaultSource) {
        this.defaultSource = defaultSource;
        return this;
    }

    public SessionObject withDeviceMocker(int id, Mocker device) {
        devices.put(id, device);
        return this;
    }

    public SessionObject withDeviceMocker(Mocker device) {
        devices.put(EventSinkFiller.DEFAULT_DEVICE_ID, device);
        return this;
    }

    public SessionObject withRemoteDeviceMocker(int id, Mocker remoteDevice) {
        remoteDevices.put(id, remoteDevice);
        return this;
    }

    public SessionObject withGattServiceMocker(int id, Mocker service) {
        gattServices.put(id, service);
        return this;
    }

    public SessionObject withGattCharacteristicsMocker(int id, Mocker characteristic) {
        gattCharacteristics.put(id, characteristic);
        return this;
    }


    public SessionObject withNamedEventSource(String name, EventSource eventSource) {
        eventSources.put(name, eventSource);
        return this;
    }

    public SessionObject withDefaultSessionSource(EventSource defaultSource) {
        this.defaultSource = defaultSource;
        return this;
    }

    public static SessionObject newSession() {
        return new SessionObject();
    }

    Map<Integer, Mocker> devices = new HashMap<>();
    Map<Integer, Mocker> remoteDevices = new HashMap<>();
    Map<Integer, Mocker> gattServices = new HashMap<>();
    Map<Integer, Mocker> gattCharacteristics = new HashMap<>();

    EventSource defaultSource;

    Map<String, EventSource> eventSources;

    @Override
    public Mocker getGattCharacteristicMocker(int id) {
        return gattCharacteristics.get(id);
    }

    @Override
    public Mocker getGattServiceMocker(int id) {
        return gattServices.get(id);
    }

    @Override
    public Mocker getDeviceMocker(int id) {
        return devices.get(id);
    }

    @Override
    public Mocker getRemoteDeviceMocker(int device) {
        return remoteDevices.get(device);
    }

    @Override
    public EventSource getDefaultSource() {
        return defaultSource;
    }

    @Override
    public EventSource getNamedEventSource(String source) {
        return eventSources.get(source);
    }
}
