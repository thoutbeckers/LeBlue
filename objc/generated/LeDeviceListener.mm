
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDeviceListener.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

@interface LeDeviceListener : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeDeviceListener__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeDeviceListener__Annotations$1(void);

@implementation LeDeviceListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, 5 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[1].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", (void *)&LeDeviceListener__Annotations$0, "leDeviceState", "LLeDevice;LLeDeviceState;", (void *)&LeDeviceListener__Annotations$1 };
  static const J2ObjcClassInfo _LeDeviceListener = { "LeDeviceListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_LeDeviceListener;
}

@end

IOSObjectArray *LeDeviceListener__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDeviceListener__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeDeviceListener)

J2OBJC_NAME_MAPPING(LeDeviceListener, "houtbecke.rs.le", "")
