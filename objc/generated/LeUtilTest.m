
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeDefinedUUIDs.h"
#include "LeScanRecord.h"
#include "LeUtil.h"
#include "LeUtilTest.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "org/junit/Assert.h"
#include "org/junit/Test.h"

@implementation LeUtilTest

- (void)testScanRecord {
  IOSByteArray *scanrecord = LeUtil_stringToBytesWithNSString_(@"2,1,6,3,2,13,24,15,9,87,97,104,111,111,32,72,82,77,32,118,50,46,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");
  id<LeScanRecord> leScanRecord = LeUtil_parseLeScanRecordWithByteArray_(scanrecord);
  JreAssert(([((id<LeScanRecord>) nil_chk(leScanRecord)) hasServiceWithJavaUtilUUID:JreLoadStatic(LeDefinedUUIDs_Service, HEART_RATE)]), (@"houtbecke/rs/le/LeUtilTest.java:21 condition failed: assert leScanRecord.hasService(LeDefinedUUIDs.Service.HEART_RATE);"));
  scanrecord = LeUtil_stringToBytesWithNSString_(@"15,9,84,97,99,120,32,65,78,84,32,66,114,97,107,101,2,1,5,17,7,95,103,98,80,-83,-122,17,-30,-98,-106,8,12,5,-92,-102,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");
  leScanRecord = LeUtil_parseLeScanRecordWithByteArray_(scanrecord);
  JreAssert(([((id<LeScanRecord>) nil_chk(leScanRecord)) hasServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"669aa405-0c08-969e-e211-86ad5062675f")]), (@"houtbecke/rs/le/LeUtilTest.java:25 condition failed: assert leScanRecord.hasService( UUID.fromString(\"669aa405-0c08-969e-e211-86ad5062675f\"));"));
  scanrecord = LeUtil_stringToBytesWithNSString_(@"13,9,84,97,99,120,32,66,117,115,104,105,100,111,2,1,6,5,3,24,24,22,24,17,7,95,103,98,80,-83,-122,17,-30,-98,-106,8,12,5,-92,-102,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0");
  leScanRecord = LeUtil_parseLeScanRecordWithByteArray_(scanrecord);
  JreAssert(([((id<LeScanRecord>) nil_chk(leScanRecord)) hasServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"669aa405-0c08-969e-e211-86ad5062675f")]), (@"houtbecke/rs/le/LeUtilTest.java:29 condition failed: assert leScanRecord.hasService( UUID.fromString(\"669aa405-0c08-969e-e211-86ad5062675f\"));"));
  leScanRecord = LeUtil_parseLeScanRecordWithByteArray_([IOSByteArray arrayWithLength:0]);
  JreAssert((((IOSObjectArray *) nil_chk([((id<LeScanRecord>) nil_chk(leScanRecord)) getServices]))->size_ == 0), (@"houtbecke/rs/le/LeUtilTest.java:32 condition failed: assert leScanRecord.getServices().length == 0;"));
}

- (void)testStringToByte {
  IOSByteArray *byteArray = [IOSByteArray arrayWithBytes:(jbyte[]){ 0, -127 } count:2];
  IOSByteArray *ba = LeUtil_stringToBytesWithNSString_(@"256,-127");
  OrgJunitAssert_assertArrayEqualsWithByteArray_withByteArray_(byteArray, ba);
}

- (void)testHexString {
  IOSByteArray *byteArray = [IOSByteArray arrayWithBytes:(jbyte[]){ (jbyte) 255, 0, 0, 0 } count:4];
  NSString *hexString = @"FF000000";
  OrgJunitAssert_assertEqualsWithId_withId_(hexString, LeUtil_bytesToHexStringWithByteArray_(byteArray));
  OrgJunitAssert_assertArrayEqualsWithByteArray_withByteArray_(byteArray, LeUtil_hexStringToBytesWithNSString_(hexString));
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeUtilTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_testScanRecord {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_testStringToByte {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_testHexString {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "testScanRecord", NULL, "V", 0x1, NULL, NULL },
    { "testStringToByte", NULL, "V", 0x1, NULL, NULL },
    { "testHexString", NULL, "V", 0x1, NULL, NULL },
    { "init", "LeUtilTest", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeUtilTest = { 2, "LeUtilTest", "houtbecke.rs.le", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeUtilTest;
}

@end

void LeUtilTest_init(LeUtilTest *self) {
  NSObject_init(self);
}

LeUtilTest *new_LeUtilTest_init() {
  J2OBJC_NEW_IMPL(LeUtilTest, init)
}

LeUtilTest *create_LeUtilTest_init() {
  J2OBJC_CREATE_IMPL(LeUtilTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeUtilTest)
