
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

- (void)dealloc {
  RELEASE_(mockController_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeMockController:);
  methods[1].selector = @selector(getValue);
  methods[2].selector = @selector(getIntValueWithLeFormat:withInt:);
  methods[3].selector = @selector(setValueWithByteArray:);
  methods[4].selector = @selector(setValueWithByteArray:withBoolean:);
  methods[5].selector = @selector(read);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", "LLeMockController;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeMockController;", "getIntValue", "LLeFormat;I", "setValue", "[B", "[BZ" };
  static const J2ObjcClassInfo _LeGattCharacteristicMock = { "LeGattCharacteristicMock", "houtbecke.rs.le.mock", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_LeGattCharacteristicMock;
}

@end

void LeGattCharacteristicMock_initWithLeMockController_(LeGattCharacteristicMock *self, id<LeMockController> mockController) {
  NSObject_init(self);
  JreStrongAssign(&self->mockController_, mockController);
}

LeGattCharacteristicMock *new_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController) {
  J2OBJC_NEW_IMPL(LeGattCharacteristicMock, initWithLeMockController_, mockController)
}

LeGattCharacteristicMock *create_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController) {
  J2OBJC_CREATE_IMPL(LeGattCharacteristicMock, initWithLeMockController_, mockController)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattCharacteristicMock)

J2OBJC_NAME_MAPPING(LeGattCharacteristicMock, "houtbecke.rs.le.mock", "")
