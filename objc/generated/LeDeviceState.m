
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "LeDeviceState.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeDeviceState_initWithNSString_withInt_(LeDeviceState *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static LeDeviceState *new_LeDeviceState_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(LeDeviceState)

LeDeviceState *LeDeviceState_values_[2];

@implementation LeDeviceState

+ (IOSObjectArray *)values {
  return LeDeviceState_values();
}

+ (LeDeviceState *)valueOfWithNSString:(NSString *)name {
  return LeDeviceState_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [LeDeviceState class]) {
    JreEnum(LeDeviceState, OFF) = new_LeDeviceState_initWithNSString_withInt_(@"OFF", 0);
    JreEnum(LeDeviceState, ON) = new_LeDeviceState_initWithNSString_withInt_(@"ON", 1);
    J2OBJC_SET_INITIALIZED(LeDeviceState)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "OFF", "OFF", 0x4019, "Lhoutbecke.rs.le.LeDeviceState;", &JreEnum(LeDeviceState, OFF), NULL, .constantValue.asLong = 0 },
    { "ON", "ON", 0x4019, "Lhoutbecke.rs.le.LeDeviceState;", &JreEnum(LeDeviceState, ON), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.LeDeviceState;"};
  static const J2ObjcClassInfo _LeDeviceState = { 2, "LeDeviceState", "houtbecke.rs.le", NULL, 0x4011, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/LeDeviceState;>;" };
  return &_LeDeviceState;
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
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
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
