
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeScanRecord.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/Nullable.h"
#include "javax/annotation/meta/When.h"

@interface LeScanRecord : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *LeScanRecord__Annotations$5(void);

@implementation LeScanRecord

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LJavaUtilUUID;", 0x401, -1, -1, -1, -1, 0, -1 },
    { NULL, "Z", 0x401, 1, 2, -1, -1, -1, 3 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, 4, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, 5, -1 },
    { NULL, "[B", 0x401, 6, 2, -1, -1, 7, 8 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getServices);
  methods[1].selector = @selector(hasServiceWithJavaUtilUUID:);
  methods[2].selector = @selector(getLocalName);
  methods[3].selector = @selector(getManufacturerData);
  methods[4].selector = @selector(getServiceDataWithJavaUtilUUID:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&LeScanRecord__Annotations$0, "hasService", "LJavaUtilUUID;", (void *)&LeScanRecord__Annotations$1, (void *)&LeScanRecord__Annotations$2, (void *)&LeScanRecord__Annotations$3, "getServiceData", (void *)&LeScanRecord__Annotations$4, (void *)&LeScanRecord__Annotations$5 };
  static const J2ObjcClassInfo _LeScanRecord = { "LeScanRecord", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_LeScanRecord;
}

@end

IOSObjectArray *LeScanRecord__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeScanRecord__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeScanRecord__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeScanRecord__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeScanRecord__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeScanRecord__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeScanRecord)

J2OBJC_NAME_MAPPING(LeScanRecord, "houtbecke.rs.le", "")
