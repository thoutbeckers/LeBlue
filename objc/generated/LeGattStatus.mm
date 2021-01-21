
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeGattStatus.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void LeGattStatus_initWithNSString_withInt_(LeGattStatus *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(LeGattStatus)

LeGattStatus *LeGattStatus_values_[9];

@implementation LeGattStatus

+ (LeGattStatus *)SUCCESS {
  return JreEnum(LeGattStatus, SUCCESS);
}

+ (LeGattStatus *)READ_NOT_PERMITTED {
  return JreEnum(LeGattStatus, READ_NOT_PERMITTED);
}

+ (LeGattStatus *)WRITE_NOT_PERMITTED {
  return JreEnum(LeGattStatus, WRITE_NOT_PERMITTED);
}

+ (LeGattStatus *)INSUFFICIENT_AUTHENTICATION {
  return JreEnum(LeGattStatus, INSUFFICIENT_AUTHENTICATION);
}

+ (LeGattStatus *)REQUEST_NOT_SUPPORTED {
  return JreEnum(LeGattStatus, REQUEST_NOT_SUPPORTED);
}

+ (LeGattStatus *)INSUFFICIENT_ENCRYPTION {
  return JreEnum(LeGattStatus, INSUFFICIENT_ENCRYPTION);
}

+ (LeGattStatus *)INVALID_OFFSET {
  return JreEnum(LeGattStatus, INVALID_OFFSET);
}

+ (LeGattStatus *)INVALID_ATTRIBUTE_LENGTH {
  return JreEnum(LeGattStatus, INVALID_ATTRIBUTE_LENGTH);
}

+ (LeGattStatus *)FAILURE {
  return JreEnum(LeGattStatus, FAILURE);
}

+ (LeGattStatus *)fromStringWithNSString:(NSString *)status {
  return LeGattStatus_fromStringWithNSString_(status);
}

+ (IOSObjectArray *)values {
  return LeGattStatus_values();
}

+ (LeGattStatus *)valueOfWithNSString:(NSString *)name {
  return LeGattStatus_valueOfWithNSString_(name);
}

- (LeGattStatus_Enum)toNSEnum {
  return (LeGattStatus_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LLeGattStatus;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LLeGattStatus;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeGattStatus;", 0x9, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(fromStringWithNSString:);
  methods[1].selector = @selector(values);
  methods[2].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SUCCESS", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "READ_NOT_PERMITTED", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "WRITE_NOT_PERMITTED", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "INSUFFICIENT_AUTHENTICATION", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "REQUEST_NOT_SUPPORTED", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "INSUFFICIENT_ENCRYPTION", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "INVALID_OFFSET", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "INVALID_ATTRIBUTE_LENGTH", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "FAILURE", "LLeGattStatus;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "fromString", "LNSString;", "valueOf", &JreEnum(LeGattStatus, SUCCESS), &JreEnum(LeGattStatus, READ_NOT_PERMITTED), &JreEnum(LeGattStatus, WRITE_NOT_PERMITTED), &JreEnum(LeGattStatus, INSUFFICIENT_AUTHENTICATION), &JreEnum(LeGattStatus, REQUEST_NOT_SUPPORTED), &JreEnum(LeGattStatus, INSUFFICIENT_ENCRYPTION), &JreEnum(LeGattStatus, INVALID_OFFSET), &JreEnum(LeGattStatus, INVALID_ATTRIBUTE_LENGTH), &JreEnum(LeGattStatus, FAILURE), "Ljava/lang/Enum<Lhoutbecke/rs/le/LeGattStatus;>;" };
  static const J2ObjcClassInfo _LeGattStatus = { "LeGattStatus", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x4011, 3, 9, -1, -1, -1, 12, -1 };
  return &_LeGattStatus;
}

+ (void)initialize {
  if (self == [LeGattStatus class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 9 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 9; i++) {
      ((void)(LeGattStatus_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      LeGattStatus_initWithNSString_withInt_(e, JreEnumConstantName(LeGattStatus_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(LeGattStatus)
  }
}

@end

void LeGattStatus_initWithNSString_withInt_(LeGattStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

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
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
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

J2OBJC_NAME_MAPPING(LeGattStatus, "houtbecke.rs.le", "")
