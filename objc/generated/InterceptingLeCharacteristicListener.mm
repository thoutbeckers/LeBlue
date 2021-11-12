
#include "IOSClass.h"
#include "IOSObjectArray.h"
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
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *InterceptingLeCharacteristicListener__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeCharacteristicListener__Annotations$1(void);

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

- (void)dealloc {
  RELEASE_(leCharacteristicListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, 3 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, 6 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeCharacteristicListener:withLeInterceptor:);
  methods[1].selector = @selector(leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:);
  methods[2].selector = @selector(leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leCharacteristicListener_", "LLeCharacteristicListener;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeCharacteristicListener;LLeInterceptor;", "leCharacteristicChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;", (void *)&InterceptingLeCharacteristicListener__Annotations$0, "leCharacteristicNotificationChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", (void *)&InterceptingLeCharacteristicListener__Annotations$1, "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeCharacteristicListener = { "InterceptingLeCharacteristicListener", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeCharacteristicListener;
}

@end

void InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(InterceptingLeCharacteristicListener *self, id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leCharacteristicListener_, leCharacteristicListener);
}

InterceptingLeCharacteristicListener *new_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeCharacteristicListener, initWithLeCharacteristicListener_withLeInterceptor_, leCharacteristicListener, leInterceptor)
}

InterceptingLeCharacteristicListener *create_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeCharacteristicListener, initWithLeCharacteristicListener_withLeInterceptor_, leCharacteristicListener, leInterceptor)
}

IOSObjectArray *InterceptingLeCharacteristicListener__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeCharacteristicListener__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeCharacteristicListener)

J2OBJC_NAME_MAPPING(InterceptingLeCharacteristicListener, "houtbecke.rs.le.interceptor", "")
