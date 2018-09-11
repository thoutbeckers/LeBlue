
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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeDeviceListener:withLeInterceptor:);
  methods[1].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leDeviceListener_", "LLeDeviceListener;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeDeviceListener;LLeInterceptor;", "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "equals", "LNSObject;", "hashCode", "leDeviceState", "LLeDevice;LLeDeviceState;" };
  static const J2ObjcClassInfo _InterceptingLeDeviceListener = { "InterceptingLeDeviceListener", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, -1, -1 };
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

J2OBJC_NAME_MAPPING(InterceptingLeDeviceListener, "houtbecke.rs.le.interceptor", "")
