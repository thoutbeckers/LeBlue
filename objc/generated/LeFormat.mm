
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
    { "format_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "fromString", "LNSString;", "valueOf", &JreEnum(LeFormat, FORMAT_UINT8), &JreEnum(LeFormat, FORMAT_UINT16), &JreEnum(LeFormat, FORMAT_UINT32), &JreEnum(LeFormat, FORMAT_SINT8), &JreEnum(LeFormat, FORMAT_SINT16), &JreEnum(LeFormat, FORMAT_SINT32), &JreEnum(LeFormat, FORMAT_SFLOAT), &JreEnum(LeFormat, FORMAT_FLOAT), "Ljava/lang/Enum<Lhoutbecke/rs/le/LeFormat;>;" };
  static const J2ObjcClassInfo _LeFormat = { "LeFormat", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x4011, 4, 9, -1, -1, -1, 11, -1 };
  return &_LeFormat;
}

+ (void)initialize {
  if (self == [LeFormat class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 8 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    ((void) (JreEnum(LeFormat, FORMAT_UINT8) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x11, @"FORMAT_UINT8", 0);
    ((void) (JreEnum(LeFormat, FORMAT_UINT16) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x12, @"FORMAT_UINT16", 1);
    ((void) (JreEnum(LeFormat, FORMAT_UINT32) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x14, @"FORMAT_UINT32", 2);
    ((void) (JreEnum(LeFormat, FORMAT_SINT8) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x21, @"FORMAT_SINT8", 3);
    ((void) (JreEnum(LeFormat, FORMAT_SINT16) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x22, @"FORMAT_SINT16", 4);
    ((void) (JreEnum(LeFormat, FORMAT_SINT32) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x24, @"FORMAT_SINT32", 5);
    ((void) (JreEnum(LeFormat, FORMAT_SFLOAT) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x32, @"FORMAT_SFLOAT", 6);
    ((void) (JreEnum(LeFormat, FORMAT_FLOAT) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x34, @"FORMAT_FLOAT", 7);
    J2OBJC_SET_INITIALIZED(LeFormat)
  }
}

@end

void LeFormat_initWithInt_withNSString_withInt_(LeFormat *self, jint value, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->format_ = value;
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
