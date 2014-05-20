package houtbecke.rs.le.session;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.mock.LeMockController;

import static houtbecke.rs.le.session.EventType.*;

public class MockerObject implements Mocker {

    Map<Integer, Map<EventType, MockedResponse>> mocks = new HashMap<>();

    Map<Integer, Set<Integer>> listeners = new HashMap<>();
    volatile int sourceCounter = 0;

    boolean mockDeviceListeners = false;
    boolean mockRemoteDeviceListeners = false;
    boolean mockCharacteristicsListeners = false;

    int delay = 0;

    public static MockerObject newMocker() {
        return new MockerObject();
    }

    /**
     * Mock responses followed by a mocked event defined after calling this method will delay the mock event with the supplied.
     *
     * @param delay delay in ms
     * @return the same instance of this MockerObject
     */
    public MockerObject withDelay(int delay) {
        this.delay = delay;
        return this;
    }

    public MockerObject withMock(int source, EventType type, String... values) {
        getMocks(source).put(type, new MockedResponse(values));
        return this;
    }

    public MockerObject withMock(int source, EventType type, Event event, String... values) {
        getMocks(source).put(type, new MockedResponse(event, values));
        return this;
    }

    public MockerObject withMockRemoteDevice(int source, String address, String name) {
        return withMockRemoteDevice(source, address, name, true);
    }

    public MockerObject withMockRemoteDevice(int source, String address, String name, boolean connects) {
        return withMockRemoteDevice(source, EventSinkFiller.DEFAULT_DEVICE_ID, address, name, connects);
    }

    public MockerObject withMockRemoteDevice(int source, int deviceId, String address, String name, boolean connects) {
        addMock(remoteDeviceGetAddress, source, address);
        addMock(remoteDeviceGetName, source, name);
        if (connects)
            addMock(remoteDeviceConnect, source, new MockedResponse(new Event(remoteDeviceRemoteDeviceConnected, source, delay, deviceId+"")));
        return this;
    }

    protected void addMock(EventType method, int source, String value) {
        getMocks(source).put(method, new MockedResponse(new String[] {value}));
    }

    protected void addMock(EventType method, int source, MockedResponse response) {
        getMocks(source).put(method, response);
    }

    public MockerObject withFakeDeviceListeners() {
        mockDeviceListeners = true;
        return this;
    }

    public MockerObject withFakeRemoteDeviceListeners() {
        mockRemoteDeviceListeners = true;
        return this;
    }

    public MockerObject withFakeCharacteristicsListeners() {
        mockCharacteristicsListeners = true;
        return this;
    }

    Map<EventType, MockedResponse> getMocks(int source) {
        Map<EventType, MockedResponse> ret = mocks.get(source);
        if (ret == null) {
            ret = new HashMap<>();
            mocks.put(source, ret);
        }
        return ret;
    }

    Collection<Integer> getListenersList(int source) {
        Set<Integer> listenersForSource = listeners.get(source);
        if (listenersForSource == null) {
            listenersForSource = new HashSet<>();
            listeners.put(source, listenersForSource);
        }
        return  listenersForSource;
    }

    String addListener(int source) {
        int id = ++sourceCounter;
        getListenersList(source).add(id);
        return id+"";
    }



    @Override
    public MockedResponse mock(LeMockController controller, EventType type, int source, String... arguments) {

        boolean mock = false;

        switch(type) {
            case deviceAddListener:
                mock |= mockDeviceListeners;
            case remoteDeviceAddListener:
                mock |= mockRemoteDeviceListeners;
            case remoteDeviceSetCharacteristicListener:
                mock |= mockCharacteristicsListeners;
                if (mock)
                    return new MockedResponse(new String[] { addListener(source) });
                break;

        }
        if (mocks.get(source) != null)
            return mocks.get(source).get(type);
        return null;
    }

    @Override
    public LeDeviceListener[] getDeviceListeners(LeMockController controller, int device) {
        Collection<Integer> deviceListeners = getListenersList(device);
        LeDeviceListener[] leDeviceListeners = new LeDeviceListener[deviceListeners.size()];
        int k = 0;
        for (int key: deviceListeners) {
            leDeviceListeners[k] = controller.getDeviceListener(key);
            k++;
        }
        return leDeviceListeners;
    }

    @Override
    public LeRemoteDeviceListener[] getRemoteDeviceListeners(LeMockController controller, int remoteDevice) {
        Collection<Integer> remoteDeviceListeners = getListenersList(remoteDevice);
        LeRemoteDeviceListener[] leRemoteDeviceListeners = new LeRemoteDeviceListener[remoteDeviceListeners.size()];
        int k = 0;
        for (int key: remoteDeviceListeners) {
            leRemoteDeviceListeners[k] = controller.getRemoteDeviceListener(key);
            k++;
        }
        return leRemoteDeviceListeners;
    }

    @Override
    public LeCharacteristicListener[] getCharacteristicListeners(LeMockController controller, int characteristic) {
        Collection<Integer> characteristicsListeners = getListenersList(characteristic);
        LeCharacteristicListener[] leCharacteristicListeners = new LeCharacteristicListener[characteristicsListeners.size()];
        int k = 0;
        for (int key: characteristicsListeners) {
            leCharacteristicListeners[k] = controller.getCharacteristicListener(key);
            k++;
        }
        return leCharacteristicListeners;
    }


}
