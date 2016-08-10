
#include "CharacteristicsMockerObject.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "LeUtil.h"
#include "MockerObject.h"
#include "SessionObject.h"
#include "java/util/UUID.h"

@implementation CharacteristicsMockerObject

- (instancetype)initWithSessionObject:(SessionObject *)sessionObject
                              withInt:(jint)sessionSource {
  CharacteristicsMockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
  return self;
}

- (CharacteristicsMockerObject *)mocksCharacteristic {
  return [self mocksCharacteristicWithNSString:[((SessionObject *) nil_chk(sessionObject_)) getSourceIdentificationWithInt:sessionSource_]];
}

- (CharacteristicsMockerObject *)mocksCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [self mocksCharacteristicWithNSString:[((JavaUtilUUID *) nil_chk(uuid)) description]];
}

- (CharacteristicsMockerObject *)mocksCharacteristicWithNSString:(NSString *)uuid {
  [((SessionObject *) nil_chk(sessionObject_)) setSourceIdentificationWithInt:sessionSource_ withNSString:uuid];
  return self;
}

- (CharacteristicsMockerObject *)hasFixedValueWithIntArray:(IOSIntArray *)values {
  return [self hasFixedValueWithByteArray:LeUtil_intsToBytesWithIntArray_(values)];
}

- (CharacteristicsMockerObject *)hasFixedValueWithByteArray:(IOSByteArray *)values {
  (void) [self withMockWithEventType:JreLoadEnum(LeEventType, characteristicGetValue) withNSString:LeUtil_bytesToStringWithByteArray_(values)];
  return self;
}

- (CharacteristicsMockerObject *)hasValueWithIntArray:(IOSIntArray *)values {
  return [self hasValueWithByteArray:LeUtil_intsToBytesWithIntArray_(values)];
}

- (CharacteristicsMockerObject *)hasValueWithByteArray:(IOSByteArray *)values {
  (void) [self withSelfDestroyingMockWithEventType:JreLoadEnum(LeEventType, characteristicGetValue) withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(values) } count:1 type:NSString_class_()]];
  return self;
}

- (CharacteristicsMockerObject *)hasValuesWithByteArray2:(IOSObjectArray *)multipleValues {
  {
    IOSObjectArray *a__ = multipleValues;
    IOSByteArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSByteArray * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSByteArray *values = *b__++;
      (void) [self hasValueWithByteArray:values];
    }
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithSessionObject:withInt:", "CharacteristicsMockerObject", NULL, 0x1, NULL, NULL },
    { "mocksCharacteristic", NULL, "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "mocksCharacteristicWithJavaUtilUUID:", "mocksCharacteristic", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "mocksCharacteristicWithNSString:", "mocksCharacteristic", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "hasFixedValueWithIntArray:", "hasFixedValue", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x81, NULL, NULL },
    { "hasFixedValueWithByteArray:", "hasFixedValue", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "hasValueWithIntArray:", "hasValue", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x81, NULL, NULL },
    { "hasValueWithByteArray:", "hasValue", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x1, NULL, NULL },
    { "hasValuesWithByteArray2:", "hasValues", "Lhoutbecke.rs.le.session.CharacteristicsMockerObject;", 0x81, NULL, NULL },
  };
  static const J2ObjcClassInfo _CharacteristicsMockerObject = { 2, "CharacteristicsMockerObject", "houtbecke.rs.le.session", NULL, 0x1, 9, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CharacteristicsMockerObject;
}

@end

void CharacteristicsMockerObject_initWithSessionObject_withInt_(CharacteristicsMockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  MockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
}

CharacteristicsMockerObject *new_CharacteristicsMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(CharacteristicsMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

CharacteristicsMockerObject *create_CharacteristicsMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(CharacteristicsMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CharacteristicsMockerObject)
