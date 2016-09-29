
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeScanRecord.h"
#include "LeScanRecordImpl.h"
#include "LeUtil.h"
#include "java/lang/Character.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/StringTokenizer.h"
#include "java/util/UUID.h"

J2OBJC_INITIALIZED_DEFN(LeUtil)

IOSCharArray *LeUtil_hexArray;

@implementation LeUtil

+ (NSString *)bytesToStringWithByteArray:(IOSByteArray *)bytes {
  return LeUtil_bytesToStringWithByteArray_(bytes);
}

+ (IOSByteArray *)stringToBytesWithNSString:(NSString *)string {
  return LeUtil_stringToBytesWithNSString_(string);
}

+ (IOSByteArray *)hexStringToBytesWithNSString:(NSString *)s {
  return LeUtil_hexStringToBytesWithNSString_(s);
}

+ (NSString *)bytesToHexStringWithByteArray:(IOSByteArray *)bytes {
  return LeUtil_bytesToHexStringWithByteArray_(bytes);
}

+ (IOSObjectArray *)getStringsFromUUIDsWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  return LeUtil_getStringsFromUUIDsWithJavaUtilUUIDArray_(uuids);
}

+ (IOSObjectArray *)putUUIDsInStringArrayWithJavaUtilUUIDArray:(IOSObjectArray *)uuids
                                             withNSStringArray:(IOSObjectArray *)params
                                                       withInt:(jint)start {
  return LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(uuids, params, start);
}

+ (IOSByteArray *)intsToBytesWithIntArray:(IOSIntArray *)values {
  return LeUtil_intsToBytesWithIntArray_(values);
}

+ (IOSObjectArray *)extendWithNSStringArray:(IOSObjectArray *)args
                               withIntArray:(IOSIntArray *)paramsInFront {
  return LeUtil_extendWithNSStringArray_withIntArray_(args, paramsInFront);
}

+ (IOSObjectArray *)extendWithNSStringArray:(IOSObjectArray *)args
                               withNSString:(NSString *)paramInFront {
  return LeUtil_extendWithNSStringArray_withNSString_(args, paramInFront);
}

+ (NSString *)fourDigitStringWithInt:(jint)value {
  return LeUtil_fourDigitStringWithInt_(value);
}

+ (id<LeScanRecord>)parseLeScanRecordWithByteArray:(IOSByteArray *)scanrecord {
  return LeUtil_parseLeScanRecordWithByteArray_(scanrecord);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [LeUtil class]) {
    JreStrongAssignAndConsume(&LeUtil_hexArray, [IOSCharArray newArrayWithChars:(jchar[]){ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' } count:16]);
    J2OBJC_SET_INITIALIZED(LeUtil)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "bytesToStringWithByteArray:", "bytesToString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "stringToBytesWithNSString:", "stringToBytes", "[B", 0x9, NULL, NULL },
    { "hexStringToBytesWithNSString:", "hexStringToBytes", "[B", 0x9, NULL, NULL },
    { "bytesToHexStringWithByteArray:", "bytesToHexString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getStringsFromUUIDsWithJavaUtilUUIDArray:", "getStringsFromUUIDs", "[Ljava.lang.String;", 0x9, NULL, NULL },
    { "putUUIDsInStringArrayWithJavaUtilUUIDArray:withNSStringArray:withInt:", "putUUIDsInStringArray", "[Ljava.lang.String;", 0x9, NULL, NULL },
    { "intsToBytesWithIntArray:", "intsToBytes", "[B", 0x9, NULL, NULL },
    { "extendWithNSStringArray:withIntArray:", "extend", "[Ljava.lang.String;", 0x89, NULL, NULL },
    { "extendWithNSStringArray:withNSString:", "extend", "[Ljava.lang.String;", 0x9, NULL, NULL },
    { "fourDigitStringWithInt:", "fourDigitString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "parseLeScanRecordWithByteArray:", "parseLeScanRecord", "Lhoutbecke.rs.le.LeScanRecord;", 0x9, NULL, NULL },
    { "init", "LeUtil", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hexArray", "hexArray", 0x1c, "[C", &LeUtil_hexArray, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeUtil = { 2, "LeUtil", "houtbecke.rs.le", NULL, 0x1, 12, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeUtil;
}

@end

NSString *LeUtil_bytesToStringWithByteArray_(IOSByteArray *bytes) {
  LeUtil_initialize();
  if (bytes == nil) return @"";
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_init();
  {
    IOSByteArray *a__ = bytes;
    jbyte const *b__ = a__->buffer_;
    jbyte const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jbyte b = *b__++;
      [((JavaLangStringBuilder *) nil_chk([builder appendWithInt:b & (jint) 0xFF])) appendWithNSString:@","];
    }
  }
  NSString *bytesString = [builder description];
  if (((jint) [((NSString *) nil_chk(bytesString)) length]) > 0) return [bytesString substring:0 endIndex:((jint) [bytesString length]) - 1];
  return bytesString;
}

IOSByteArray *LeUtil_stringToBytesWithNSString_(NSString *string) {
  LeUtil_initialize();
  JavaUtilStringTokenizer *tokenizer = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(string, @",");
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:[tokenizer countTokens]];
  for (jint k = 0; k < bytes->size_; k++) {
    @try {
      *IOSByteArray_GetRef(bytes, k) = (jbyte) JavaLangInteger_parseIntWithNSString_([tokenizer nextToken]);
    }
    @catch (JavaLangNumberFormatException *e) {
    }
  }
  return bytes;
}

IOSByteArray *LeUtil_hexStringToBytesWithNSString_(NSString *s) {
  LeUtil_initialize();
  jint len = ((jint) [((NSString *) nil_chk(s)) length]);
  IOSByteArray *data = [IOSByteArray arrayWithLength:len / 2];
  for (jint i = 0; i < len; i += 2) {
    *IOSByteArray_GetRef(data, i / 2) = (jbyte) ((JreLShift32(JavaLangCharacter_digitWithChar_withInt_([s charAtWithInt:i], 16), 4)) + JavaLangCharacter_digitWithChar_withInt_([s charAtWithInt:i + 1], 16));
  }
  return data;
}

NSString *LeUtil_bytesToHexStringWithByteArray_(IOSByteArray *bytes) {
  LeUtil_initialize();
  if (bytes == nil) return @"";
  IOSCharArray *hexChars = [IOSCharArray arrayWithLength:bytes->size_ * 2];
  jint v;
  for (jint j = 0; j < bytes->size_; j++) {
    v = IOSByteArray_Get(bytes, j) & (jint) 0xFF;
    *IOSCharArray_GetRef(hexChars, j * 2) = IOSCharArray_Get(nil_chk(LeUtil_hexArray), JreURShift32(v, 4));
    *IOSCharArray_GetRef(hexChars, j * 2 + 1) = IOSCharArray_Get(LeUtil_hexArray, v & (jint) 0x0F);
  }
  return [NSString stringWithCharacters:hexChars];
}

IOSObjectArray *LeUtil_getStringsFromUUIDsWithJavaUtilUUIDArray_(IOSObjectArray *uuids) {
  LeUtil_initialize();
  IOSObjectArray *params = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(uuids))->size_ type:NSString_class_()];
  return LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(uuids, params, 0);
}

IOSObjectArray *LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(IOSObjectArray *uuids, IOSObjectArray *params, jint start) {
  LeUtil_initialize();
  for (jint k = 0; k < ((IOSObjectArray *) nil_chk(uuids))->size_; k++) {
    if (IOSObjectArray_Get(uuids, k) != nil) IOSObjectArray_Set(nil_chk(params), k + start, [((JavaUtilUUID *) nil_chk(IOSObjectArray_Get(uuids, k))) description]);
    else IOSObjectArray_Set(nil_chk(params), k + start, @"");
  }
  return params;
}

IOSByteArray *LeUtil_intsToBytesWithIntArray_(IOSIntArray *values) {
  LeUtil_initialize();
  IOSByteArray *ret = [IOSByteArray arrayWithLength:((IOSIntArray *) nil_chk(values))->size_];
  for (jint k = 0, len = values->size_; k < len; k++) *IOSByteArray_GetRef(ret, k) = (jbyte) IOSIntArray_Get(values, k);
  return ret;
}

IOSObjectArray *LeUtil_extendWithNSStringArray_withIntArray_(IOSObjectArray *args, IOSIntArray *paramsInFront) {
  LeUtil_initialize();
  IOSObjectArray *ret = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(args))->size_ + ((IOSIntArray *) nil_chk(paramsInFront))->size_ type:NSString_class_()];
  for (jint k = 0; k < paramsInFront->size_; k++) IOSObjectArray_Set(ret, k, JreStrcat("I", IOSIntArray_Get(paramsInFront, k)));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(args, 0, ret, paramsInFront->size_, args->size_);
  return ret;
}

IOSObjectArray *LeUtil_extendWithNSStringArray_withNSString_(IOSObjectArray *args, NSString *paramInFront) {
  LeUtil_initialize();
  IOSObjectArray *ret = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(args))->size_ + 1 type:NSString_class_()];
  IOSObjectArray_Set(ret, 0, paramInFront);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(args, 0, ret, 1, args->size_);
  return ret;
}

NSString *LeUtil_fourDigitStringWithInt_(jint value) {
  LeUtil_initialize();
  NSString *ret = JreStrcat("I", value);
  if (((jint) [ret length]) > 4) return [ret substring:0 endIndex:4];
  while (((jint) [ret length]) < 4) ret = JreStrcat("C$", '0', ret);
  return ret;
}

id<LeScanRecord> LeUtil_parseLeScanRecordWithByteArray_(IOSByteArray *scanrecord) {
  LeUtil_initialize();
  return create_LeScanRecordImpl_initWithByteArray_(scanrecord);
}

void LeUtil_init(LeUtil *self) {
  NSObject_init(self);
}

LeUtil *new_LeUtil_init() {
  J2OBJC_NEW_IMPL(LeUtil, init)
}

LeUtil *create_LeUtil_init() {
  J2OBJC_CREATE_IMPL(LeUtil, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeUtil)
