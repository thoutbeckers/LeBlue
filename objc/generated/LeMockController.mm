
#include "J2ObjC_source.h"
#include "LeMockController.h"

@interface LeMockController : NSObject

@end

@implementation LeMockController

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x401, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 11, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 16, 15, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 17, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 18, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 19, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 20, 7, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDeviceListener;", 0x401, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 25, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 26, 27, -1, -1, -1, -1 },
    { NULL, "LLeDeviceListener;", 0x401, 28, 22, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x401, 29, 13, -1, -1, -1, -1 },
    { NULL, "LJavaUtilUUID;", 0x401, 30, 31, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, 32, 33, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 34, 35, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicListener;", 0x401, 36, 22, -1, -1, -1, -1 },
    { NULL, "LLeCharacteristicWriteListener;", 0x401, 37, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 38, 39, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 40, 41, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 42, 43, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 42, 44, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 45, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 46, 33, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(deviceStartScanningWithLeDeviceMock:);
  methods[1].selector = @selector(deviceStartScanningWithLeDeviceMock:withJavaUtilUUIDArray:);
  methods[2].selector = @selector(deviceStartScanningWithLeDeviceMock:withJavaUtilList:);
  methods[3].selector = @selector(deviceStopScanningWithLeDeviceMock:);
  methods[4].selector = @selector(remoteDeviceConnectWithLeRemoteDeviceMock:);
  methods[5].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:);
  methods[6].selector = @selector(remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:withJavaUtilUUIDArray:);
  methods[7].selector = @selector(remoteDeviceCloseWithLeRemoteDeviceMock:);
  methods[8].selector = @selector(remoteDeviceDisconnectWithLeRemoteDeviceMock:);
  methods[9].selector = @selector(serviceEnableCharacteristicNotificationWithLeGattServiceMock:withJavaUtilUUID:);
  methods[10].selector = @selector(deviceAddListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[11].selector = @selector(deviceRemoveListenerWithLeDeviceMock:withLeDeviceListener:);
  methods[12].selector = @selector(deviceCheckBleHardwareAvailableWithLeDeviceMock:);
  methods[13].selector = @selector(deviceIsBtEnabledWithLeDeviceMock:);
  methods[14].selector = @selector(remoteDeviceGetAddressWithLeRemoteDeviceMock:);
  methods[15].selector = @selector(remoteDeviceGetNameWithLeRemoteDeviceMock:);
  methods[16].selector = @selector(getRemoteDeviceListenerWithInt:);
  methods[17].selector = @selector(remoteDeviceAddListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[18].selector = @selector(remoteDeviceRemoveListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:);
  methods[19].selector = @selector(addDeviceWithInt:withLeDeviceMock:);
  methods[20].selector = @selector(getDeviceListenerWithInt:);
  methods[21].selector = @selector(serviceGetCharacteristicWithLeGattServiceMock:withJavaUtilUUID:);
  methods[22].selector = @selector(serviceGetUuidWithLeGattServiceMock:);
  methods[23].selector = @selector(characteristicGetValueWithLeGattCharacteristicMock:);
  methods[24].selector = @selector(characteristicGetIntValueWithLeGattCharacteristicMock:withLeFormat:withInt:);
  methods[25].selector = @selector(getCharacteristicListenerWithInt:);
  methods[26].selector = @selector(getCharacteristicWriteListenerWithInt:);
  methods[27].selector = @selector(remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:withLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[28].selector = @selector(remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:withLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[29].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:);
  methods[30].selector = @selector(characteristicSetValueWithLeGattCharacteristicMock:withByteArray:withJavaLangBoolean:);
  methods[31].selector = @selector(remoteDeviceReadRssiWithLeRemoteDeviceMock:);
  methods[32].selector = @selector(characteristicReadWithLeGattCharacteristicMock:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "deviceStartScanning", "LLeDeviceMock;", "LLeDeviceMock;[LJavaUtilUUID;", "LLeDeviceMock;LJavaUtilList;", "(Lhoutbecke/rs/le/mock/LeDeviceMock;Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", "deviceStopScanning", "remoteDeviceConnect", "LLeRemoteDeviceMock;", "remoteDeviceStartServiceDiscovery", "LLeRemoteDeviceMock;[LJavaUtilUUID;", "remoteDeviceClose", "remoteDeviceDisconnect", "serviceEnableCharacteristicNotification", "LLeGattServiceMock;LJavaUtilUUID;", "deviceAddListener", "LLeDeviceMock;LLeDeviceListener;", "deviceRemoveListener", "deviceCheckBleHardwareAvailable", "deviceIsBtEnabled", "remoteDeviceGetAddress", "remoteDeviceGetName", "getRemoteDeviceListener", "I", "remoteDeviceAddListener", "LLeRemoteDeviceMock;LLeRemoteDeviceListener;", "remoteDeviceRemoveListener", "addDevice", "ILLeDeviceMock;", "getDeviceListener", "serviceGetCharacteristic", "serviceGetUuid", "LLeGattServiceMock;", "characteristicGetValue", "LLeGattCharacteristicMock;", "characteristicGetIntValue", "LLeGattCharacteristicMock;LLeFormat;I", "getCharacteristicListener", "getCharacteristicWriteListener", "remoteDeviceSetCharacteristicListener", "LLeRemoteDeviceMock;LLeCharacteristicListener;[LJavaUtilUUID;", "remoteDeviceSetCharacteristicWriteListener", "LLeRemoteDeviceMock;LLeCharacteristicWriteListener;[LJavaUtilUUID;", "characteristicSetValue", "LLeGattCharacteristicMock;[B", "LLeGattCharacteristicMock;[BLJavaLangBoolean;", "remoteDeviceReadRssi", "characteristicRead" };
  static const J2ObjcClassInfo _LeMockController = { "LeMockController", "houtbecke.rs.le.mock", ptrTable, methods, NULL, 7, 0x609, 33, 0, -1, -1, -1, -1, -1 };
  return &_LeMockController;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeMockController)

J2OBJC_NAME_MAPPING(LeMockController, "houtbecke.rs.le.mock", "")
