
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeGattStatus.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeGattStatus_initWithNSString_withInt_(LeGattStatus *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(LeGattStatus)

LeGattStatus *LeGattStatus_values_[9];

@implementation LeGattStatus

+ (LeGattStatus *)fromStringWithNSString:(NSString *)status {
  return LeGattStatus_fromStringWithNSString_(status);
}

+ (IOSObjectArray *)values {
  return LeGattStatus_values();
}

+ (LeGattStatus *)valueOfWithNSString:(NSString *)name {
  return LeGattStatus_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [LeGattStatus class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 9 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(LeGattStatus, SUCCESS) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"SUCCESS", 0);
    (JreEnum(LeGattStatus, READ_NOT_PERMITTED) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"READ_NOT_PERMITTED", 1);
    (JreEnum(LeGattStatus, WRITE_NOT_PERMITTED) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"WRITE_NOT_PERMITTED", 2);
    (JreEnum(LeGattStatus, INSUFFICIENT_AUTHENTICATION) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"INSUFFICIENT_AUTHENTICATION", 3);
    (JreEnum(LeGattStatus, REQUEST_NOT_SUPPORTED) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"REQUEST_NOT_SUPPORTED", 4);
    (JreEnum(LeGattStatus, INSUFFICIENT_ENCRYPTION) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"INSUFFICIENT_ENCRYPTION", 5);
    (JreEnum(LeGattStatus, INVALID_OFFSET) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"INVALID_OFFSET", 6);
    (JreEnum(LeGattStatus, INVALID_ATTRIBUTE_LENGTH) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"INVALID_ATTRIBUTE_LENGTH", 7);
    (JreEnum(LeGattStatus, FAILURE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeGattStatus_initWithNSString_withInt_(e, @"FAILURE", 8);
    J2OBJC_SET_INITIALIZED(LeGattStatus)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromStringWithNSString:", "fromString", "Lhoutbecke.rs.le.LeGattStatus;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SUCCESS", "SUCCESS", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, SUCCESS), NULL, .constantValue.asLong = 0 },
    { "READ_NOT_PERMITTED", "READ_NOT_PERMITTED", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, READ_NOT_PERMITTED), NULL, .constantValue.asLong = 0 },
    { "WRITE_NOT_PERMITTED", "WRITE_NOT_PERMITTED", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, WRITE_NOT_PERMITTED), NULL, .constantValue.asLong = 0 },
    { "INSUFFICIENT_AUTHENTICATION", "INSUFFICIENT_AUTHENTICATION", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, INSUFFICIENT_AUTHENTICATION), NULL, .constantValue.asLong = 0 },
    { "REQUEST_NOT_SUPPORTED", "REQUEST_NOT_SUPPORTED", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, REQUEST_NOT_SUPPORTED), NULL, .constantValue.asLong = 0 },
    { "INSUFFICIENT_ENCRYPTION", "INSUFFICIENT_ENCRYPTION", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, INSUFFICIENT_ENCRYPTION), NULL, .constantValue.asLong = 0 },
    { "INVALID_OFFSET", "INVALID_OFFSET", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, INVALID_OFFSET), NULL, .constantValue.asLong = 0 },
    { "INVALID_ATTRIBUTE_LENGTH", "INVALID_ATTRIBUTE_LENGTH", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, INVALID_ATTRIBUTE_LENGTH), NULL, .constantValue.asLong = 0 },
    { "FAILURE", "FAILURE", 0x4019, "Lhoutbecke.rs.le.LeGattStatus;", &JreEnum(LeGattStatus, FAILURE), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.LeGattStatus;"};
  static const J2ObjcClassInfo _LeGattStatus = { 2, "LeGattStatus", "houtbecke.rs.le", NULL, 0x4011, 1, methods, 9, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/LeGattStatus;>;" };
  return &_LeGattStatus;
}

@end

LeGattStatus *LeGattStatus_fromStringWithNSString_(NSString *status) {
  LeGattStatus_initialize();
  {
    IOSObjectArray *a__ = LeGattStatus_values();
    LeGattStatus * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    LeGattStatus * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      LeGattStatus *leGattStatus = *b__++;
      if ([((NSString *) nil_chk([((LeGattStatus *) nil_chk(leGattStatus)) description])) isEqual:status]) return leGattStatus;
    }
  }
  return nil;
}

void LeGattStatus_initWithNSString_withInt_(LeGattStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *LeGattStatus_values() {
  LeGattStatus_initialize();
  return [IOSObjectArray arrayWithObjects:LeGattStatus_values_ count:9 type:LeGattStatus_class_()];
}

LeGattStatus *LeGattStatus_valueOfWithNSString_(NSString *name) {
  LeGattStatus_initialize();
  for (int i = 0; i < 9; i++) {
    LeGattStatus *e = LeGattStatus_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

LeGattStatus *LeGattStatus_fromOrdinal(NSUInteger ordinal) {
  LeGattStatus_initialize();
  if (ordinal >= 9) {
    return nil;
  }
  return LeGattStatus_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeGattStatus)
