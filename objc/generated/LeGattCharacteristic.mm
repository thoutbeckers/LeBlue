
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/Nullable.h"
#include "javax/annotation/meta/When.h"

@interface LeGattCharacteristic : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeGattCharacteristic__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeGattCharacteristic__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeGattCharacteristic__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeGattCharacteristic__Annotations$3(void);

@implementation LeGattCharacteristic

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[B", 0x401, -1, -1, -1, -1, 0, -1 },
    { NULL, "I", 0x401, 1, 2, -1, -1, -1, 3 },
    { NULL, "V", 0x401, 4, 5, -1, -1, -1, 6 },
    { NULL, "V", 0x401, 4, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getValue);
  methods[1].selector = @selector(getIntValueWithLeFormat:withInt:);
  methods[2].selector = @selector(setValueWithByteArray:);
  methods[3].selector = @selector(setValueWithByteArray:withBoolean:);
  methods[4].selector = @selector(read);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&LeGattCharacteristic__Annotations$0, "getIntValue", "LLeFormat;I", (void *)&LeGattCharacteristic__Annotations$1, "setValue", "[B", (void *)&LeGattCharacteristic__Annotations$2, "[BZ", (void *)&LeGattCharacteristic__Annotations$3 };
  static const J2ObjcClassInfo _LeGattCharacteristic = { "LeGattCharacteristic", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_LeGattCharacteristic;
}

@end

IOSObjectArray *LeGattCharacteristic__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeGattCharacteristic__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeGattCharacteristic__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeGattCharacteristic__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattCharacteristic)

J2OBJC_NAME_MAPPING(LeGattCharacteristic, "houtbecke.rs.le", "")
