
#include "InterceptingLeCharacteristicWriteListener.h"
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeRemoteDevice.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeGattCharacteristic.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "java/lang/Boolean.h"
#include "java/util/UUID.h"

@implementation InterceptingLeCharacteristicWriteListener

- (instancetype)initWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)leCharacteristicWriteListener
                                    withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(self, leCharacteristicWriteListener, leInterceptor);
  return self;
}

- (void)leCharacteristicWrittenWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                    withBoolean:(jboolean)success {
  InterceptingLeRemoteDevice *iLeRemoteDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeRemoteDeviceWithLeRemoteDevice:remoteDevice];
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [leInterceptor_ getInterceptingLeGattCharacteristicWithLeGattCharacteristic:characteristic];
  if (leCharacteristicWriteListener_ != nil) [leCharacteristicWriteListener_ leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:iLeRemoteDevice withLeGattCharacteristic:iLeGattCharacteristic withBoolean:success];
  [leInterceptor_ characteristicWrittenWithInterceptingLeCharacteristicWriteListener:self withJavaUtilUUID:uuid withInterceptingLeRemoteDevice:iLeRemoteDevice withInterceptingLeGattCharacteristic:iLeGattCharacteristic withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(success)];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeCharacteristicWriteListener class]]) o = ((InterceptingLeCharacteristicWriteListener *) nil_chk(((InterceptingLeCharacteristicWriteListener *) cast_chk(o, [InterceptingLeCharacteristicWriteListener class]))))->leCharacteristicWriteListener_;
  return [LeCharacteristicListener_class_() isInstance:o] && [nil_chk(o) isEqual:leCharacteristicWriteListener_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeCharacteristicWriteListener>) nil_chk(leCharacteristicWriteListener_)) hash]);
}

- (void)dealloc {
  RELEASE_(leCharacteristicWriteListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeCharacteristicWriteListener:withLeInterceptor:", "InterceptingLeCharacteristicWriteListener", NULL, 0x1, NULL, NULL },
    { "leCharacteristicWrittenWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicWritten", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leCharacteristicWriteListener_", NULL, 0x11, "Lhoutbecke.rs.le.LeCharacteristicWriteListener;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeCharacteristicWriteListener = { 2, "InterceptingLeCharacteristicWriteListener", "houtbecke.rs.le.interceptor", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeCharacteristicWriteListener;
}

@end

void InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(InterceptingLeCharacteristicWriteListener *self, id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leCharacteristicWriteListener_, leCharacteristicWriteListener);
}

InterceptingLeCharacteristicWriteListener *new_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeCharacteristicWriteListener, initWithLeCharacteristicWriteListener_withLeInterceptor_, leCharacteristicWriteListener, leInterceptor)
}

InterceptingLeCharacteristicWriteListener *create_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeCharacteristicWriteListener, initWithLeCharacteristicWriteListener_withLeInterceptor_, leCharacteristicWriteListener, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeCharacteristicWriteListener)
