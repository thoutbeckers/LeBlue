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
    serviceGetUUID,
    characteristicGetValue,
    characteristicGetIntValue,
    startServicesDiscovery,
    remoteDeviceGetName,
    serviceGetCharacteristic,
    characteristicSetValue,


    remoteDeviceFound,
    mockRemoteDeviceFound,
    remoteDeviceConnected,
    mockRemoteDeviceConnected,
    remoteDeviceServicesDiscovered,
    mockRemoteDeviceServicesDiscovered,
    deviceRemoteDeviceServicesDiscovered,
    characteristicChanged,
    mockCharacteristicChanged,

    mockWaitForPoint,
    mockPointReached



}
