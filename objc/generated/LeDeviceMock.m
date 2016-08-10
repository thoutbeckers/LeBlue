
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeMockController.h"

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

- (void)stopScanning {
  [((id<LeMockController>) nil_chk(controller_)) deviceStopScanningWithLeDeviceMock:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLeMockController:", "LeDeviceMock", NULL, 0x1, NULL, NULL },
    { "addListenerWithLeDeviceListener:", "addListener", "V", 0x1, NULL, NULL },
    { "removeListenerWithLeDeviceListener:", "removeListener", "V", 0x1, NULL, NULL },
    { "checkBleHardwareAvailable", NULL, "Z", 0x1, NULL, NULL },
    { "isBtEnabled", NULL, "Z", 0x1, NULL, NULL },
    { "startScanning", NULL, "V", 0x1, NULL, NULL },
    { "startScanningWithJavaUtilUUIDArray:", "startScanning", "V", 0x81, NULL, NULL },
    { "stopScanning", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "controller_", NULL, 0x0, "Lhoutbecke.rs.le.mock.LeMockController;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeDeviceMock = { 2, "LeDeviceMock", "houtbecke.rs.le.mock", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
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

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDeviceMock)
