package houtbecke.rs.le.session;

public enum EventType {

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
    remoteDeviceEnableCharacteristicNotification,
    serviceEnableCharacteristicNotification,
    remoteDeviceGetAddress,
    remoteDeviceAddListener,
    remoteDeviceRemoveListener,
    remoteDeviceSetCharacteristicListener,
    serviceGetUUID,
    characteristicGetValue,
    characteristicGetIntValue,
    remoteDeviceGetName,
    serviceGetCharacteristic,
    characteristicSetValue,
    remoteDeviceGetCharacteristic,

    remoteDeviceFound,
    mockRemoteDeviceFound,
    remoteDeviceConnected,
    mockRemoteDeviceConnected,
    remoteDeviceServicesDiscovered,
    mockRemoteDeviceServicesDiscovered,
    deviceRemoteDeviceServicesDiscovered,
    characteristicChanged,
    mockCharacteristicChanged,
    mockCharacteristicChangedWithMockedValue,
    mockCharacteristicMockedValue,
    mockCharacteristicClearMockedValue,

    mockWaitForPoint,
    mockPointReached



}
