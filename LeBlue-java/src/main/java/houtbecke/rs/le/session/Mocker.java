package houtbecke.rs.le.session;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDeviceListener;
import houtbecke.rs.le.mock.LeMockController;

public interface Mocker {

    MockedResponse mock(LeMockController controller, LeEventType type, int source, String... arguments);

    LeDeviceListener[] getDeviceListeners(LeMockController controller, int device);

    LeRemoteDeviceListener[] getRemoteDeviceListeners(LeMockController controller, int remoteDevice);

    LeCharacteristicListener[] getCharacteristicListeners(LeMockController controller, int characteristic);

}
