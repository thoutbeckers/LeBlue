
#include "IOSClass.h"
#include "IOSObjectArray.h"
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
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *InterceptingLeCharacteristicWriteListener__Annotations$0(void);

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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, 3 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeCharacteristicWriteListener:withLeInterceptor:);
  methods[1].selector = @selector(leCharacteristicWrittenWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leCharacteristicWriteListener_", "LLeCharacteristicWriteListener;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeCharacteristicWriteListener;LLeInterceptor;", "leCharacteristicWritten", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", (void *)&InterceptingLeCharacteristicWriteListener__Annotations$0, "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeCharacteristicWriteListener = { "InterceptingLeCharacteristicWriteListener", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
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

IOSObjectArray *InterceptingLeCharacteristicWriteListener__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeCharacteristicWriteListener)

J2OBJC_NAME_MAPPING(InterceptingLeCharacteristicWriteListener, "houtbecke.rs.le.interceptor", "")
