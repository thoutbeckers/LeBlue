
#include "ErrorLogger.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeMockController.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/List.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *LeDeviceMock__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *LeDeviceMock__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *LeDeviceMock__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *LeDeviceMock__Annotations$3(void);

@implementation LeDeviceMock

- (instancetype)initWithInt:(jint)key
       withLeMockController:(id<LeMockController>)leMockController {
  LeDeviceMock_initWithInt_withLeMockController_(self, key, leMockController);
  return self;
}

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  [((id<LeMockController>) nil_chk(controller_)) deviceAddListenerWithLeDeviceMock:self withLeDeviceListener:listener];
}

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  [((id<LeMockController>) nil_chk(controller_)) deviceRemoveListenerWithLeDeviceMock:self withLeDeviceListener:listener];
}

- (jboolean)checkBleHardwareAvailable {
  return [((id<LeMockController>) nil_chk(controller_)) deviceCheckBleHardwareAvailableWithLeDeviceMock:self];
}

- (jboolean)isBtEnabled {
  return [((id<LeMockController>) nil_chk(controller_)) deviceIsBtEnabledWithLeDeviceMock:self];
}

- (void)startScanning {
  [((id<LeMockController>) nil_chk(controller_)) deviceStartScanningWithLeDeviceMock:self];
}

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((id<LeMockController>) nil_chk(controller_)) deviceStartScanningWithLeDeviceMock:self withJavaUtilUUIDArray:uuids];
}

- (void)startScanningWithJavaUtilList:(id<JavaUtilList>)filters {
  [((id<LeMockController>) nil_chk(controller_)) deviceStartScanningWithLeDeviceMock:self withJavaUtilList:filters];
}

- (void)stopScanning {
  [((id<LeMockController>) nil_chk(controller_)) deviceStopScanningWithLeDeviceMock:self];
}

- (void)setErrorLoggerWithErrorLogger:(id<ErrorLogger>)errorLogger {
}

- (void)disable {
}

- (void)enable {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, 3 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, 5 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 6, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x1, 6, 9, -1, 10, -1, 11 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withLeMockController:);
  methods[1].selector = @selector(addListenerWithLeDeviceListener:);
  methods[2].selector = @selector(removeListenerWithLeDeviceListener:);
  methods[3].selector = @selector(checkBleHardwareAvailable);
  methods[4].selector = @selector(isBtEnabled);
  methods[5].selector = @selector(startScanning);
  methods[6].selector = @selector(startScanningWithJavaUtilUUIDArray:);
  methods[7].selector = @selector(startScanningWithJavaUtilList:);
  methods[8].selector = @selector(stopScanning);
  methods[9].selector = @selector(setErrorLoggerWithErrorLogger:);
  methods[10].selector = @selector(disable);
  methods[11].selector = @selector(enable);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "controller_", "LLeMockController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILLeMockController;", "addListener", "LLeDeviceListener;", (void *)&LeDeviceMock__Annotations$0, "removeListener", (void *)&LeDeviceMock__Annotations$1, "startScanning", "[LJavaUtilUUID;", (void *)&LeDeviceMock__Annotations$2, "LJavaUtilList;", "(Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", (void *)&LeDeviceMock__Annotations$3, "setErrorLogger", "LErrorLogger;" };
  static const J2ObjcClassInfo _LeDeviceMock = { "LeDeviceMock", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 12, 1, -1, -1, -1, -1, -1 };
  return &_LeDeviceMock;
}

@end

void LeDeviceMock_initWithInt_withLeMockController_(LeDeviceMock *self, jint key, id<LeMockController> leMockController) {
  NSObject_init(self);
  self->controller_ = leMockController;
  [((id<LeMockController>) nil_chk(leMockController)) addDeviceWithInt:key withLeDeviceMock:self];
}

LeDeviceMock *new_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController) {
  J2OBJC_NEW_IMPL(LeDeviceMock, initWithInt_withLeMockController_, key, leMockController)
}

LeDeviceMock *create_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController) {
  J2OBJC_CREATE_IMPL(LeDeviceMock, initWithInt_withLeMockController_, key, leMockController)
}

IOSObjectArray *LeDeviceMock__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDeviceMock__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDeviceMock__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *LeDeviceMock__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDeviceMock)

J2OBJC_NAME_MAPPING(LeDeviceMock, "houtbecke.rs.le.mock", "")
