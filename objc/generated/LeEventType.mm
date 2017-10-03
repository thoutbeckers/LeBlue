
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeEventType_initWithNSString_withInt_(LeEventType *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(LeEventType)

LeEventType *LeEventType_values_[47];

@implementation LeEventType

+ (LeEventType *)deviceStartScanning {
  return JreEnum(LeEventType, deviceStartScanning);
}

+ (LeEventType *)deviceStopScanning {
  return JreEnum(LeEventType, deviceStopScanning);
}

+ (LeEventType *)deviceRemoveListener {
  return JreEnum(LeEventType, deviceRemoveListener);
}

+ (LeEventType *)deviceCheckBleHardwareAvailable {
  return JreEnum(LeEventType, deviceCheckBleHardwareAvailable);
}

+ (LeEventType *)deviceIsBtEnabled {
  return JreEnum(LeEventType, deviceIsBtEnabled);
}

+ (LeEventType *)deviceAddListener {
  return JreEnum(LeEventType, deviceAddListener);
}

+ (LeEventType *)remoteDeviceConnect {
  return JreEnum(LeEventType, remoteDeviceConnect);
}

+ (LeEventType *)remoteDeviceStartServiceDiscovery {
  return JreEnum(LeEventType, remoteDeviceStartServiceDiscovery);
}

+ (LeEventType *)remoteDeviceClose {
  return JreEnum(LeEventType, remoteDeviceClose);
}

+ (LeEventType *)remoteDeviceDisconnect {
  return JreEnum(LeEventType, remoteDeviceDisconnect);
}

+ (LeEventType *)serviceEnableCharacteristicNotification {
  return JreEnum(LeEventType, serviceEnableCharacteristicNotification);
}

+ (LeEventType *)remoteDeviceGetAddress {
  return JreEnum(LeEventType, remoteDeviceGetAddress);
}

+ (LeEventType *)remoteDeviceAddListener {
  return JreEnum(LeEventType, remoteDeviceAddListener);
}

+ (LeEventType *)remoteDeviceRemoveListener {
  return JreEnum(LeEventType, remoteDeviceRemoveListener);
}

+ (LeEventType *)remoteDeviceSetCharacteristicListener {
  return JreEnum(LeEventType, remoteDeviceSetCharacteristicListener);
}

+ (LeEventType *)remoteDeviceSetCharacteristicWriteListener {
  return JreEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener);
}

+ (LeEventType *)remoteDeviceReadRssi {
  return JreEnum(LeEventType, remoteDeviceReadRssi);
}

+ (LeEventType *)serviceGetUUID {
  return JreEnum(LeEventType, serviceGetUUID);
}

+ (LeEventType *)characteristicGetValue {
  return JreEnum(LeEventType, characteristicGetValue);
}

+ (LeEventType *)characteristicGetIntValue {
  return JreEnum(LeEventType, characteristicGetIntValue);
}

+ (LeEventType *)remoteDeviceGetName {
  return JreEnum(LeEventType, remoteDeviceGetName);
}

+ (LeEventType *)serviceGetCharacteristic {
  return JreEnum(LeEventType, serviceGetCharacteristic);
}

+ (LeEventType *)characteristicSetValue {
  return JreEnum(LeEventType, characteristicSetValue);
}

+ (LeEventType *)characteristicRead {
  return JreEnum(LeEventType, characteristicRead);
}

+ (LeEventType *)remoteDeviceFound {
  return JreEnum(LeEventType, remoteDeviceFound);
}

+ (LeEventType *)deviceState {
  return JreEnum(LeEventType, deviceState);
}

+ (LeEventType *)mockRemoteDeviceFound {
  return JreEnum(LeEventType, mockRemoteDeviceFound);
}

+ (LeEventType *)remoteDeviceConnected {
  return JreEnum(LeEventType, remoteDeviceConnected);
}

+ (LeEventType *)mockRemoteDeviceConnected {
  return JreEnum(LeEventType, mockRemoteDeviceConnected);
}

+ (LeEventType *)remoteDeviceDisconnected {
  return JreEnum(LeEventType, remoteDeviceDisconnected);
}

+ (LeEventType *)remoteDeviceClosed {
  return JreEnum(LeEventType, remoteDeviceClosed);
}

+ (LeEventType *)mockRemoteDeviceDisconnected {
  return JreEnum(LeEventType, mockRemoteDeviceDisconnected);
}

+ (LeEventType *)mockRemoteDeviceClosed {
  return JreEnum(LeEventType, mockRemoteDeviceClosed);
}

+ (LeEventType *)remoteDeviceServicesDiscovered {
  return JreEnum(LeEventType, remoteDeviceServicesDiscovered);
}

+ (LeEventType *)remoteDeviceRssiRead {
  return JreEnum(LeEventType, remoteDeviceRssiRead);
}

+ (LeEventType *)mockRemoteDeviceServicesDiscovered {
  return JreEnum(LeEventType, mockRemoteDeviceServicesDiscovered);
}

+ (LeEventType *)deviceRemoteDeviceServicesDiscovered {
  return JreEnum(LeEventType, deviceRemoteDeviceServicesDiscovered);
}

+ (LeEventType *)characteristicChanged {
  return JreEnum(LeEventType, characteristicChanged);
}

+ (LeEventType *)characteristicNotificationChanged {
  return JreEnum(LeEventType, characteristicNotificationChanged);
}

+ (LeEventType *)characteristicWritten {
  return JreEnum(LeEventType, characteristicWritten);
}

+ (LeEventType *)mockCharacteristicChanged {
  return JreEnum(LeEventType, mockCharacteristicChanged);
}

+ (LeEventType *)mockCharacteristicChangedWithMockedValue {
  return JreEnum(LeEventType, mockCharacteristicChangedWithMockedValue);
}

+ (LeEventType *)mockCharacteristicMockedValue {
  return JreEnum(LeEventType, mockCharacteristicMockedValue);
}

+ (LeEventType *)mockCharacteristicClearMockedValue {
  return JreEnum(LeEventType, mockCharacteristicClearMockedValue);
}

+ (LeEventType *)mockCharacteristicNotificationChanged {
  return JreEnum(LeEventType, mockCharacteristicNotificationChanged);
}

+ (LeEventType *)mockWaitForPoint {
  return JreEnum(LeEventType, mockWaitForPoint);
}

+ (LeEventType *)mockPointReached {
  return JreEnum(LeEventType, mockPointReached);
}

+ (IOSObjectArray *)values {
  return LeEventType_values();
}

+ (LeEventType *)valueOfWithNSString:(NSString *)name {
  return LeEventType_valueOfWithNSString_(name);
}

- (LeEventType_Enum)toNSEnum {
  return (LeEventType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LLeEventType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeEventType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "deviceStartScanning", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "deviceStopScanning", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "deviceRemoveListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "deviceCheckBleHardwareAvailable", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "deviceIsBtEnabled", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "deviceAddListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "remoteDeviceConnect", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "remoteDeviceStartServiceDiscovery", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "remoteDeviceClose", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "remoteDeviceDisconnect", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "serviceEnableCharacteristicNotification", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
    { "remoteDeviceGetAddress", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 13, -1, -1 },
    { "remoteDeviceAddListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 14, -1, -1 },
    { "remoteDeviceRemoveListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 15, -1, -1 },
    { "remoteDeviceSetCharacteristicListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 16, -1, -1 },
    { "remoteDeviceSetCharacteristicWriteListener", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 17, -1, -1 },
    { "remoteDeviceReadRssi", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 18, -1, -1 },
    { "serviceGetUUID", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 19, -1, -1 },
    { "characteristicGetValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 20, -1, -1 },
    { "characteristicGetIntValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 21, -1, -1 },
    { "remoteDeviceGetName", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 22, -1, -1 },
    { "serviceGetCharacteristic", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 23, -1, -1 },
    { "characteristicSetValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 24, -1, -1 },
    { "characteristicRead", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 25, -1, -1 },
    { "remoteDeviceFound", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 26, -1, -1 },
    { "deviceState", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 27, -1, -1 },
    { "mockRemoteDeviceFound", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 28, -1, -1 },
    { "remoteDeviceConnected", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 29, -1, -1 },
    { "mockRemoteDeviceConnected", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 30, -1, -1 },
    { "remoteDeviceDisconnected", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 31, -1, -1 },
    { "remoteDeviceClosed", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 32, -1, -1 },
    { "mockRemoteDeviceDisconnected", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 33, -1, -1 },
    { "mockRemoteDeviceClosed", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 34, -1, -1 },
    { "remoteDeviceServicesDiscovered", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 35, -1, -1 },
    { "remoteDeviceRssiRead", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 36, -1, -1 },
    { "mockRemoteDeviceServicesDiscovered", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 37, -1, -1 },
    { "deviceRemoteDeviceServicesDiscovered", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 38, -1, -1 },
    { "characteristicChanged", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 39, -1, -1 },
    { "characteristicNotificationChanged", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 40, -1, -1 },
    { "characteristicWritten", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 41, -1, -1 },
    { "mockCharacteristicChanged", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 42, -1, -1 },
    { "mockCharacteristicChangedWithMockedValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 43, -1, -1 },
    { "mockCharacteristicMockedValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 44, -1, -1 },
    { "mockCharacteristicClearMockedValue", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 45, -1, -1 },
    { "mockCharacteristicNotificationChanged", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 46, -1, -1 },
    { "mockWaitForPoint", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 47, -1, -1 },
    { "mockPointReached", "LLeEventType;", .constantValue.asLong = 0, 0x4019, -1, 48, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(LeEventType, deviceStartScanning), &JreEnum(LeEventType, deviceStopScanning), &JreEnum(LeEventType, deviceRemoveListener), &JreEnum(LeEventType, deviceCheckBleHardwareAvailable), &JreEnum(LeEventType, deviceIsBtEnabled), &JreEnum(LeEventType, deviceAddListener), &JreEnum(LeEventType, remoteDeviceConnect), &JreEnum(LeEventType, remoteDeviceStartServiceDiscovery), &JreEnum(LeEventType, remoteDeviceClose), &JreEnum(LeEventType, remoteDeviceDisconnect), &JreEnum(LeEventType, serviceEnableCharacteristicNotification), &JreEnum(LeEventType, remoteDeviceGetAddress), &JreEnum(LeEventType, remoteDeviceAddListener), &JreEnum(LeEventType, remoteDeviceRemoveListener), &JreEnum(LeEventType, remoteDeviceSetCharacteristicListener), &JreEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener), &JreEnum(LeEventType, remoteDeviceReadRssi), &JreEnum(LeEventType, serviceGetUUID), &JreEnum(LeEventType, characteristicGetValue), &JreEnum(LeEventType, characteristicGetIntValue), &JreEnum(LeEventType, remoteDeviceGetName), &JreEnum(LeEventType, serviceGetCharacteristic), &JreEnum(LeEventType, characteristicSetValue), &JreEnum(LeEventType, characteristicRead), &JreEnum(LeEventType, remoteDeviceFound), &JreEnum(LeEventType, deviceState), &JreEnum(LeEventType, mockRemoteDeviceFound), &JreEnum(LeEventType, remoteDeviceConnected), &JreEnum(LeEventType, mockRemoteDeviceConnected), &JreEnum(LeEventType, remoteDeviceDisconnected), &JreEnum(LeEventType, remoteDeviceClosed), &JreEnum(LeEventType, mockRemoteDeviceDisconnected), &JreEnum(LeEventType, mockRemoteDeviceClosed), &JreEnum(LeEventType, remoteDeviceServicesDiscovered), &JreEnum(LeEventType, remoteDeviceRssiRead), &JreEnum(LeEventType, mockRemoteDeviceServicesDiscovered), &JreEnum(LeEventType, deviceRemoteDeviceServicesDiscovered), &JreEnum(LeEventType, characteristicChanged), &JreEnum(LeEventType, characteristicNotificationChanged), &JreEnum(LeEventType, characteristicWritten), &JreEnum(LeEventType, mockCharacteristicChanged), &JreEnum(LeEventType, mockCharacteristicChangedWithMockedValue), &JreEnum(LeEventType, mockCharacteristicMockedValue), &JreEnum(LeEventType, mockCharacteristicClearMockedValue), &JreEnum(LeEventType, mockCharacteristicNotificationChanged), &JreEnum(LeEventType, mockWaitForPoint), &JreEnum(LeEventType, mockPointReached), "Ljava/lang/Enum<Lhoutbecke/rs/le/session/LeEventType;>;Lhoutbecke/rs/le/session/EventType;" };
  static const J2ObjcClassInfo _LeEventType = { "LeEventType", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x4011, 2, 47, -1, -1, -1, 49, -1 };
  return &_LeEventType;
}

+ (void)initialize {
  if (self == [LeEventType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 47 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 47; i++) {
      (LeEventType_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      LeEventType_initWithNSString_withInt_(e, JreEnumConstantName(LeEventType_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(LeEventType)
  }
}

@end

void LeEventType_initWithNSString_withInt_(LeEventType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *LeEventType_values() {
  LeEventType_initialize();
  return [IOSObjectArray arrayWithObjects:LeEventType_values_ count:47 type:LeEventType_class_()];
}

LeEventType *LeEventType_valueOfWithNSString_(NSString *name) {
  LeEventType_initialize();
  for (int i = 0; i < 47; i++) {
    LeEventType *e = LeEventType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

LeEventType *LeEventType_fromOrdinal(NSUInteger ordinal) {
  LeEventType_initialize();
  if (ordinal >= 47) {
    return nil;
  }
  return LeEventType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeEventType)
