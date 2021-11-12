
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeRemoteDevice.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/Nullable.h"
#include "javax/annotation/meta/When.h"

@interface LeRemoteDevice : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$5(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDevice__Annotations$6(void);

@implementation LeRemoteDevice

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 1, -1, -1, -1, 4 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, 5, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 6, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x481, 9, 10, -1, -1, -1, 11 },
    { NULL, "V", 0x481, 12, 13, -1, -1, -1, 14 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, 15, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addListenerWithLeRemoteDeviceListener:);
  methods[1].selector = @selector(removeListenerWithLeRemoteDeviceListener:);
  methods[2].selector = @selector(getAddress);
  methods[3].selector = @selector(connect);
  methods[4].selector = @selector(disconnect);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(startServicesDiscovery);
  methods[7].selector = @selector(startServicesDiscoveryWithJavaUtilUUIDArray:);
  methods[8].selector = @selector(setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[9].selector = @selector(setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[10].selector = @selector(getName);
  methods[11].selector = @selector(readRssi);
  methods[12].selector = @selector(refreshDeviceCache);
  methods[13].selector = @selector(unpair);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeRemoteDeviceListener;", (void *)&LeRemoteDevice__Annotations$0, "removeListener", (void *)&LeRemoteDevice__Annotations$1, (void *)&LeRemoteDevice__Annotations$2, "startServicesDiscovery", "[LJavaUtilUUID;", (void *)&LeRemoteDevice__Annotations$3, "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", (void *)&LeRemoteDevice__Annotations$4, "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;", (void *)&LeRemoteDevice__Annotations$5, (void *)&LeRemoteDevice__Annotations$6 };
  static const J2ObjcClassInfo _LeRemoteDevice = { "LeRemoteDevice", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 14, 0, -1, -1, -1, -1, -1 };
  return &_LeRemoteDevice;
}

@end

IOSObjectArray *LeRemoteDevice__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDevice__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDevice__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *LeRemoteDevice__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDevice__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDevice__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDevice__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRemoteDevice)

J2OBJC_NAME_MAPPING(LeRemoteDevice, "houtbecke.rs.le", "")
