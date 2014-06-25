package houtbecke.rs.le.session;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.mock.LeMockController;

public class MockerObject implements Mocker {

    Map<Integer, Map<EventType, List<MockedResponse>>> mocks = new HashMap<>();

    Map<Integer, Set<Integer>> listeners = new HashMap<>();
    volatile static int sourceCounter = 0;

    boolean mockDeviceListeners = false;
    boolean mockRemoteDeviceListeners = false;
    boolean mockCharacteristicsListeners = false;

    int defaultDelay = -1;
    int getDelay() {
        return defaultDelay == -1 ? sessionObject.getDefaultDelay() : defaultDelay;

    }

    final int sessionSource;
    SessionObject sessionObject;
    public final SessionObject and;
    public SessionObject end() {
        return sessionObject;
    }

    public MockerObject(SessionObject sessionObject, int sessionSource) {
        this.sessionObject = sessionObject;
        this.sessionSource = sessionSource;
        this.and = sessionObject;
    }

    public static MockerObject newMocker(SessionObject sessionObject, int defaultSource) {
        return new MockerObject(sessionObject, defaultSource);
    }

    /**
     * Mock responses followed by a mocked event defined after calling this method will delay the mock event with the supplied.
     *
     * @param delay delay in ms
     * @return the same instance of this MockerObject
     */
    public MockerObject withDelay(int delay) {
        this.defaultDelay = delay;
        return this;

    }

    Map<EventType, List<MockedResponse>> getMocks(int source) {
        Map<EventType, List<MockedResponse>> ret = mocks.get(source);
        if (ret == null) {
            ret = new HashMap<>();
            mocks.put(source, ret);
        }
        return ret;
    }

     List<MockedResponse> getMocksList(int source, EventType type) {
        Map<EventType, List<MockedResponse>> mocksMap = getMocks(source);
        List<MockedResponse> ret = mocksMap.get(type);
        if (ret == null) {
            ret = new ArrayList<>();
            mocksMap.put(type, ret);
        }
        return ret;
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
                    return new MockedResponseObject(addListener(source));
                break;

        }

        if (mocks.get(source) != null) {
            List<MockedResponse> responses = mocks.get(source).get(type);
            if (responses != null)
                for (MockedResponse response: responses) {
                    if (response.isForArguments(arguments)) {
                        if (response.isSelfDestroying())
                            responses.remove(response);
                        return response;
                    }

                }
        }
        return null;
    }

    public MockerObject withSelfDestroyingMock(EventType type, String... values) {
        return withSelfDestroyingMock(sessionSource, type, values);
    }
    public MockerObject withSelfDestroyingMock(int source, EventType type, String... values) {
        MockedResponseObject response = new MockedResponseObject(values);
        response.destroyAfterUse();
        getMocksList(source, type).add(response);
        return this;
    }

    public MockerObject withMock(EventType type, String argument, int argumentPos, String... values) {
        return withMock(sessionSource, type, argument, argumentPos, values);
    }
    public MockerObject withMock(int source, EventType type, String argument, int argumentPos, String... values) {
        MockedResponseObject response = new MockedResponseObject(values);
        response.forArguments(argument, argumentPos);
        getMocksList(source, type).add(response);
        return this;
    }

    public MockerObject withSelfDestroyingMock(EventType type, String argument, int argumentPos, String... values) {
        return withSelfDestroyingMock(sessionSource, type, argument, argumentPos, values);
    }
    public MockerObject withSelfDestroyingMock(int source, EventType type, String argument, int argumentPos, String... values) {
        MockedResponseObject mockedResponse = new MockedResponseObject(values);
        mockedResponse.destroyAfterUse();
        mockedResponse.forArguments(argument, argumentPos);
        getMocksList(source, type).add(mockedResponse);
        return this;
    }

    public MockerObject withSelfDestroyingMock(EventType method, MockedResponseObject response) {
        return withSelfDestroyingMock(sessionSource, method, response);
    }
    public MockerObject withSelfDestroyingMock(int source, EventType method, MockedResponseObject response) {
        response.destroyAfterUse();
        getMocksList(source, method).add(response);
        return this;
    }


    public MockerObject withMock(EventType type, String... values) {
        return withMock(sessionSource, type, values);
    }
    public MockerObject withMock(int source, EventType type, String... values) {
        getMocksList(source, type).add(new MockedResponseObject(values));
        return this;
    }

    public MockerObject withMock(EventType type, Event event, String... values) {
        return withMock(sessionSource, type, event, values);
    }
    public MockerObject withMock(int source, EventType type, Event event, String... values) {
        getMocksList(source, type).add(new MockedResponseObject(event, values));
        return this;
    }

    public MockerObject withMock(EventType method, String value) {
        return withMock(sessionSource, method, value);
    }
    public MockerObject withMock(int source, EventType method, String value) {
        getMocksList(source, method).add(new MockedResponseObject(new String[] {value}));
        return this;
    }

    public MockerObject withMock(EventType method, MockedResponse response) {
        return withMock(sessionSource, method, response);
    }
    public MockerObject withMock(int source, EventType method, MockedResponse response) {
        getMocksList(source, method).add(response);
        return this;
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

        List<LeRemoteDeviceListener> ret = new ArrayList<>();
        for (int key: remoteDeviceListeners) {
            LeRemoteDeviceListener listener = controller.getRemoteDeviceListener(key);
            if (listener != null)
                ret.add(listener);

        }
        return ret.toArray(new LeRemoteDeviceListener[ret.size()]);
    }

    @Override
    public LeCharacteristicListener[] getCharacteristicListeners(LeMockController controller, int characteristic) {
        Collection<Integer> characteristicsListeners = getListenersList(characteristic);

        List<LeCharacteristicListener> ret = new ArrayList<>();
        for (int key: characteristicsListeners) {
            LeCharacteristicListener listener = controller.getCharacteristicListener(key);
            if (listener != null)
                ret.add(listener);
        }
        return ret.toArray(new LeCharacteristicListener[ret.size()]);
    }





}
