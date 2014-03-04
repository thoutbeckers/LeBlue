package houtbecke.rs.le.mock;

import java.util.UUID;

public interface LeMockListener {

    void startScanning(LeDeviceMock leDeviceMock);

    void startScanning(LeDeviceMock leDeviceMock, UUID[] uuids);

    void stopScanning(LeDeviceMock leDeviceMock);

    void connect(LeRemoteDeviceMock leRemoteDeviceMock);

    void startServiceDiscovery(LeRemoteDeviceMock leRemoteDeviceMock);

    void close(LeRemoteDeviceMock leRemoteDeviceMock);

    void disconnect(LeRemoteDeviceMock leRemoteDeviceMock);

    boolean enableCharacteristicNotification(LeGattServiceMock leGattServiceMock, UUID characteristic);
}
