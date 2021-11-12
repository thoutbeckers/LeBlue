
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeGattService.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

@interface LeGattService : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeGattService__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeGattService__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeGattService__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeGattService__Annotations$3(void);

@implementation LeGattService

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilUUID;", 0x401, -1, -1, -1, -1, 0, -1 },
    { NULL, "LLeGattCharacteristic;", 0x401, 1, 2, -1, -1, 3, 4 },
    { NULL, "Z", 0x401, 5, 2, -1, -1, -1, 6 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getUuid);
  methods[1].selector = @selector(getCharacteristicWithJavaUtilUUID:);
  methods[2].selector = @selector(enableCharacteristicNotificationWithJavaUtilUUID:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&LeGattService__Annotations$0, "getCharacteristic", "LJavaUtilUUID;", (void *)&LeGattService__Annotations$1, (void *)&LeGattService__Annotations$2, "enableCharacteristicNotification", (void *)&LeGattService__Annotations$3 };
  static const J2ObjcClassInfo _LeGattService = { "LeGattService", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_LeGattService;
}

@end

IOSObjectArray *LeGattService__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeGattService__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeGattService__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeGattService__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattService)

J2OBJC_NAME_MAPPING(LeGattService, "houtbecke.rs.le", "")
