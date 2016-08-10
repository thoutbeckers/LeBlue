
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeEventType_initWithNSString_withInt_(LeEventType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static LeEventType *new_LeEventType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

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
    JreEnum(LeEventType, deviceStartScanning) = new_LeEventType_initWithNSString_withInt_(@"deviceStartScanning", 0);
    JreEnum(LeEventType, deviceStopScanning) = new_LeEventType_initWithNSString_withInt_(@"deviceStopScanning", 1);
    JreEnum(LeEventType, deviceRemoveListener) = new_LeEventType_initWithNSString_withInt_(@"deviceRemoveListener", 2);
    JreEnum(LeEventType, deviceCheckBleHardwareAvailable) = new_LeEventType_initWithNSString_withInt_(@"deviceCheckBleHardwareAvailable", 3);
    JreEnum(LeEventType, deviceIsBtEnabled) = new_LeEventType_initWithNSString_withInt_(@"deviceIsBtEnabled", 4);
    JreEnum(LeEventType, deviceAddListener) = new_LeEventType_initWithNSString_withInt_(@"deviceAddListener", 5);
    JreEnum(LeEventType, remoteDeviceConnect) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceConnect", 6);
    JreEnum(LeEventType, remoteDeviceStartServiceDiscovery) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceStartServiceDiscovery", 7);
    JreEnum(LeEventType, remoteDeviceClose) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceClose", 8);
    JreEnum(LeEventType, remoteDeviceDisconnect) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceDisconnect", 9);
    JreEnum(LeEventType, serviceEnableCharacteristicNotification) = new_LeEventType_initWithNSString_withInt_(@"serviceEnableCharacteristicNotification", 10);
    JreEnum(LeEventType, remoteDeviceGetAddress) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceGetAddress", 11);
    JreEnum(LeEventType, remoteDeviceAddListener) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceAddListener", 12);
    JreEnum(LeEventType, remoteDeviceRemoveListener) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceRemoveListener", 13);
    JreEnum(LeEventType, remoteDeviceSetCharacteristicListener) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceSetCharacteristicListener", 14);
    JreEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceSetCharacteristicWriteListener", 15);
    JreEnum(LeEventType, remoteDeviceReadRssi) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceReadRssi", 16);
    JreEnum(LeEventType, serviceGetUUID) = new_LeEventType_initWithNSString_withInt_(@"serviceGetUUID", 17);
    JreEnum(LeEventType, characteristicGetValue) = new_LeEventType_initWithNSString_withInt_(@"characteristicGetValue", 18);
    JreEnum(LeEventType, characteristicGetIntValue) = new_LeEventType_initWithNSString_withInt_(@"characteristicGetIntValue", 19);
    JreEnum(LeEventType, remoteDeviceGetName) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceGetName", 20);
    JreEnum(LeEventType, serviceGetCharacteristic) = new_LeEventType_initWithNSString_withInt_(@"serviceGetCharacteristic", 21);
    JreEnum(LeEventType, characteristicSetValue) = new_LeEventType_initWithNSString_withInt_(@"characteristicSetValue", 22);
    JreEnum(LeEventType, characteristicRead) = new_LeEventType_initWithNSString_withInt_(@"characteristicRead", 23);
    JreEnum(LeEventType, remoteDeviceFound) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceFound", 24);
    JreEnum(LeEventType, deviceState) = new_LeEventType_initWithNSString_withInt_(@"deviceState", 25);
    JreEnum(LeEventType, mockRemoteDeviceFound) = new_LeEventType_initWithNSString_withInt_(@"mockRemoteDeviceFound", 26);
    JreEnum(LeEventType, remoteDeviceConnected) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceConnected", 27);
    JreEnum(LeEventType, mockRemoteDeviceConnected) = new_LeEventType_initWithNSString_withInt_(@"mockRemoteDeviceConnected", 28);
    JreEnum(LeEventType, remoteDeviceDisconnected) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceDisconnected", 29);
    JreEnum(LeEventType, remoteDeviceClosed) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceClosed", 30);
    JreEnum(LeEventType, mockRemoteDeviceDisconnected) = new_LeEventType_initWithNSString_withInt_(@"mockRemoteDeviceDisconnected", 31);
    JreEnum(LeEventType, mockRemoteDeviceClosed) = new_LeEventType_initWithNSString_withInt_(@"mockRemoteDeviceClosed", 32);
    JreEnum(LeEventType, remoteDeviceServicesDiscovered) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceServicesDiscovered", 33);
    JreEnum(LeEventType, remoteDeviceRssiRead) = new_LeEventType_initWithNSString_withInt_(@"remoteDeviceRssiRead", 34);
    JreEnum(LeEventType, mockRemoteDeviceServicesDiscovered) = new_LeEventType_initWithNSString_withInt_(@"mockRemoteDeviceServicesDiscovered", 35);
    JreEnum(LeEventType, deviceRemoteDeviceServicesDiscovered) = new_LeEventType_initWithNSString_withInt_(@"deviceRemoteDeviceServicesDiscovered", 36);
    JreEnum(LeEventType, characteristicChanged) = new_LeEventType_initWithNSString_withInt_(@"characteristicChanged", 37);
    JreEnum(LeEventType, characteristicNotificationChanged) = new_LeEventType_initWithNSString_withInt_(@"characteristicNotificationChanged", 38);
    JreEnum(LeEventType, characteristicWritten) = new_LeEventType_initWithNSString_withInt_(@"characteristicWritten", 39);
    JreEnum(LeEventType, mockCharacteristicChanged) = new_LeEventType_initWithNSString_withInt_(@"mockCharacteristicChanged", 40);
    JreEnum(LeEventType, mockCharacteristicChangedWithMockedValue) = new_LeEventType_initWithNSString_withInt_(@"mockCharacteristicChangedWithMockedValue", 41);
    JreEnum(LeEventType, mockCharacteristicMockedValue) = new_LeEventType_initWithNSString_withInt_(@"mockCharacteristicMockedValue", 42);
    JreEnum(LeEventType, mockCharacteristicClearMockedValue) = new_LeEventType_initWithNSString_withInt_(@"mockCharacteristicClearMockedValue", 43);
    JreEnum(LeEventType, mockCharacteristicNotificationChanged) = new_LeEventType_initWithNSString_withInt_(@"mockCharacteristicNotificationChanged", 44);
    JreEnum(LeEventType, mockWaitForPoint) = new_LeEventType_initWithNSString_withInt_(@"mockWaitForPoint", 45);
    JreEnum(LeEventType, mockPointReached) = new_LeEventType_initWithNSString_withInt_(@"mockPointReached", 46);
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

LeEventType *new_LeEventType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(LeEventType, initWithNSString_withInt_, __name, __ordinal)
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
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
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
