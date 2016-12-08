
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeUtil")
#ifdef RESTRICT_LeUtil
#define INCLUDE_ALL_LeUtil 0
#else
#define INCLUDE_ALL_LeUtil 1
#endif
#undef RESTRICT_LeUtil

#if !defined (LeUtil_) && (INCLUDE_ALL_LeUtil || defined(INCLUDE_LeUtil))
#define LeUtil_

@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class IOSObjectArray;
@protocol LeScanRecord;

@interface LeUtil : NSObject

+ (IOSCharArray *)hexArray;

#pragma mark Public

- (instancetype)init;

+ (NSString *)bytesToHexStringWithByteArray:(IOSByteArray *)bytes;

+ (NSString *)bytesToStringWithByteArray:(IOSByteArray *)bytes;

+ (IOSObjectArray *)extendWithNSStringArray:(IOSObjectArray *)args
                               withIntArray:(IOSIntArray *)paramsInFront;

+ (IOSObjectArray *)extendWithNSStringArray:(IOSObjectArray *)args
                               withNSString:(NSString *)paramInFront;

+ (NSString *)fourDigitStringWithInt:(jint)value;

+ (IOSObjectArray *)getStringsFromUUIDsWithJavaUtilUUIDArray:(IOSObjectArray *)uuids;

+ (IOSByteArray *)hexStringToBytesWithNSString:(NSString *)s;

+ (IOSByteArray *)intsToBytesWithIntArray:(IOSIntArray *)values;

+ (id<LeScanRecord>)parseLeScanRecordWithByteArray:(IOSByteArray *)scanrecord;

+ (IOSObjectArray *)putUUIDsInStringArrayWithJavaUtilUUIDArray:(IOSObjectArray *)uuids
                                             withNSStringArray:(IOSObjectArray *)params
                                                       withInt:(jint)start;

+ (IOSByteArray *)stringToBytesWithNSString:(NSString *)string;

@end

J2OBJC_STATIC_INIT(LeUtil)

inline IOSCharArray *LeUtil_get_hexArray();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSCharArray *LeUtil_hexArray;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeUtil, hexArray, IOSCharArray *)

FOUNDATION_EXPORT NSString *LeUtil_bytesToStringWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT IOSByteArray *LeUtil_stringToBytesWithNSString_(NSString *string);

FOUNDATION_EXPORT IOSByteArray *LeUtil_hexStringToBytesWithNSString_(NSString *s);

FOUNDATION_EXPORT NSString *LeUtil_bytesToHexStringWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT IOSObjectArray *LeUtil_getStringsFromUUIDsWithJavaUtilUUIDArray_(IOSObjectArray *uuids);

FOUNDATION_EXPORT IOSObjectArray *LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(IOSObjectArray *uuids, IOSObjectArray *params, jint start);

FOUNDATION_EXPORT IOSByteArray *LeUtil_intsToBytesWithIntArray_(IOSIntArray *values);

FOUNDATION_EXPORT IOSObjectArray *LeUtil_extendWithNSStringArray_withIntArray_(IOSObjectArray *args, IOSIntArray *paramsInFront);

FOUNDATION_EXPORT IOSObjectArray *LeUtil_extendWithNSStringArray_withNSString_(IOSObjectArray *args, NSString *paramInFront);

FOUNDATION_EXPORT NSString *LeUtil_fourDigitStringWithInt_(jint value);

FOUNDATION_EXPORT id<LeScanRecord> LeUtil_parseLeScanRecordWithByteArray_(IOSByteArray *scanrecord);

FOUNDATION_EXPORT void LeUtil_init(LeUtil *self);

FOUNDATION_EXPORT LeUtil *new_LeUtil_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeUtil *create_LeUtil_init();

J2OBJC_TYPE_LITERAL_HEADER(LeUtil)

@compatibility_alias HoutbeckeRsLeLeUtil LeUtil;

#endif

#pragma pop_macro("INCLUDE_ALL_LeUtil")
