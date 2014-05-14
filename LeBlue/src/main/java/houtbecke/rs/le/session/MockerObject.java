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

    Map<Integer, Map<EventType, String[]>> mocks = new HashMap<>();

    Map<Integer, Set<Integer>> listeners = new HashMap<>();
    volatile int sourceCounter = 0;


    boolean mockDeviceListeners = false;
    boolean mockRemoteDeviceListeners = false;
    boolean mockCharacteristicsListeners = false;

    public static MockerObject newMocker() {
        return new MockerObject();
    }

    public MockerObject withMock(int source, EventType type, String... values) {
        getMocks(source).put(type, values);
        return this;
    }

    public MockerObject withMockRemoteDevice(int source, String address, String name) {
        addMock(remoteDeviceGetAddress, source, address);
        addMock(remoteDeviceGetName, source, name);
        return this;
    }

    protected void addMock(EventType method, int source, String value) {
        getMocks(source).put(method, new String[] {value});
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

    Map<EventType, String[]> getMocks(int source) {
        Map<EventType, String[]> ret = mocks.get(source);
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
    public String[] mock(LeMockController controller, EventType type, int source, String... arguments) {

        boolean mock = false;

        switch(type) {
            case deviceAddListener:
                mock |= mockDeviceListeners;
            case remoteDeviceAddListener:
                mock |= mockRemoteDeviceListeners;
            case remoteDeviceSetCharacteristicListener:
                mock |= mockCharacteristicsListeners;
                if (mock)
                    return new String[] { addListener(source) };
                break;

        }
        return mocks.get(source).get(type);
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
