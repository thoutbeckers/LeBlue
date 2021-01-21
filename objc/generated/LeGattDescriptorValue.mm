
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeGattDescriptorValue.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeGattDescriptorValue_initWithNSString_withInt_(LeGattDescriptorValue *self, NSString *__name, jint __ordinal);

LeGattDescriptorValue *LeGattDescriptorValue_values_[0];

@implementation LeGattDescriptorValue

+ (IOSObjectArray *)values {
  return LeGattDescriptorValue_values();
}

+ (LeGattDescriptorValue *)valueOfWithNSString:(NSString *)name {
  return LeGattDescriptorValue_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LLeGattDescriptorValue;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeGattDescriptorValue;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "valueOf", "LNSString;", "Ljava/lang/Enum<Lhoutbecke/rs/le/LeGattDescriptorValue;>;" };
  static const J2ObjcClassInfo _LeGattDescriptorValue = { "LeGattDescriptorValue", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x4011, 2, 0, -1, -1, -1, 2, -1 };
  return &_LeGattDescriptorValue;
}

@end

void LeGattDescriptorValue_initWithNSString_withInt_(LeGattDescriptorValue *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *LeGattDescriptorValue_values() {
  LeGattDescriptorValue_initialize();
  return [IOSObjectArray arrayWithObjects:LeGattDescriptorValue_values_ count:0 type:LeGattDescriptorValue_class_()];
}

LeGattDescriptorValue *LeGattDescriptorValue_valueOfWithNSString_(NSString *name) {
  LeGattDescriptorValue_initialize();
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

LeGattDescriptorValue *LeGattDescriptorValue_fromOrdinal(NSUInteger ordinal) {
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattDescriptorValue)

J2OBJC_NAME_MAPPING(LeGattDescriptorValue, "houtbecke.rs.le", "")
