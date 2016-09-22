
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

- (instancetype)initWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
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
    return address;
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
    return name;
  }
}

- (void)readRssi {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) readRssiWithInterceptingLeRemoteDevice:self];
    [((id<LeRemoteDevice>) nil_chk(leRemoteDevice_)) readRssi];
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeRemoteDevice:withLeInterceptor:", "InterceptingLeRemoteDevice", NULL, 0x1, NULL, NULL },
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
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leRemoteDevice_", NULL, 0x11, "Lhoutbecke.rs.le.LeRemoteDevice;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeRemoteDevice = { 2, "InterceptingLeRemoteDevice", "houtbecke.rs.le.interceptor", NULL, 0x1, 16, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
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
