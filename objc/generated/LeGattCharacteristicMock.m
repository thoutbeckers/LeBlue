
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeFormat.h"
#include "LeGattCharacteristicMock.h"
#include "LeMockController.h"
#include "java/lang/Boolean.h"

@implementation LeGattCharacteristicMock

- (instancetype)initWithLeMockController:(id<LeMockController>)mockController {
  LeGattCharacteristicMock_initWithLeMockController_(self, mockController);
  return self;
}

- (IOSByteArray *)getValue {
  return [((id<LeMockController>) nil_chk(mockController_)) characteristicGetValueWithLeGattCharacteristicMock:self];
}

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index {
  return [((id<LeMockController>) nil_chk(mockController_)) characteristicGetIntValueWithLeGattCharacteristicMock:self withLeFormat:format withInt:index];
}

- (void)setValueWithByteArray:(IOSByteArray *)value {
  [((id<LeMockController>) nil_chk(mockController_)) characteristicSetValueWithLeGattCharacteristicMock:self withByteArray:value];
}

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse {
  [((id<LeMockController>) nil_chk(mockController_)) characteristicSetValueWithLeGattCharacteristicMock:self withByteArray:value withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(withResponse)];
}

- (void)read {
  [((id<LeMockController>) nil_chk(mockController_)) characteristicReadWithLeGattCharacteristicMock:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeMockController:", "LeGattCharacteristicMock", NULL, 0x1, NULL, NULL },
    { "getValue", NULL, "[B", 0x1, NULL, NULL },
    { "getIntValueWithLeFormat:withInt:", "getIntValue", "I", 0x1, NULL, NULL },
    { "setValueWithByteArray:", "setValue", "V", 0x1, NULL, NULL },
    { "setValueWithByteArray:withBoolean:", "setValue", "V", 0x1, NULL, NULL },
    { "read", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", NULL, 0x0, "Lhoutbecke.rs.le.mock.LeMockController;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeGattCharacteristicMock = { 2, "LeGattCharacteristicMock", "houtbecke.rs.le.mock", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeGattCharacteristicMock;
}

@end

void LeGattCharacteristicMock_initWithLeMockController_(LeGattCharacteristicMock *self, id<LeMockController> mockController) {
  NSObject_init(self);
  self->mockController_ = mockController;
}

LeGattCharacteristicMock *new_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController) {
  J2OBJC_NEW_IMPL(LeGattCharacteristicMock, initWithLeMockController_, mockController)
}

LeGattCharacteristicMock *create_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController) {
  J2OBJC_CREATE_IMPL(LeGattCharacteristicMock, initWithLeMockController_, mockController)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattCharacteristicMock)
