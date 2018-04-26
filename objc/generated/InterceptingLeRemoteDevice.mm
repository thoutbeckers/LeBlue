
#include "IOSObjectArray.h"
#include "InterceptingLeCharacteristicListener.h"
#include "InterceptingLeCharacteristicWriteListener.h"
#include "InterceptingLeRemoteDevice.h"
#include "InterceptingLeRemoteDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"

@implementation InterceptingLeRemoteDevice

- (instancetype __nonnull)initWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                               withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(self, leRemoteDevice, leInterceptor);
  return self;
}

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  @synchronized(leInterceptor_) {
    InterceptingLeRemoteDeviceListener *iListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:listener];
    [leInterceptor_ remoteListenerAddedWithInterceptingLeRemoteDevice:self withInterceptingLeRemoteDeviceListener:iListener];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) addListenerWithLeRemoteDeviceListener:iListener];
  }
}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  @synchronized(leInterceptor_) {
    InterceptingLeRemoteDeviceListener *iListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:listener];
    [leInterceptor_ remoteListenerRemovedWithInterceptingLeRemoteDevice:self withInterceptingLeRemoteDeviceListener:iListener];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) removeListenerWithLeRemoteDeviceListener:iListener];
  }
}

- (NSString *)getAddress {
  @synchronized(leInterceptor_) {
    NSString *address = [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) getAddress];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotAddressWithInterceptingLeRemoteDevice:self withNSString:address];
    return JreRetainedLocalValue(address);
  }
}

- (void)connect {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) connectingWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) connect];
  }
}

- (void)disconnect {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) disconnectingWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) disconnect];
  }
}

- (void)close {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) closingWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) close];
  }
}

- (void)startServicesDiscovery {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) serviceDiscoveryStartedWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) startServicesDiscovery];
  }
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) serviceDiscoveryStartedWithInterceptingLeRemoteDevice:self withJavaUtilUUIDArray:uuids];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) startServicesDiscoveryWithJavaUtilUUIDArray:uuids];
  }
}

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  @synchronized(leInterceptor_) {
    InterceptingLeCharacteristicWriteListener *iCharacteristicsWriteListener = nil;
    if (listener != nil) iCharacteristicsWriteListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:listener];
    [((LeInterceptor *) nil_chk(leInterceptor_)) characteristicWriteListenerSetWithInterceptingLeRemoteDevice:self withInterceptingLeCharacteristicWriteListener:iCharacteristicsWriteListener withJavaUtilUUIDArray:uuids];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) setCharacteristicWriteListenerWithLeCharacteristicWriteListener:iCharacteristicsWriteListener withJavaUtilUUIDArray:uuids];
  }
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  @synchronized(leInterceptor_) {
    InterceptingLeCharacteristicListener *iCharacteristicsListener = nil;
    if (listener != nil) iCharacteristicsListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingCharacteristicsListenerWithLeCharacteristicListener:listener];
    [((LeInterceptor *) nil_chk(leInterceptor_)) characteristicListenerSetWithInterceptingLeRemoteDevice:self withInterceptingLeCharacteristicListener:iCharacteristicsListener withJavaUtilUUIDArray:uuids];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:iCharacteristicsListener withJavaUtilUUIDArray:uuids];
  }
}

- (NSString *)getName {
  @synchronized(leInterceptor_) {
    NSString *name = [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) getName];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotRemoteDeviceNameWithInterceptingLeRemoteDevice:self withNSString:name];
    return JreRetainedLocalValue(name);
  }
}

- (void)readRssi {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) readRssiWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) readRssi];
  }
}

- (void)refreshDeviceCache {
  @synchronized(leInterceptor_) {
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) refreshDeviceCache];
  }
}

- (jboolean)isEqual:(id)o {
  if ([o isKindOfClass:[InterceptingLeRemoteDevice class]]) return [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) isEqual:((InterceptingLeRemoteDevice *) nil_chk(((InterceptingLeRemoteDevice *) cast_chk(o, [InterceptingLeRemoteDevice class]))))->leRemoteDevice_];
  return [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) isEqual:o];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) hash]);
}

- (NSString *)description {
  return JreStrcat("$@C", @"InterceptingLeRemoteDevice{leRemoteDevice=", leRemoteDevice_, '}');
}

- (void)dealloc {
  RELEASE_(leRemoteDevice_);
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
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeRemoteDevice:withLeInterceptor:);
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
  methods[16].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leRemoteDevice_", "LLeRemoteDevice;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeRemoteDevice;LLeInterceptor;", "addListener", "LLeRemoteDeviceListener;", "removeListener", "startServicesDiscovery", "[LJavaUtilUUID;", "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _InterceptingLeRemoteDevice = { "InterceptingLeRemoteDevice", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 17, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeRemoteDevice;
}

@end

void InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(InterceptingLeRemoteDevice *self, id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leRemoteDevice_, leRemoteDevice);
}

InterceptingLeRemoteDevice *new_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeRemoteDevice, initWithLeRemoteDevice_withLeInterceptor_, leRemoteDevice, leInterceptor)
}

InterceptingLeRemoteDevice *create_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeRemoteDevice, initWithLeRemoteDevice_withLeInterceptor_, leRemoteDevice, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeRemoteDevice)
