
#include "InterceptingLeGattService.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattServiceMock.h"
#include "LeMockController.h"
#include "java/lang/Integer.h"
#include "java/util/UUID.h"

@implementation LeGattServiceMock

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)key
                   withLeMockController:(id<LeMockController>)mockController {
  LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(self, key, mockController);
  return self;
}

- (JavaUtilUUID *)getUuid {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceGetUuidWithLeGattServiceMock:self];
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceGetCharacteristicWithLeGattServiceMock:self withJavaUtilUUID:uuid];
}

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic {
  return [((id<LeMockController>) nil_chk(mockController_)) serviceEnableCharacteristicNotificationWithLeGattServiceMock:self withJavaUtilUUID:characteristic];
}

- (jboolean)isEqual:(id)o {
  while ([o isKindOfClass:[InterceptingLeGattService class]]) o = ((InterceptingLeGattService *) nil_chk(((InterceptingLeGattService *) cast_chk(o, [InterceptingLeGattService class]))))->leGattService_;
  if ([o isKindOfClass:[LeGattServiceMock class]]) return [((JavaLangInteger *) nil_chk(((LeGattServiceMock *) nil_chk(((LeGattServiceMock *) cast_chk(o, [LeGattServiceMock class]))))->key_)) isEqual:key_];
  return o == self;
}

- (NSUInteger)hash {
  return ((jint) [((JavaLangInteger *) nil_chk(key_)) hash]);
}

- (void)dealloc {
  RELEASE_(mockController_);
  RELEASE_(key_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangInteger:withLeMockController:", "LeGattServiceMock", NULL, 0x1, NULL, NULL },
    { "getUuid", NULL, "Ljava.util.UUID;", 0x1, NULL, NULL },
    { "getCharacteristicWithJavaUtilUUID:", "getCharacteristic", "Lhoutbecke.rs.le.LeGattCharacteristic;", 0x1, NULL, NULL },
    { "enableCharacteristicNotificationWithJavaUtilUUID:", "enableCharacteristicNotification", "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mockController_", NULL, 0x0, "Lhoutbecke.rs.le.mock.LeMockController;", NULL, NULL, .constantValue.asLong = 0 },
    { "key_", NULL, 0x0, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeGattServiceMock = { 2, "LeGattServiceMock", "houtbecke.rs.le.mock", NULL, 0x1, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeGattServiceMock;
}

@end

void LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(LeGattServiceMock *self, JavaLangInteger *key, id<LeMockController> mockController) {
  NSObject_init(self);
  JreStrongAssign(&self->key_, key);
  JreStrongAssign(&self->mockController_, mockController);
}

LeGattServiceMock *new_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController) {
  J2OBJC_NEW_IMPL(LeGattServiceMock, initWithJavaLangInteger_withLeMockController_, key, mockController)
}

LeGattServiceMock *create_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController) {
  J2OBJC_CREATE_IMPL(LeGattServiceMock, initWithJavaLangInteger_withLeMockController_, key, mockController)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattServiceMock)
