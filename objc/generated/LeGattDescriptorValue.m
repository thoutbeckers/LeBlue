
#include "IOSClass.h"
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

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.LeGattDescriptorValue;"};
  static const J2ObjcClassInfo _LeGattDescriptorValue = { 2, "LeGattDescriptorValue", "houtbecke.rs.le", NULL, 0x4011, 0, NULL, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/LeGattDescriptorValue;>;" };
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
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

LeGattDescriptorValue *LeGattDescriptorValue_fromOrdinal(NSUInteger ordinal) {
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattDescriptorValue)
