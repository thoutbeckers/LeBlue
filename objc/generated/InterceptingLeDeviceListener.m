
#include "InterceptingLeDevice.h"
#include "InterceptingLeDeviceListener.h"
#include "InterceptingLeRemoteDevice.h"
#include "J2ObjC_source.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeDeviceState.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "LeScanRecord.h"

@implementation InterceptingLeDeviceListener

- (instancetype)initWithLeDeviceListener:(id<LeDeviceListener>)leDeviceListener
                       withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(self, leDeviceListener, leInterceptor);
  return self;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDevice
               withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  [leInterceptor_ deviceFoundWithInterceptingLeDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice withInt:rssi withLeScanRecord:scanRecord];
  [((id<LeDeviceListener>) nil_chk(leDeviceListener_)) leDeviceFoundWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice withInt:rssi withLeScanRecord:scanRecord];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeDeviceListener class]]) o = ((InterceptingLeDeviceListener *) nil_chk(((InterceptingLeDeviceListener *) cast_chk(o, [InterceptingLeDeviceListener class]))))->leDeviceListener_;
  return [LeDeviceListener_class_() isInstance:o] && [((id<LeDeviceListener>) nil_chk(leDeviceListener_)) isEqual:o];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeDeviceListener>) nil_chk(leDeviceListener_)) hash]);
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  [leInterceptor_ deviceStateWithInterceptingLeDeviceListener:self withInterceptingLeDevice:iLeDevice withLeDeviceState:leDeviceState];
  [((id<LeDeviceListener>) nil_chk(leDeviceListener_)) leDeviceStateWithLeDevice:iLeDevice withLeDeviceState:leDeviceState];
}

- (void)dealloc {
  RELEASE_(leDeviceListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeDeviceListener:withLeInterceptor:", "InterceptingLeDeviceListener", NULL, 0x1, NULL, NULL },
    { "leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:", "leDeviceFound", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "leDeviceStateWithLeDevice:withLeDeviceState:", "leDeviceState", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leDeviceListener_", NULL, 0x10, "Lhoutbecke.rs.le.LeDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeDeviceListener = { 2, "InterceptingLeDeviceListener", "houtbecke.rs.le.interceptor", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeDeviceListener;
}

@end

void InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(InterceptingLeDeviceListener *self, id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leDeviceListener_, leDeviceListener);
}

InterceptingLeDeviceListener *new_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeDeviceListener, initWithLeDeviceListener_withLeInterceptor_, leDeviceListener, leInterceptor)
}

InterceptingLeDeviceListener *create_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeDeviceListener, initWithLeDeviceListener_withLeInterceptor_, leDeviceListener, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeDeviceListener)
