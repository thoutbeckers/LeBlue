package houtbecke.rs.le.session;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.mock.LeMockController;

public interface Mocker {

    public MockedResponse mock(LeMockController controller, EventType type, int source, String... arguments);

    public LeDeviceListener[] getDeviceListeners(LeMockController controller, int device);

    public LeRemoteDeviceListener[] getRemoteDeviceListeners(LeMockController controller, int remoteDevice);

    public LeCharacteristicListener[] getCharacteristicListeners(LeMockController controller, int characteristic);

}
