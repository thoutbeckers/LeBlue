
#include "ErrorLogger.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeMockController.h"
#include "java/util/List.h"

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

- (void)dealloc {
  RELEASE_(controller_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
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
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "controller_", "LLeMockController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILLeMockController;", "addListener", "LLeDeviceListener;", "removeListener", "startScanning", "[LJavaUtilUUID;", "LJavaUtilList;", "(Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", "setErrorLogger", "LErrorLogger;" };
  static const J2ObjcClassInfo _LeDeviceMock = { "LeDeviceMock", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 10, 1, -1, -1, -1, -1, -1 };
  return &_LeDeviceMock;
}

@end

void LeDeviceMock_initWithInt_withLeMockController_(LeDeviceMock *self, jint key, id<LeMockController> leMockController) {
  NSObject_init(self);
  JreStrongAssign(&self->controller_, leMockController);
  [((id<LeMockController>) nil_chk(leMockController)) addDeviceWithInt:key withLeDeviceMock:self];
}

LeDeviceMock *new_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController) {
  J2OBJC_NEW_IMPL(LeDeviceMock, initWithInt_withLeMockController_, key, leMockController)
}

LeDeviceMock *create_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController) {
  J2OBJC_CREATE_IMPL(LeDeviceMock, initWithInt_withLeMockController_, key, leMockController)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDeviceMock)
