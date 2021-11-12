
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeRemoteDeviceListener.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

@interface LeRemoteDeviceListener : NSObject

@end

__attribute__((unused)) static IOSObjectArray *LeRemoteDeviceListener__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDeviceListener__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDeviceListener__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDeviceListener__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *LeRemoteDeviceListener__Annotations$4(void);

@implementation LeRemoteDeviceListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 1, -1, -1, -1, 4 },
    { NULL, "V", 0x401, 5, 1, -1, -1, -1, 6 },
    { NULL, "V", 0x401, 7, 8, -1, -1, -1, 9 },
    { NULL, "V", 0x401, 10, 11, -1, -1, -1, 12 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[1].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[4].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", (void *)&LeRemoteDeviceListener__Annotations$0, "leDevicesDisconnected", (void *)&LeRemoteDeviceListener__Annotations$1, "leDevicesClosed", (void *)&LeRemoteDeviceListener__Annotations$2, "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", (void *)&LeRemoteDeviceListener__Annotations$3, "rssiRead", "LLeDevice;LLeRemoteDevice;I", (void *)&LeRemoteDeviceListener__Annotations$4 };
  static const J2ObjcClassInfo _LeRemoteDeviceListener = { "LeRemoteDeviceListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_LeRemoteDeviceListener;
}

@end

IOSObjectArray *LeRemoteDeviceListener__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDeviceListener__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDeviceListener__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDeviceListener__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeRemoteDeviceListener__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRemoteDeviceListener)

J2OBJC_NAME_MAPPING(LeRemoteDeviceListener, "houtbecke.rs.le", "")
