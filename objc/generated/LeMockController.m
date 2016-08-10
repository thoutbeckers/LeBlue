
#include "J2ObjC_source.h"
#include "LeMockController.h"

@interface LeMockController : NSObject

@end

@implementation LeMockController

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "deviceStartScanningWithLeDeviceMock:", "deviceStartScanning", "V", 0x401, NULL, NULL },
    { "deviceStartScanningWithLeDeviceMock:withJavaUtilUUIDArray:", "deviceStartScanning", "V", 0x401, NULL, NULL },
    { "deviceStopScanningWithLeDeviceMock:", "deviceStopScanning", "V", 0x401, NULL, NULL },
    { "remoteDeviceConnectWithLeRemoteDeviceMock:", "remoteDeviceConnect", "V", 0x401, NULL, NULL },
    { "remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:", "remoteDeviceStartServiceDiscovery", "V", 0x401, NULL, NULL },
    { "remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:withJavaUtilUUIDArray:", "remoteDeviceStartServiceDiscovery", "V", 0x401, NULL, NULL },
    { "remoteDeviceCloseWithLeRemoteDeviceMock:", "remoteDeviceClose", "V", 0x401, NULL, NULL },
    { "remoteDeviceDisconnectWithLeRemoteDeviceMock:", "remoteDeviceDisconnect", "V", 0x401, NULL, NULL },
    { "serviceEnableCharacteristicNotificationWithLeGattServiceMock:withJavaUtilUUID:", "serviceEnableCharacteristicNotification", "Z", 0x401, NULL, NULL },
    { "deviceAddListenerWithLeDeviceMock:withLeDeviceListener:", "deviceAddListener", "V", 0x401, NULL, NULL },
    { "deviceRemoveListenerWithLeDeviceMock:withLeDeviceListener:", "deviceRemoveListener", "V", 0x401, NULL, NULL },
    { "deviceCheckBleHardwareAvailableWithLeDeviceMock:", "deviceCheckBleHardwareAvailable", "Z", 0x401, NULL, NULL },
    { "deviceIsBtEnabledWithLeDeviceMock:", "deviceIsBtEnabled", "Z", 0x401, NULL, NULL },
    { "remoteDeviceGetAddressWithLeRemoteDeviceMock:", "remoteDeviceGetAddress", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "remoteDeviceGetNameWithLeRemoteDeviceMock:", "remoteDeviceGetName", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "getRemoteDeviceListenerWithInt:", "getRemoteDeviceListener", "Lhoutbecke.rs.le.LeRemoteDeviceListener;", 0x401, NULL, NULL },
    { "remoteDeviceAddListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:", "remoteDeviceAddListener", "V", 0x401, NULL, NULL },
    { "remoteDeviceRemoveListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:", "remoteDeviceRemoveListener", "V", 0x401, NULL, NULL },
    { "addDeviceWithInt:withLeDeviceMock:", "addDevice", "V", 0x401, NULL, NULL },
    { "getDeviceListenerWithInt:", "getDeviceListener", "Lhoutbecke.rs.le.LeDeviceListener;", 0x401, NULL, NULL },
    { "serviceGetCharacteristicWithLeGattServiceMock:withJavaUtilUUID:", "serviceGetCharacteristic", "Lhoutbecke.rs.le.LeGattCharacteristic;", 0x401, NULL, NULL },
    { "serviceGetUuidWithLeGattServiceMock:", "serviceGetUuid", "Ljava.util.UUID;", 0x401, NULL, NULL },
    { "characteristicGetValueWithLeGattCharacteristicMock:", "characteristicGetValue", "[B", 0x401, NULL, NULL },
    { "characteristicGetIntValueWithLeGattCharacteristicMock:withLeFormat:withInt:", "characteristicGetIntValue", "I", 0x401, NULL, NULL },
    { "getCharacteristicListenerWithInt:", "getCharacteristicListener", "Lhoutbecke.rs.le.LeCharacteristicListener;", 0x401, NULL, NULL },
    { "getCharacteristicWriteListenerWithInt:", "getCharacteristicWriteListener", "Lhoutbecke.rs.le.LeCharacteristicWriteListener;", 0x401, NULL, NULL },
    { "remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:withLeCharacteristicListener:withJavaUtilUUIDArray:", "remoteDeviceSetCharacteristicListener", "V", 0x401, NULL, NULL },
    { "remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:withLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "remoteDeviceSetCharacteristicWriteListener", "V", 0x401, NULL, NULL },
    { "characteristicSetValueWithLeGattCharacteristicMock:withByteArray:", "characteristicSetValue", "V", 0x401, NULL, NULL },
    { "characteristicSetValueWithLeGattCharacteristicMock:withByteArray:withJavaLangBoolean:", "characteristicSetValue", "V", 0x401, NULL, NULL },
    { "remoteDeviceReadRssiWithLeRemoteDeviceMock:", "remoteDeviceReadRssi", "V", 0x401, NULL, NULL },
    { "characteristicReadWithLeGattCharacteristicMock:", "characteristicRead", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeMockController = { 2, "LeMockController", "houtbecke.rs.le.mock", NULL, 0x609, 32, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeMockController;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeMockController)
