
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

- (void)refreshDeviceCache {
}

- (jboolean)isEqual:(id)o {
  while ([o isKindOfClass:[InterceptingLeRemoteDevice class]]) o = ((InterceptingLeRemoteDevice *) nil_chk(((InterceptingLeRemoteDevice *) cast_chk(o, [InterceptingLeRemoteDevice class]))))->leRemoteDevice_;
  if ([o isKindOfClass:[LeRemoteDeviceMock class]]) return [((JavaLangInteger *) nil_chk(((LeRemoteDeviceMock *) nil_chk(((LeRemoteDeviceMock *) cast_chk(o, [LeRemoteDeviceMock class]))))->key_)) isEqual:key_];
  return o == self;
}

- (NSUInteger)hash {
  return ((jint) [((JavaLangInteger *) nil_chk(key_)) hash]);
}

- (void)dealloc {
  RELEASE_(mockController_);
  RELEASE_(leDeviceMock_);
  RELEASE_(key_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withLeMockController:withLeDeviceMock:);
  methods[1].selector = @selector(addListenerWithLeRemoteDeviceListener:);
  methods[2].selector = @selector(removeListenerWithLeRemoteDeviceListener:);
  methods[3].selector = @selector(getAddress);
  methods[4].selector = @selector(connect);
  methods[5].selector = @selector(disconnect);
  methods[6].selector = @selector(close);
  methods[7].selector = @selector(startServicesDiscovery);
  methods[8].selector = @selector(startServicesDiscoveryWithJavaUtilUUIDArray:);
  methods[9].selector = @selector(setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[10].selector = @selector(setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[11].selector = @selector(getName);
  methods[12].selector = @selector(readRssi);
  methods[13].selector = @selector(refreshDeviceCache);
  methods[14].selector = @selector(isEqual:);
  methods[15].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", "LLeMockController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "leDeviceMock_", "LLeDeviceMock;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "key_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILLeMockController;LLeDeviceMock;", "addListener", "LLeRemoteDeviceListener;", "removeListener", "startServicesDiscovery", "[LJavaUtilUUID;", "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _LeRemoteDeviceMock = { "LeRemoteDeviceMock", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 16, 3, -1, -1, -1, -1, -1 };
  return &_LeRemoteDeviceMock;
}

@end

void LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(LeRemoteDeviceMock *self, jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  NSObject_init(self);
  JreStrongAssign(&self->key_, JavaLangInteger_valueOfWithInt_(key));
  JreStrongAssign(&self->mockController_, mockController);
  JreStrongAssign(&self->leDeviceMock_, leDeviceMock);
}

LeRemoteDeviceMock *new_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  J2OBJC_NEW_IMPL(LeRemoteDeviceMock, initWithInt_withLeMockController_withLeDeviceMock_, key, mockController, leDeviceMock)
}

LeRemoteDeviceMock *create_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) {
  J2OBJC_CREATE_IMPL(LeRemoteDeviceMock, initWithInt_withLeMockController_withLeDeviceMock_, key, mockController, leDeviceMock)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeRemoteDeviceMock)

J2OBJC_NAME_MAPPING(LeRemoteDeviceMock, "houtbecke.rs.le.mock", "")
