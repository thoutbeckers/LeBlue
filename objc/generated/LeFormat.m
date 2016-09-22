
#include "IOSClass.h"
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

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [LeFormat class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 8 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(LeFormat, FORMAT_UINT8) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x11, @"FORMAT_UINT8", 0);
    (JreEnum(LeFormat, FORMAT_UINT16) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x12, @"FORMAT_UINT16", 1);
    (JreEnum(LeFormat, FORMAT_UINT32) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x14, @"FORMAT_UINT32", 2);
    (JreEnum(LeFormat, FORMAT_SINT8) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x21, @"FORMAT_SINT8", 3);
    (JreEnum(LeFormat, FORMAT_SINT16) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x22, @"FORMAT_SINT16", 4);
    (JreEnum(LeFormat, FORMAT_SINT32) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x24, @"FORMAT_SINT32", 5);
    (JreEnum(LeFormat, FORMAT_SFLOAT) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x32, @"FORMAT_SFLOAT", 6);
    (JreEnum(LeFormat, FORMAT_FLOAT) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    LeFormat_initWithInt_withNSString_withInt_(e, (jint) 0x34, @"FORMAT_FLOAT", 7);
    J2OBJC_SET_INITIALIZED(LeFormat)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "format", NULL, "I", 0x1, NULL, NULL },
    { "fromStringWithNSString:", "fromString", "Lhoutbecke.rs.le.LeFormat;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FORMAT_UINT8", "FORMAT_UINT8", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_UINT8), NULL, .constantValue.asLong = 0 },
    { "FORMAT_UINT16", "FORMAT_UINT16", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_UINT16), NULL, .constantValue.asLong = 0 },
    { "FORMAT_UINT32", "FORMAT_UINT32", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_UINT32), NULL, .constantValue.asLong = 0 },
    { "FORMAT_SINT8", "FORMAT_SINT8", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_SINT8), NULL, .constantValue.asLong = 0 },
    { "FORMAT_SINT16", "FORMAT_SINT16", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_SINT16), NULL, .constantValue.asLong = 0 },
    { "FORMAT_SINT32", "FORMAT_SINT32", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_SINT32), NULL, .constantValue.asLong = 0 },
    { "FORMAT_SFLOAT", "FORMAT_SFLOAT", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_SFLOAT), NULL, .constantValue.asLong = 0 },
    { "FORMAT_FLOAT", "FORMAT_FLOAT", 0x4019, "Lhoutbecke.rs.le.LeFormat;", &JreEnum(LeFormat, FORMAT_FLOAT), NULL, .constantValue.asLong = 0 },
    { "format_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.LeFormat;"};
  static const J2ObjcClassInfo _LeFormat = { 2, "LeFormat", "houtbecke.rs.le", NULL, 0x4011, 2, methods, 9, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/LeFormat;>;" };
  return &_LeFormat;
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
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
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
