
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeEventType_initWithNSString_withInt_(LeEventType *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(LeEventType)

LeEventType *LeEventType_values_[47];

@implementation LeEventType

+ (IOSObjectArray *)values {
  return LeEventType_values();
}

+ (LeEventType *)valueOfWithNSString:(NSString *)name {
  return LeEventType_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [LeEventType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 47 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(LeEventType, deviceStartScanning) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceStartScanning", 0);
    (JreEnum(LeEventType, deviceStopScanning) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceStopScanning", 1);
    (JreEnum(LeEventType, deviceRemoveListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceRemoveListener", 2);
    (JreEnum(LeEventType, deviceCheckBleHardwareAvailable) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceCheckBleHardwareAvailable", 3);
    (JreEnum(LeEventType, deviceIsBtEnabled) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceIsBtEnabled", 4);
    (JreEnum(LeEventType, deviceAddListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceAddListener", 5);
    (JreEnum(LeEventType, remoteDeviceConnect) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceConnect", 6);
    (JreEnum(LeEventType, remoteDeviceStartServiceDiscovery) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceStartServiceDiscovery", 7);
    (JreEnum(LeEventType, remoteDeviceClose) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceClose", 8);
    (JreEnum(LeEventType, remoteDeviceDisconnect) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceDisconnect", 9);
    (JreEnum(LeEventType, serviceEnableCharacteristicNotification) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"serviceEnableCharacteristicNotification", 10);
    (JreEnum(LeEventType, remoteDeviceGetAddress) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceGetAddress", 11);
    (JreEnum(LeEventType, remoteDeviceAddListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceAddListener", 12);
    (JreEnum(LeEventType, remoteDeviceRemoveListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceRemoveListener", 13);
    (JreEnum(LeEventType, remoteDeviceSetCharacteristicListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceSetCharacteristicListener", 14);
    (JreEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceSetCharacteristicWriteListener", 15);
    (JreEnum(LeEventType, remoteDeviceReadRssi) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceReadRssi", 16);
    (JreEnum(LeEventType, serviceGetUUID) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"serviceGetUUID", 17);
    (JreEnum(LeEventType, characteristicGetValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicGetValue", 18);
    (JreEnum(LeEventType, characteristicGetIntValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicGetIntValue", 19);
    (JreEnum(LeEventType, remoteDeviceGetName) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceGetName", 20);
    (JreEnum(LeEventType, serviceGetCharacteristic) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"serviceGetCharacteristic", 21);
    (JreEnum(LeEventType, characteristicSetValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicSetValue", 22);
    (JreEnum(LeEventType, characteristicRead) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicRead", 23);
    (JreEnum(LeEventType, remoteDeviceFound) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceFound", 24);
    (JreEnum(LeEventType, deviceState) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceState", 25);
    (JreEnum(LeEventType, mockRemoteDeviceFound) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockRemoteDeviceFound", 26);
    (JreEnum(LeEventType, remoteDeviceConnected) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceConnected", 27);
    (JreEnum(LeEventType, mockRemoteDeviceConnected) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockRemoteDeviceConnected", 28);
    (JreEnum(LeEventType, remoteDeviceDisconnected) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceDisconnected", 29);
    (JreEnum(LeEventType, remoteDeviceClosed) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceClosed", 30);
    (JreEnum(LeEventType, mockRemoteDeviceDisconnected) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockRemoteDeviceDisconnected", 31);
    (JreEnum(LeEventType, mockRemoteDeviceClosed) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockRemoteDeviceClosed", 32);
    (JreEnum(LeEventType, remoteDeviceServicesDiscovered) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceServicesDiscovered", 33);
    (JreEnum(LeEventType, remoteDeviceRssiRead) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"remoteDeviceRssiRead", 34);
    (JreEnum(LeEventType, mockRemoteDeviceServicesDiscovered) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockRemoteDeviceServicesDiscovered", 35);
    (JreEnum(LeEventType, deviceRemoteDeviceServicesDiscovered) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"deviceRemoteDeviceServicesDiscovered", 36);
    (JreEnum(LeEventType, characteristicChanged) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicChanged", 37);
    (JreEnum(LeEventType, characteristicNotificationChanged) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicNotificationChanged", 38);
    (JreEnum(LeEventType, characteristicWritten) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"characteristicWritten", 39);
    (JreEnum(LeEventType, mockCharacteristicChanged) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockCharacteristicChanged", 40);
    (JreEnum(LeEventType, mockCharacteristicChangedWithMockedValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockCharacteristicChangedWithMockedValue", 41);
    (JreEnum(LeEventType, mockCharacteristicMockedValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockCharacteristicMockedValue", 42);
    (JreEnum(LeEventType, mockCharacteristicClearMockedValue) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockCharacteristicClearMockedValue", 43);
    (JreEnum(LeEventType, mockCharacteristicNotificationChanged) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockCharacteristicNotificationChanged", 44);
    (JreEnum(LeEventType, mockWaitForPoint) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockWaitForPoint", 45);
    (JreEnum(LeEventType, mockPointReached) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeEventType_initWithNSString_withInt_(e, @"mockPointReached", 46);
    J2OBJC_SET_INITIALIZED(LeEventType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "deviceStartScanning", "deviceStartScanning", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceStartScanning), NULL, .constantValue.asLong = 0 },
    { "deviceStopScanning", "deviceStopScanning", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceStopScanning), NULL, .constantValue.asLong = 0 },
    { "deviceRemoveListener", "deviceRemoveListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceRemoveListener), NULL, .constantValue.asLong = 0 },
    { "deviceCheckBleHardwareAvailable", "deviceCheckBleHardwareAvailable", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceCheckBleHardwareAvailable), NULL, .constantValue.asLong = 0 },
    { "deviceIsBtEnabled", "deviceIsBtEnabled", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceIsBtEnabled), NULL, .constantValue.asLong = 0 },
    { "deviceAddListener", "deviceAddListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceAddListener), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceConnect", "remoteDeviceConnect", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceConnect), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceStartServiceDiscovery", "remoteDeviceStartServiceDiscovery", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceStartServiceDiscovery), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceClose", "remoteDeviceClose", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceClose), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceDisconnect", "remoteDeviceDisconnect", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceDisconnect), NULL, .constantValue.asLong = 0 },
    { "serviceEnableCharacteristicNotification", "serviceEnableCharacteristicNotification", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, serviceEnableCharacteristicNotification), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceGetAddress", "remoteDeviceGetAddress", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceGetAddress), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceAddListener", "remoteDeviceAddListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceAddListener), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceRemoveListener", "remoteDeviceRemoveListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceRemoveListener), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceSetCharacteristicListener", "remoteDeviceSetCharacteristicListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceSetCharacteristicListener), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceSetCharacteristicWriteListener", "remoteDeviceSetCharacteristicWriteListener", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceReadRssi", "remoteDeviceReadRssi", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceReadRssi), NULL, .constantValue.asLong = 0 },
    { "serviceGetUUID", "serviceGetUUID", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, serviceGetUUID), NULL, .constantValue.asLong = 0 },
    { "characteristicGetValue", "characteristicGetValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicGetValue), NULL, .constantValue.asLong = 0 },
    { "characteristicGetIntValue", "characteristicGetIntValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicGetIntValue), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceGetName", "remoteDeviceGetName", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceGetName), NULL, .constantValue.asLong = 0 },
    { "serviceGetCharacteristic", "serviceGetCharacteristic", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, serviceGetCharacteristic), NULL, .constantValue.asLong = 0 },
    { "characteristicSetValue", "characteristicSetValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicSetValue), NULL, .constantValue.asLong = 0 },
    { "characteristicRead", "characteristicRead", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicRead), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceFound", "remoteDeviceFound", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceFound), NULL, .constantValue.asLong = 0 },
    { "deviceState", "deviceState", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceState), NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceFound", "mockRemoteDeviceFound", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockRemoteDeviceFound), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceConnected", "remoteDeviceConnected", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceConnected), NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceConnected", "mockRemoteDeviceConnected", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockRemoteDeviceConnected), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceDisconnected", "remoteDeviceDisconnected", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceDisconnected), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceClosed", "remoteDeviceClosed", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceClosed), NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceDisconnected", "mockRemoteDeviceDisconnected", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockRemoteDeviceDisconnected), NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceClosed", "mockRemoteDeviceClosed", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockRemoteDeviceClosed), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceServicesDiscovered", "remoteDeviceServicesDiscovered", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceServicesDiscovered), NULL, .constantValue.asLong = 0 },
    { "remoteDeviceRssiRead", "remoteDeviceRssiRead", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, remoteDeviceRssiRead), NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceServicesDiscovered", "mockRemoteDeviceServicesDiscovered", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockRemoteDeviceServicesDiscovered), NULL, .constantValue.asLong = 0 },
    { "deviceRemoteDeviceServicesDiscovered", "deviceRemoteDeviceServicesDiscovered", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, deviceRemoteDeviceServicesDiscovered), NULL, .constantValue.asLong = 0 },
    { "characteristicChanged", "characteristicChanged", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicChanged), NULL, .constantValue.asLong = 0 },
    { "characteristicNotificationChanged", "characteristicNotificationChanged", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicNotificationChanged), NULL, .constantValue.asLong = 0 },
    { "characteristicWritten", "characteristicWritten", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, characteristicWritten), NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicChanged", "mockCharacteristicChanged", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockCharacteristicChanged), NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicChangedWithMockedValue", "mockCharacteristicChangedWithMockedValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockCharacteristicChangedWithMockedValue), NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicMockedValue", "mockCharacteristicMockedValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockCharacteristicMockedValue), NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicClearMockedValue", "mockCharacteristicClearMockedValue", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockCharacteristicClearMockedValue), NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicNotificationChanged", "mockCharacteristicNotificationChanged", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockCharacteristicNotificationChanged), NULL, .constantValue.asLong = 0 },
    { "mockWaitForPoint", "mockWaitForPoint", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockWaitForPoint), NULL, .constantValue.asLong = 0 },
    { "mockPointReached", "mockPointReached", 0x4019, "Lhoutbecke.rs.le.session.LeEventType;", &JreEnum(LeEventType, mockPointReached), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.session.LeEventType;"};
  static const J2ObjcClassInfo _LeEventType = { 2, "LeEventType", "houtbecke.rs.le.session", NULL, 0x4011, 0, NULL, 47, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/session/LeEventType;>;Lhoutbecke/rs/le/session/EventType;" };
  return &_LeEventType;
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
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
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
