
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDevice.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

@interface LeDevice : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeDevice__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeDevice__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeDevice__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeDevice__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *LeDevice__Annotations$4(void);

@implementation LeDevice

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 1, -1, -1, -1, 4 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 5, 6, -1, -1, -1, 7 },
    { NULL, "V", 0x401, 5, 8, -1, 9, -1, 10 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 11, 12, -1, -1, -1, 13 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addListenerWithLeDeviceListener:);
  methods[1].selector = @selector(removeListenerWithLeDeviceListener:);
  methods[2].selector = @selector(checkBleHardwareAvailable);
  methods[3].selector = @selector(isBtEnabled);
  methods[4].selector = @selector(startScanning);
  methods[5].selector = @selector(startScanningWithJavaUtilUUIDArray:);
  methods[6].selector = @selector(startScanningWithJavaUtilList:);
  methods[7].selector = @selector(stopScanning);
  methods[8].selector = @selector(setErrorLoggerWithErrorLogger:);
  methods[9].selector = @selector(disable);
  methods[10].selector = @selector(enable);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeDeviceListener;", (void *)&LeDevice__Annotations$0, "removeListener", (void *)&LeDevice__Annotations$1, "startScanning", "[LJavaUtilUUID;", (void *)&LeDevice__Annotations$2, "LJavaUtilList;", "(Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", (void *)&LeDevice__Annotations$3, "setErrorLogger", "LErrorLogger;", (void *)&LeDevice__Annotations$4 };
  static const J2ObjcClassInfo _LeDevice = { "LeDevice", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, -1 };
  return &_LeDevice;
}

@end

IOSObjectArray *LeDevice__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDevice__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDevice__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDevice__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDevice__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeDevice)

J2OBJC_NAME_MAPPING(LeDevice, "houtbecke.rs.le", "")
