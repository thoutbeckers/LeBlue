
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeFormat.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface LeFormat () {
 @public
  jint format_;
}

@end

__attribute__((unused)) static void LeFormat_initWithInt_withNSString_withInt_(LeFormat *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static LeFormat *new_LeFormat_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(LeFormat)

LeFormat *LeFormat_values_[8];

@implementation LeFormat

+ (LeFormat *)FORMAT_UINT8 {
  return JreEnum(LeFormat, FORMAT_UINT8);
}

+ (LeFormat *)FORMAT_UINT16 {
  return JreEnum(LeFormat, FORMAT_UINT16);
}

+ (LeFormat *)FORMAT_UINT32 {
  return JreEnum(LeFormat, FORMAT_UINT32);
}

+ (LeFormat *)FORMAT_SINT8 {
  return JreEnum(LeFormat, FORMAT_SINT8);
}

+ (LeFormat *)FORMAT_SINT16 {
  return JreEnum(LeFormat, FORMAT_SINT16);
}

+ (LeFormat *)FORMAT_SINT32 {
  return JreEnum(LeFormat, FORMAT_SINT32);
}

+ (LeFormat *)FORMAT_SFLOAT {
  return JreEnum(LeFormat, FORMAT_SFLOAT);
}

+ (LeFormat *)FORMAT_FLOAT {
  return JreEnum(LeFormat, FORMAT_FLOAT);
}

- (jint)format {
  return format_;
}

+ (LeFormat *)fromStringWithNSString:(NSString *)status {
  return LeFormat_fromStringWithNSString_(status);
}

+ (IOSObjectArray *)values {
  return LeFormat_values();
}

+ (LeFormat *)valueOfWithNSString:(NSString *)name {
  return LeFormat_valueOfWithNSString_(name);
}

- (LeFormat_Enum)toNSEnum {
  return (LeFormat_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeFormat;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LLeFormat;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeFormat;", 0x9, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(format);
  methods[1].selector = @selector(fromStringWithNSString:);
  methods[2].selector = @selector(values);
  methods[3].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FORMAT_UINT8", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "FORMAT_UINT16", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "FORMAT_UINT32", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "FORMAT_SINT8", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "FORMAT_SINT16", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "FORMAT_SINT32", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "FORMAT_SFLOAT", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "FORMAT_FLOAT", "LLeFormat;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "format_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "fromString", "LNSString;", "valueOf", &JreEnum(LeFormat, FORMAT_UINT8), &JreEnum(LeFormat, FORMAT_UINT16), &JreEnum(LeFormat, FORMAT_UINT32), &JreEnum(LeFormat, FORMAT_SINT8), &JreEnum(LeFormat, FORMAT_SINT16), &JreEnum(LeFormat, FORMAT_SINT32), &JreEnum(LeFormat, FORMAT_SFLOAT), &JreEnum(LeFormat, FORMAT_FLOAT), "Ljava/lang/Enum<Lhoutbecke/rs/le/LeFormat;>;" };
  static const J2ObjcClassInfo _LeFormat = { "LeFormat", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x4011, 4, 9, -1, -1, -1, 11, -1 };
  return &_LeFormat;
}

+ (void)initialize {
  if (self == [LeFormat class]) {
    JreEnum(LeFormat, FORMAT_UINT8) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x11, JreEnumConstantName(LeFormat_class_(), 0), 0);
    JreEnum(LeFormat, FORMAT_UINT16) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x12, JreEnumConstantName(LeFormat_class_(), 1), 1);
    JreEnum(LeFormat, FORMAT_UINT32) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x14, JreEnumConstantName(LeFormat_class_(), 2), 2);
    JreEnum(LeFormat, FORMAT_SINT8) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x21, JreEnumConstantName(LeFormat_class_(), 3), 3);
    JreEnum(LeFormat, FORMAT_SINT16) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x22, JreEnumConstantName(LeFormat_class_(), 4), 4);
    JreEnum(LeFormat, FORMAT_SINT32) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x24, JreEnumConstantName(LeFormat_class_(), 5), 5);
    JreEnum(LeFormat, FORMAT_SFLOAT) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x32, JreEnumConstantName(LeFormat_class_(), 6), 6);
    JreEnum(LeFormat, FORMAT_FLOAT) = new_LeFormat_initWithInt_withNSString_withInt_((jint) 0x34, JreEnumConstantName(LeFormat_class_(), 7), 7);
    J2OBJC_SET_INITIALIZED(LeFormat)
  }
}

@end

void LeFormat_initWithInt_withNSString_withInt_(LeFormat *self, jint value, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->format_ = value;
}

LeFormat *new_LeFormat_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(LeFormat, initWithInt_withNSString_withInt_, value, __name, __ordinal)
}

LeFormat *LeFormat_fromStringWithNSString_(NSString *status) {
  LeFormat_initialize();
  {
    IOSObjectArray *a__ = LeFormat_values();
    LeFormat * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    LeFormat * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      LeFormat *leFormat = *b__++;
      if ([((NSString *) nil_chk([((LeFormat *) nil_chk(leFormat)) description])) isEqual:status]) return leFormat;
    }
  }
  return nil;
}

IOSObjectArray *LeFormat_values() {
  LeFormat_initialize();
  return [IOSObjectArray arrayWithObjects:LeFormat_values_ count:8 type:LeFormat_class_()];
}

LeFormat *LeFormat_valueOfWithNSString_(NSString *name) {
  LeFormat_initialize();
  for (int i = 0; i < 8; i++) {
    LeFormat *e = LeFormat_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

LeFormat *LeFormat_fromOrdinal(NSUInteger ordinal) {
  LeFormat_initialize();
  if (ordinal >= 8) {
    return nil;
  }
  return LeFormat_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeFormat)

J2OBJC_NAME_MAPPING(LeFormat, "houtbecke.rs.le", "")
