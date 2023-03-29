
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeDeviceState.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeDeviceState_initWithNSString_withInt_(LeDeviceState *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static LeDeviceState *new_LeDeviceState_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(LeDeviceState)

LeDeviceState *LeDeviceState_values_[2];

@implementation LeDeviceState

+ (LeDeviceState *)OFF {
  return JreEnum(LeDeviceState, OFF);
}

+ (LeDeviceState *)ON {
  return JreEnum(LeDeviceState, ON);
}

+ (IOSObjectArray *)values {
  return LeDeviceState_values();
}

+ (LeDeviceState *)valueOfWithNSString:(NSString *)name {
  return LeDeviceState_valueOfWithNSString_(name);
}

- (LeDeviceState_Enum)toNSEnum {
  return (LeDeviceState_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LLeDeviceState;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeDeviceState;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OFF", "LLeDeviceState;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "ON", "LLeDeviceState;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(LeDeviceState, OFF), &JreEnum(LeDeviceState, ON), "Ljava/lang/Enum<Lhoutbecke/rs/le/LeDeviceState;>;" };
  static const J2ObjcClassInfo _LeDeviceState = { "LeDeviceState", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x4011, 2, 2, -1, -1, -1, 4, -1 };
  return &_LeDeviceState;
}

+ (void)initialize {
  if (self == [LeDeviceState class]) {
    JreEnum(LeDeviceState, OFF) = new_LeDeviceState_initWithNSString_withInt_(JreEnumConstantName(LeDeviceState_class_(), 0), 0);
    JreEnum(LeDeviceState, ON) = new_LeDeviceState_initWithNSString_withInt_(JreEnumConstantName(LeDeviceState_class_(), 1), 1);
    J2OBJC_SET_INITIALIZED(LeDeviceState)
  }
}

@end

void LeDeviceState_initWithNSString_withInt_(LeDeviceState *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

LeDeviceState *new_LeDeviceState_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(LeDeviceState, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *LeDeviceState_values() {
  LeDeviceState_initialize();
  return [IOSObjectArray arrayWithObjects:LeDeviceState_values_ count:2 type:LeDeviceState_class_()];
}

LeDeviceState *LeDeviceState_valueOfWithNSString_(NSString *name) {
  LeDeviceState_initialize();
  for (int i = 0; i < 2; i++) {
    LeDeviceState *e = LeDeviceState_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

LeDeviceState *LeDeviceState_fromOrdinal(NSUInteger ordinal) {
  LeDeviceState_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return LeDeviceState_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDeviceState)

J2OBJC_NAME_MAPPING(LeDeviceState, "houtbecke.rs.le", "")
