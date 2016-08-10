
#include "IOSObjectArray.h"
#include "InterceptingLeRemoteDevice.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeDeviceMock.h"
#include "LeMockController.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "LeRemoteDeviceMock.h"
#include "java/lang/Integer.h"

@implementation LeRemoteDeviceMock

- (instancetype)initWithInt:(jint)key
       withLeMockController:(id<LeMockController>)mockController
           withLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(self, key, mockController, leDeviceMock);
  return self;
}

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceAddListenerWithLeRemoteDeviceMock:self withLeRemoteDeviceListener:listener];
}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceRemoveListenerWithLeRemoteDeviceMock:self withLeRemoteDeviceListener:listener];
}

- (NSString *)getAddress {
  return [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceGetAddressWithLeRemoteDeviceMock:self];
}

- (void)connect {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceConnectWithLeRemoteDeviceMock:self];
}

- (void)disconnect {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceDisconnectWithLeRemoteDeviceMock:self];
}

- (void)close {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceCloseWithLeRemoteDeviceMock:self];
}

- (void)startServicesDiscovery {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:self];
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:self withJavaUtilUUIDArray:uuids];
}

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:self withLeCharacteristicWriteListener:listener withJavaUtilUUIDArray:uuids];
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:self withLeCharacteristicListener:listener withJavaUtilUUIDArray:uuids];
}

- (NSString *)getName {
  return [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceGetNameWithLeRemoteDeviceMock:self];
}

- (void)readRssi {
  [((id<LeMockController>) nil_chk(mockController_)) remoteDeviceReadRssiWithLeRemoteDeviceMock:self];
}

- (jboolean)isEqual:(id)o {
  while ([o isKindOfClass:[InterceptingLeRemoteDevice class]]) o = ((InterceptingLeRemoteDevice *) nil_chk(((InterceptingLeRemoteDevice *) cast_chk(o, [InterceptingLeRemoteDevice class]))))->leRemoteDevice_;
  if ([o isKindOfClass:[LeRemoteDeviceMock class]]) return [((JavaLangInteger *) nil_chk(((LeRemoteDeviceMock *) nil_chk(((LeRemoteDeviceMock *) cast_chk(o, [LeRemoteDeviceMock class]))))->key_)) isEqual:key_];
  return o == self;
}

- (NSUInteger)hash {
  return ((jint) [((JavaLangInteger *) nil_chk(key_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLeMockController:withLeDeviceMock:", "LeRemoteDeviceMock", NULL, 0x1, NULL, NULL },
    { "addListenerWithLeRemoteDeviceListener:", "addListener", "V", 0x1, NULL, NULL },
    { "removeListenerWithLeRemoteDeviceListener:", "removeListener", "V", 0x1, NULL, NULL },
    { "getAddress", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "connect", NULL, "V", 0x1, NULL, NULL },
    { "disconnect", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "startServicesDiscovery", NULL, "V", 0x1, NULL, NULL },
    { "startServicesDiscoveryWithJavaUtilUUIDArray:", "startServicesDiscovery", "V", 0x81, NULL, NULL },
    { "setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "setCharacteristicWriteListener", "V", 0x81, NULL, NULL },
    { "setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:", "setCharacteristicListener", "V", 0x81, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "readRssi", NULL, "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", NULL, 0x0, "Lhoutbecke.rs.le.mock.LeMockController;", NULL, NULL, .constantValue.asLong = 0 },
    { "leDeviceMock_", NULL, 0x0, "Lhoutbecke.rs.le.mock.LeDeviceMock;", NULL, NULL, .constantValue.asLong = 0 },
    { "key_", NULL, 0x10, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeRemoteDeviceMock = { 2, "LeRemoteDeviceMock", "houtbecke.rs.le.mock", NULL, 0x1, 15, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeRemoteDeviceMock;
}

@end

void LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(LeRemoteDeviceMock *self, jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  NSObject_init(self);
  self->key_ = JavaLangInteger_valueOfWithInt_(key);
  self->mockController_ = mockController;
  self->leDeviceMock_ = leDeviceMock;
}

LeRemoteDeviceMock *new_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  J2OBJC_NEW_IMPL(LeRemoteDeviceMock, initWithInt_withLeMockController_withLeDeviceMock_, key, mockController, leDeviceMock)
}

LeRemoteDeviceMock *create_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  J2OBJC_CREATE_IMPL(LeRemoteDeviceMock, initWithInt_withLeMockController_withLeDeviceMock_, key, mockController, leDeviceMock)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeRemoteDeviceMock)
