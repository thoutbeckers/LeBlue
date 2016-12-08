
#include "J2ObjC_source.h"
#include "LeMockController.h"

@interface LeMockController : NSObject

@end

@implementation LeMockController

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 14, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 15, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 16, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 17, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 18, 5, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceListener;", 0x401, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 23, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 24, 25, -1, -1, -1, -1 },
    { NULL, "LLeDeviceListener;", 0x401, 26, 20, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x401, 27, 11, -1, -1, -1, -1 },
    { NULL, "LJavaUtilUUID;", 0x401, 28, 29, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, 30, 31, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 32, 33, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicListener;", 0x401, 34, 20, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicWriteListener;", 0x401, 35, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 36, 37, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 38, 39, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 40, 41, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 40, 42, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 43, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 44, 31, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(deviceStartScanningWithLeDeviceMock:);
  methods[1].selector = @selector(deviceStartScanningWithLeDeviceMock:withJavaUtilUUIDArray:);
  methods[2].selector = @selector(deviceStopScanningWithLeDeviceMock:);
  methods[3].selector = @selector(remoteDeviceConnectWithLeRemoteDeviceMock:);
  methods[4].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:);
  methods[5].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:withJavaUtilUUIDArray:);
  methods[6].selector = @selector(remoteDeviceCloseWithLeRemoteDeviceMock:);
  methods[7].selector = @selector(remoteDeviceDisconnectWithLeRemoteDeviceMock:);
  methods[8].selector = @selector(serviceEnableCharacteristicNotificationWithLeGattServiceMock:withJavaUtilUUID:);
  methods[9].selector = @selector(deviceAddListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[10].selector = @selector(deviceRemoveListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[11].selector = @selector(deviceCheckBleHardwareAvailableWithLeDeviceMock:);
  methods[12].selector = @selector(deviceIsBtEnabledWithLeDeviceMock:);
  methods[13].selector = @selector(remoteDeviceGetAddressWithLeRemoteDeviceMock:);
  methods[14].selector = @selector(remoteDeviceGetNameWithLeRemoteDeviceMock:);
  methods[15].selector = @selector(getRemoteDeviceListenerWithInt:);
  methods[16].selector = @selector(remoteDeviceAddListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[17].selector = @selector(remoteDeviceRemoveListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[18].selector = @selector(addDeviceWithInt:withLeDeviceMock:);
  methods[19].selector = @selector(getDeviceListenerWithInt:);
  methods[20].selector = @selector(serviceGetCharacteristicWithLeGattServiceMock:withJavaUtilUUID:);
  methods[21].selector = @selector(serviceGetUuidWithLeGattServiceMock:);
  methods[22].selector = @selector(characteristicGetValueWithLeGattCharacteristicMock:);
  methods[23].selector = @selector(characteristicGetIntValueWithLeGattCharacteristicMock:withLeFormat:withInt:);
  methods[24].selector = @selector(getCharacteristicListenerWithInt:);
  methods[25].selector = @selector(getCharacteristicWriteListenerWithInt:);
  methods[26].selector = @selector(remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:withLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[27].selector = @selector(remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:withLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[28].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:);
  methods[29].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:withJavaLangBoolean:);
  methods[30].selector = @selector(remoteDeviceReadRssiWithLeRemoteDeviceMock:);
  methods[31].selector = @selector(characteristicReadWithLeGattCharacteristicMock:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "deviceStartScanning", "LLeDeviceMock;", "LLeDeviceMock;[LJavaUtilUUID;", "deviceStopScanning", "remoteDeviceConnect", "LLeRemoteDeviceMock;", "remoteDeviceStartServiceDiscovery", "LLeRemoteDeviceMock;[LJavaUtilUUID;", "remoteDeviceClose", "remoteDeviceDisconnect", "serviceEnableCharacteristicNotification", "LLeGattServiceMock;LJavaUtilUUID;", "deviceAddListener", "LLeDeviceMock;LLeDeviceListener;", "deviceRemoveListener", "deviceCheckBleHardwareAvailable", "deviceIsBtEnabled", "remoteDeviceGetAddress", "remoteDeviceGetName", "getRemoteDeviceListener", "I", "remoteDeviceAddListener", "LLeRemoteDeviceMock;LLeRemoteDeviceListener;", "remoteDeviceRemoveListener", "addDevice", "ILLeDeviceMock;", "getDeviceListener", "serviceGetCharacteristic", "serviceGetUuid", "LLeGattServiceMock;", "characteristicGetValue", "LLeGattCharacteristicMock;", "characteristicGetIntValue", "LLeGattCharacteristicMock;LLeFormat;I", "getCharacteristicListener", "getCharacteristicWriteListener", "remoteDeviceSetCharacteristicListener", "LLeRemoteDeviceMock;LLeCharacteristicListener;[LJavaUtilUUID;", "remoteDeviceSetCharacteristicWriteListener", "LLeRemoteDeviceMock;LLeCharacteristicWriteListener;[LJavaUtilUUID;", "characteristicSetValue", "LLeGattCharacteristicMock;[B", "LLeGattCharacteristicMock;[BLJavaLangBoolean;", "remoteDeviceReadRssi", "characteristicRead" };
  static const J2ObjcClassInfo _LeMockController = { "LeMockController", "houtbecke.rs.le.mock", ptrTable, methods, NULL, 7, 0x609, 32, 0, -1, -1, -1, -1, -1 };
  return &_LeMockController;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeMockController)
