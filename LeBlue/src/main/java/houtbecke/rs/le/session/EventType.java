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
    serviceEnableCharacteristicNotification,
    remoteDeviceGetAddress,
    remoteDeviceAddListener,
    remoteDeviceRemoveListener,
    remoteDeviceSetCharacteristicListener,
    remoteDeviceReadRssi,

    serviceGetUUID,
    characteristicGetValue,
    characteristicGetIntValue,
    remoteDeviceGetName,
    serviceGetCharacteristic,
    characteristicSetValue,
    remoteDeviceFound,
    deviceState,
    mockRemoteDeviceFound,
    remoteDeviceConnected,
    mockRemoteDeviceConnected,
    remoteDeviceDisconnected,
    remoteDeviceClosed,
    remoteDeviceServicesDiscovered,
    remoteDeviceRssiRead,
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
