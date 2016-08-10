
#include "InterceptingLeCharacteristicListener.h"
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeRemoteDevice.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeGattCharacteristic.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "java/lang/Boolean.h"
#include "java/util/UUID.h"

@implementation InterceptingLeCharacteristicListener

- (instancetype)initWithLeCharacteristicListener:(id<LeCharacteristicListener>)leCharacteristicListener
                               withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(self, leCharacteristicListener, leInterceptor);
  return self;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic {
  InterceptingLeRemoteDevice *iLeRemoteDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeRemoteDeviceWithLeRemoteDevice:remoteDevice];
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [leInterceptor_ getInterceptingLeGattCharacteristicWithLeGattCharacteristic:characteristic];
  if (leCharacteristicListener_ != nil) [leCharacteristicListener_ leCharacteristicChangedWithJavaUtilUUID:uuid withLeRemoteDevice:iLeRemoteDevice withLeGattCharacteristic:iLeGattCharacteristic];
  [leInterceptor_ characteristicChangedWithInterceptingLeCharacteristicListener:self withJavaUtilUUID:uuid withInterceptingLeRemoteDevice:iLeRemoteDevice withInterceptingLeGattCharacteristic:iLeGattCharacteristic];
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
  InterceptingLeRemoteDevice *iLeRemoteDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeRemoteDeviceWithLeRemoteDevice:remoteDevice];
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [leInterceptor_ getInterceptingLeGattCharacteristicWithLeGattCharacteristic:characteristic];
  if (leCharacteristicListener_ != nil) [leCharacteristicListener_ leCharacteristicNotificationChangedWithJavaUtilUUID:uuid withLeRemoteDevice:iLeRemoteDevice withLeGattCharacteristic:iLeGattCharacteristic withBoolean:success];
  [leInterceptor_ characteristicNotificationChangedWithInterceptingLeCharacteristicListener:self withJavaUtilUUID:uuid withInterceptingLeRemoteDevice:iLeRemoteDevice withInterceptingLeGattCharacteristic:iLeGattCharacteristic withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(success)];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeCharacteristicListener class]]) o = ((InterceptingLeCharacteristicListener *) nil_chk(((InterceptingLeCharacteristicListener *) cast_chk(o, [InterceptingLeCharacteristicListener class]))))->leCharacteristicListener_;
  return [LeCharacteristicListener_class_() isInstance:o] && [nil_chk(o) isEqual:leCharacteristicListener_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeCharacteristicListener>) nil_chk(leCharacteristicListener_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeCharacteristicListener:withLeInterceptor:", "InterceptingLeCharacteristicListener", NULL, 0x1, NULL, NULL },
    { "leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:", "leCharacteristicChanged", "V", 0x1, NULL, NULL },
    { "leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicNotificationChanged", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leCharacteristicListener_", NULL, 0x11, "Lhoutbecke.rs.le.LeCharacteristicListener;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeCharacteristicListener = { 2, "InterceptingLeCharacteristicListener", "houtbecke.rs.le.interceptor", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_InterceptingLeCharacteristicListener;
}

@end

void InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(InterceptingLeCharacteristicListener *self, id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  self->leCharacteristicListener_ = leCharacteristicListener;
}

InterceptingLeCharacteristicListener *new_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeCharacteristicListener, initWithLeCharacteristicListener_withLeInterceptor_, leCharacteristicListener, leInterceptor)
}

InterceptingLeCharacteristicListener *create_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeCharacteristicListener, initWithLeCharacteristicListener_withLeInterceptor_, leCharacteristicListener, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeCharacteristicListener)
