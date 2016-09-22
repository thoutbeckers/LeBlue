
#include "IOSObjectArray.h"
#include "InterceptingLeDevice.h"
#include "InterceptingLeDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/util/Map.h"

@implementation InterceptingLeDevice

- (instancetype)initWithLeDevice:(id<LeDevice>)leDevice
               withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(self, leDevice, leInterceptor);
  return self;
}

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      InterceptingLeDeviceListener *iListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceListenerWithLeDeviceListener:listener];
      [((id<LeDevice>) nil_chk(leDevice_)) addListenerWithLeDeviceListener:iListener];
      [leInterceptor_ listenerAddedWithInterceptingLeDevice:self withInterceptingLeDeviceListener:iListener];
    }
  }
}

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((id<LeDevice>) nil_chk(leDevice_)) removeListenerWithLeDeviceListener:[((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceListenerWithLeDeviceListener:listener]];
      [leInterceptor_ listenerRemovedWithInterceptingLeDevice:self];
    }
  }
}

- (jboolean)checkBleHardwareAvailable {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      jboolean bleHardwareEnabled = [((id<LeDevice>) nil_chk(leDevice_)) checkBleHardwareAvailable];
      [((LeInterceptor *) nil_chk(leInterceptor_)) checkedBleHardwareAvailableWithInterceptingLeDevice:self withBoolean:bleHardwareEnabled];
      return bleHardwareEnabled;
    }
  }
}

- (jboolean)isBtEnabled {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      jboolean btEnabled = [((id<LeDevice>) nil_chk(leDevice_)) isBtEnabled];
      [((LeInterceptor *) nil_chk(leInterceptor_)) wasBtEnabledWithInterceptingLeDevice:self withBoolean:btEnabled];
      return btEnabled;
    }
  }
}

- (void)startScanning {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) startedScanningWithInterceptingLeDevice:self];
      [((id<LeDevice>) nil_chk(leDevice_)) startScanning];
    }
  }
}

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) startedScanningWithInterceptingLeDevice:self withJavaUtilUUIDArray:uuids];
      [((id<LeDevice>) nil_chk(leDevice_)) startScanningWithJavaUtilUUIDArray:uuids];
    }
  }
}

- (void)stopScanning {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) stoppedScanningWithInterceptingLeDevice:self];
      [((id<LeDevice>) nil_chk(leDevice_)) stopScanning];
    }
  }
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeDevice class]]) {
    o = ((InterceptingLeDevice *) nil_chk(((InterceptingLeDevice *) cast_chk(o, [InterceptingLeDevice class]))))->leDevice_;
  }
  return [LeDevice_class_() isInstance:o] && [nil_chk(o) isEqual:leDevice_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeDevice>) nil_chk(leDevice_)) hash]);
}

- (void)dealloc {
  RELEASE_(leDevice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeDevice:withLeInterceptor:", "InterceptingLeDevice", NULL, 0x1, NULL, NULL },
    { "addListenerWithLeDeviceListener:", "addListener", "V", 0x21, NULL, NULL },
    { "removeListenerWithLeDeviceListener:", "removeListener", "V", 0x21, NULL, NULL },
    { "checkBleHardwareAvailable", NULL, "Z", 0x21, NULL, NULL },
    { "isBtEnabled", NULL, "Z", 0x21, NULL, NULL },
    { "startScanning", NULL, "V", 0x21, NULL, NULL },
    { "startScanningWithJavaUtilUUIDArray:", "startScanning", "V", 0xa1, NULL, NULL },
    { "stopScanning", NULL, "V", 0x21, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leDevice_", NULL, 0x10, "Lhoutbecke.rs.le.LeDevice;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeDevice = { 2, "InterceptingLeDevice", "houtbecke.rs.le.interceptor", NULL, 0x1, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeDevice;
}

@end

void InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(InterceptingLeDevice *self, id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leDevice_, leDevice);
  [((id<JavaUtilMap>) nil_chk(((LeInterceptor *) nil_chk(leInterceptor))->iDevices_)) putWithId:leDevice withId:self];
}

InterceptingLeDevice *new_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeDevice, initWithLeDevice_withLeInterceptor_, leDevice, leInterceptor)
}

InterceptingLeDevice *create_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeDevice, initWithLeDevice_withLeInterceptor_, leDevice, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeDevice)
