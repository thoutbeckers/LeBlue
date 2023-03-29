
#include "CharacteristicsMockerObject.h"
#include "IOSClass.h"
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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x81, 4, 5, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x81, 7, 5, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x81, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSessionObject:withInt:);
  methods[1].selector = @selector(mocksCharacteristic);
  methods[2].selector = @selector(mocksCharacteristicWithJavaUtilUUID:);
  methods[3].selector = @selector(mocksCharacteristicWithNSString:);
  methods[4].selector = @selector(hasFixedValueWithIntArray:);
  methods[5].selector = @selector(hasFixedValueWithByteArray:);
  methods[6].selector = @selector(hasValueWithIntArray:);
  methods[7].selector = @selector(hasValueWithByteArray:);
  methods[8].selector = @selector(hasValuesWithByteArray2:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LSessionObject;I", "mocksCharacteristic", "LJavaUtilUUID;", "LNSString;", "hasFixedValue", "[I", "[B", "hasValue", "hasValues", "[[B" };
  static const J2ObjcClassInfo _CharacteristicsMockerObject = { "CharacteristicsMockerObject", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x1, 9, 0, -1, -1, -1, -1, -1 };
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

J2OBJC_NAME_MAPPING(CharacteristicsMockerObject, "houtbecke.rs.le.session", "")
