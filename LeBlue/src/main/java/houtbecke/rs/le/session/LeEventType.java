package houtbecke.rs.le.session;

public enum LeEventType implements EventType {

    deviceStartScanning,
    deviceStopScanning,
    deviceRemoveListener,
    deviceCheckBleHardwareAvailable,
    deviceIsBtEnabled,
    deviceAddListener,
    remoteDeviceConnect,
    remoteDeviceStartServiceDiscovery,
    remoteDeviceClose,
    remoteDeviceDisconnect,
    serviceEnableCharacteristicNotification,
    remoteDeviceGetAddress,
    remoteDeviceAddListener,
    remoteDeviceRemoveListener,
    remoteDeviceSetCharacteristicListener,
    remoteDeviceSetCharacteristicWriteListener,
    remoteDeviceReadRssi,
    serviceGetUUID,
    characteristicGetValue,
    characteristicGetIntValue,
    remoteDeviceGetName,
    serviceGetCharacteristic,
    characteristicSetValue,
    characteristicRead,
    remoteDeviceFound,
    deviceState,
    mockRemoteDeviceFound,
    remoteDeviceConnected,
    mockRemoteDeviceConnected,
    remoteDeviceDisconnected,
    remoteDeviceClosed,
    mockRemoteDeviceDisconnected,
    mockRemoteDeviceClosed,

    remoteDeviceServicesDiscovered,
    remoteDeviceRssiRead,
    mockRemoteDeviceServicesDiscovered,
    deviceRemoteDeviceServicesDiscovered,
    characteristicChanged,
    characteristicNotificationChanged,
    characteristicWritten,
    mockCharacteristicChanged,
    mockCharacteristicChangedWithMockedValue,
    mockCharacteristicMockedValue,
    mockCharacteristicClearMockedValue,
    mockCharacteristicNotificationChanged,

    mockWaitForPoint,
    mockPointReached



}
