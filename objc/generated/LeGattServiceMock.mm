
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "InterceptingLeGattService.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattServiceMock.h"
#include "LeMockController.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *LeGattServiceMock__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeGattServiceMock__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeGattServiceMock__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeGattServiceMock__Annotations$3(void);

@implementation LeGattServiceMock

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)key
                   withLeMockController:(id<LeMockController>)mockController {
  LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(self, key, mockController);
  return self;
}

- (JavaUtilUUID *)getUuid {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceGetUuidWithLeGattServiceMock:self];
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceGetCharacteristicWithLeGattServiceMock:self withJavaUtilUUID:uuid];
}

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceEnableCharacteristicNotificationWithLeGattServiceMock:self withJavaUtilUUID:characteristic];
}

- (jboolean)isEqual:(id)o {
  while ([o isKindOfClass:[InterceptingLeGattService class]]) o = ((InterceptingLeGattService *) nil_chk(((InterceptingLeGattService *) cast_chk(o, [InterceptingLeGattService class]))))->leGattService_;
  if ([o isKindOfClass:[LeGattServiceMock class]]) return [((JavaLangInteger *) nil_chk(((LeGattServiceMock *) nil_chk(((LeGattServiceMock *) o)))->key_)) isEqual:key_];
  return o == self;
}

- (NSUInteger)hash {
  return ((jint) [((JavaLangInteger *) nil_chk(key_)) hash]);
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
  methods[0].selector = @selector(initWithJavaLangInteger:withLeMockController:);
  methods[1].selector = @selector(getUuid);
  methods[2].selector = @selector(getCharacteristicWithJavaUtilUUID:);
  methods[3].selector = @selector(enableCharacteristicNotificationWithJavaUtilUUID:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", "LLeMockController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "key_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangInteger;LLeMockController;", (void *)&LeGattServiceMock__Annotations$0, "getCharacteristic", "LJavaUtilUUID;", (void *)&LeGattServiceMock__Annotations$1, (void *)&LeGattServiceMock__Annotations$2, "enableCharacteristicNotification", (void *)&LeGattServiceMock__Annotations$3, "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _LeGattServiceMock = { "LeGattServiceMock", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_LeGattServiceMock;
}

@end

void LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(LeGattServiceMock *self, JavaLangInteger *key, id<LeMockController> mockController) {
  NSObject_init(self);
  self->key_ = key;
  self->mockController_ = mockController;
}

LeGattServiceMock *new_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController) {
  J2OBJC_NEW_IMPL(LeGattServiceMock, initWithJavaLangInteger_withLeMockController_, key, mockController)
}

LeGattServiceMock *create_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController) {
  J2OBJC_CREATE_IMPL(LeGattServiceMock, initWithJavaLangInteger_withLeMockController_, key, mockController)
}

IOSObjectArray *LeGattServiceMock__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeGattServiceMock__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeGattServiceMock__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeGattServiceMock__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattServiceMock)

J2OBJC_NAME_MAPPING(LeGattServiceMock, "houtbecke.rs.le.mock", "")
