package houtbecke.rs.le.mock;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeFormat;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDeviceListener;

public interface LeMockController {

    void deviceStartScanning(LeDeviceMock leDeviceMock);

    void deviceStartScanning(LeDeviceMock leDeviceMock, UUID[] uuids);

    void deviceStopScanning(LeDeviceMock leDeviceMock);

    void remoteDeviceConnect(LeRemoteDeviceMock leRemoteDeviceMock);

    void remoteDeviceStartServiceDiscovery(LeRemoteDeviceMock leRemoteDeviceMock);

    void remoteDeviceClose(LeRemoteDeviceMock leRemoteDeviceMock);

    void remoteDeviceDisconnect(LeRemoteDeviceMock leRemoteDeviceMock);

    boolean serviceEnableCharacteristicNotification(LeGattServiceMock leGattServiceMock, UUID characteristic);

    void deviceAddListener(LeDeviceMock leDeviceMock, LeDeviceListener listener);

    void deviceRemoveListener(LeDeviceMock leDeviceMock, LeDeviceListener listener);

    boolean deviceCheckBleHardwareAvailable(LeDeviceMock leDeviceMock);

    boolean deviceIsBtEnabled(LeDeviceMock leDeviceMock);

    String remoteDeviceGetAddress(LeRemoteDeviceMock leRemoteDeviceMock);

    String remoteDeviceGetName(LeRemoteDeviceMock leRemoteDeviceMock);

    LeRemoteDeviceListener getRemoteDeviceListener(int key);

    void remoteDeviceAddListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener);

    void remoteDeviceRemoveListener(LeRemoteDeviceMock leRemoteDeviceMock, LeRemoteDeviceListener listener);

    void addDevice(int key, LeDeviceMock mock);

    LeDeviceListener getDeviceListener(int key);

    LeGattCharacteristic serviceGetCharacteristic(LeGattServiceMock leGattServiceMock, UUID uuid);

    UUID serviceGetUuid(LeGattServiceMock leGattServiceMock);

    byte[] characteristicGetValue(LeGattCharacteristicMock leGattCharacteristicMock);

    int characteristicGetIntValue(LeGattCharacteristicMock leGattCharacteristicMock, LeFormat format, int index);

    LeCharacteristicListener getCharacteristicListener(int key);

    void remoteDeviceSetCharacteristicListener(LeRemoteDeviceMock leRemoteDeviceMock, LeCharacteristicListener listener, UUID[] uuids);

    void characteristicSetValue(LeGattCharacteristicMock leGattCharacteristicMock, byte[] value);

    void remoteDeviceReadRssi(LeRemoteDeviceMock leRemoteDeviceMock);
}
