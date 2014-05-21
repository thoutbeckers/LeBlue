package houtbecke.rs.le.session;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeGattStatus;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.mock.LeMockController;

import static houtbecke.rs.le.session.EventType.*;

public class MockerObject implements Mocker {

    Map<Integer, Map<EventType, List<MockedResponse>>> mocks = new HashMap<>();

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
                    return new MockedResponseObject(new String[] { addListener(source) });
                break;

        }
        if (mocks.get(source) != null) {
            List<MockedResponse> responses = mocks.get(source).get(type);
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


    public MockerObject withSelfDestroyingMock(int source, EventType type, String... values) {
        MockedResponseObject response = new MockedResponseObject(values);
        response.destroyAfterUse();
        getMocksList(source, type).add(response);
        return this;
    }
    public MockerObject withMock(int source, EventType type, String argument, int argumentPos, String... values) {
        MockedResponseObject response = new MockedResponseObject(values);
        response.forArguments(argument, argumentPos);
        return this;
    }
    public MockerObject withSelfDestroyingMock(int source, EventType type, String argument, int argumentPos, String... values) {
        MockedResponseObject mockedResponse = new MockedResponseObject(values);
        mockedResponse.destroyAfterUse();
        mockedResponse.forArguments(argument, argumentPos);
        getMocksList(source, type).add(mockedResponse);
        return this;
    }

    public MockerObject withMock(int source, EventType type, String... values) {
        getMocksList(source, type).add(new MockedResponseObject(values));
        return this;
    }

    public MockerObject withMock(int source, EventType type, Event event, String... values) {
        getMocksList(source, type).add(new MockedResponseObject(event, values));
        return this;
    }

    public MockerObject withMock(EventType method, int source, String value) {
        getMocksList(source, method).add(new MockedResponseObject(new String[] {value}));
        return this;
    }

    public MockerObject withMock(EventType method, int source, MockedResponse response) {
        getMocksList(source, method).add(response);
        return this;
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


    public MockerObject mocksRemoteDevice(int source, String address, String name) {
        return mocksRemoteDevice(source, address, name, true);
    }

    public MockerObject mocksRemoteDevice(int source, String address, String name, boolean connects) {
        return mocksRemoteDevice(source, EventSinkFiller.DEFAULT_DEVICE_ID, address, name, connects);
    }

    int mockedRemoteDeviceSource = -1;
    int mockedDeviceSource;
    // can only be called once per mocker, you can after all use different mocker object for different devices.
    public MockerObject mocksRemoteDevice(int source, int deviceId, String address, String name, boolean connects) {
        if (mockedRemoteDeviceSource > 0)
            throw new RuntimeException("This MockerObject already mocks a RemoteDevice");
        this.mockedRemoteDeviceSource = source;
        this.mockedDeviceSource = deviceId;
        withMock(remoteDeviceGetAddress, source, address);
        withMock(remoteDeviceGetName, source, name);
        if (connects)
            withMock(remoteDeviceConnect, source, new MockedResponseObject(new Event(remoteDeviceRemoteDeviceConnected, source, delay, deviceId+"")));
        return this;
    }

    public MockerObject hasServices(LeGattStatus status, int... services) {

        List<String> params = new ArrayList<>();
        params.add(mockedDeviceSource +"");
        params.add(status.toString());
        for (int service: services) {
            params.add(service+"");
        }

        withMock(remoteDeviceStartServiceDiscovery, mockedRemoteDeviceSource, new MockedResponseObject(new Event(remoteDeviceRemoteDeviceServicesDiscovered, mockedRemoteDeviceSource, params.toArray(new String[params.size()]))));
        return this;
    }

    int mockedServiceSource = -1;
    public MockerObject mocksService(int source, UUID uuid) {
        if (mockedServiceSource > 0)
            throw new RuntimeException("This MockerObject already mocks a service.");
        mockedServiceSource = source;
        withMock(serviceGetUUID, source, uuid.toString());
        return this;
    }

    public MockerObject hasCharacteristic(int characteristic, UUID uuid) {
        withMock(mockedServiceSource, serviceGetCharacteristic, uuid.toString(), 0, characteristic+"");
        return this;
    }

}
