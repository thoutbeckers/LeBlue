
#include "DummyLeRemoteDevice.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeRemoteDeviceListener.h"

@implementation HoutbeckeRsLeDummyDummyLeRemoteDevice

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HoutbeckeRsLeDummyDummyLeRemoteDevice_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (NSString *)getAddress {
  return nil;
}

- (void)connect {
}

- (void)disconnect {
}

- (void)close {
}

- (void)startServicesDiscovery {
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (NSString *)getName {
  return nil;
}

- (void)readRssi {
}

- (void)refreshDeviceCache {
}

- (void)unpair {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
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
  methods[14].selector = @selector(unpair);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeRemoteDeviceListener;", "removeListener", "startServicesDiscovery", "[LJavaUtilUUID;", "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;" };
  static const J2ObjcClassInfo _HoutbeckeRsLeDummyDummyLeRemoteDevice = { "DummyLeRemoteDevice", "houtbecke.rs.le.dummy", ptrTable, methods, NULL, 7, 0x1, 15, 0, -1, -1, -1, -1, -1 };
  return &_HoutbeckeRsLeDummyDummyLeRemoteDevice;
}

@end

void HoutbeckeRsLeDummyDummyLeRemoteDevice_init(HoutbeckeRsLeDummyDummyLeRemoteDevice *self) {
  NSObject_init(self);
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *new_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_NEW_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *create_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_CREATE_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HoutbeckeRsLeDummyDummyLeRemoteDevice)
