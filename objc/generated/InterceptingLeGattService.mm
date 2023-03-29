
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeGattService.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *InterceptingLeGattService__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeGattService__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeGattService__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeGattService__Annotations$3(void);

@implementation InterceptingLeGattService

- (instancetype)initWithLeGattService:(id<LeGattService>)leGattService
                    withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(self, leGattService, leInterceptor);
  return self;
}

- (JavaUtilUUID *)getUuid {
  @synchronized(leInterceptor_) {
    JavaUtilUUID *uuid = [((id<LeGattService>) nil_chk(leGattService_)) getUuid];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotUUIDWithInterceptingLeGattService:self withJavaUtilUUID:uuid];
    return uuid;
  }
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  @synchronized(leInterceptor_) {
    id<LeGattCharacteristic> leGattCharacteristic = [((id<LeGattService>) nil_chk(leGattService_)) getCharacteristicWithJavaUtilUUID:uuid];
    if (leGattCharacteristic == nil) return nil;
    InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((LeInterceptor *) nil_chk(leInterceptor_)) serviceGotCharacteristicWithInterceptingLeGattService:self withLeGattCharacteristic:leGattCharacteristic];
    [leInterceptor_ gotCharacteristicWithInterceptingLeGattService:self withInterceptingLeGattCharacteristic:iLeGattCharacteristic];
    return iLeGattCharacteristic;
  }
}

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic {
  @synchronized(leInterceptor_) {
    jboolean enabled = [((id<LeGattService>) nil_chk(leGattService_)) enableCharacteristicNotificationWithJavaUtilUUID:characteristic];
    [((LeInterceptor *) nil_chk(leInterceptor_)) enabledCharacteristicNotificationWithInterceptingLeGattService:self withJavaUtilUUID:characteristic withBoolean:enabled];
    return enabled;
  }
}

- (jboolean)isEqual:(id)o {
  if (o == nil) return false;
  if (o == self) return true;
  while ([o isKindOfClass:[InterceptingLeGattService class]]) o = ((InterceptingLeGattService *) nil_chk(((InterceptingLeGattService *) cast_chk(o, [InterceptingLeGattService class]))))->leGattService_;
  return ([LeGattService_class_() isInstance:o]) && [nil_chk(o) isEqual:leGattService_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeGattService>) nil_chk(leGattService_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilUUID;", 0x1, -1, -1, -1, -1, 1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x1, 2, 3, -1, -1, 4, 5 },
    { NULL, "Z", 0x1, 6, 3, -1, -1, -1, 7 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeGattService:withLeInterceptor:);
  methods[1].selector = @selector(getUuid);
  methods[2].selector = @selector(getCharacteristicWithJavaUtilUUID:);
  methods[3].selector = @selector(enableCharacteristicNotificationWithJavaUtilUUID:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leGattService_", "LLeGattService;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeGattService;LLeInterceptor;", (void *)&InterceptingLeGattService__Annotations$0, "getCharacteristic", "LJavaUtilUUID;", (void *)&InterceptingLeGattService__Annotations$1, (void *)&InterceptingLeGattService__Annotations$2, "enableCharacteristicNotification", (void *)&InterceptingLeGattService__Annotations$3, "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeGattService = { "InterceptingLeGattService", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeGattService;
}

@end

void InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(InterceptingLeGattService *self, id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  self->leGattService_ = leGattService;
}

InterceptingLeGattService *new_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

InterceptingLeGattService *create_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

IOSObjectArray *InterceptingLeGattService__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *InterceptingLeGattService__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *InterceptingLeGattService__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeGattService__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeGattService)

J2OBJC_NAME_MAPPING(InterceptingLeGattService, "houtbecke.rs.le.interceptor", "")
