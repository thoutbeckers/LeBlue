
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeUtilTest")
#ifdef RESTRICT_LeUtilTest
#define INCLUDE_ALL_LeUtilTest 0
#else
#define INCLUDE_ALL_LeUtilTest 1
#endif
#undef RESTRICT_LeUtilTest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeUtilTest_) && (INCLUDE_ALL_LeUtilTest || defined(INCLUDE_LeUtilTest))
#define LeUtilTest_

@interface LeUtilTest : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (void)testHexString;

- (void)testScanRecord;

- (void)testStringToByte;

@end

J2OBJC_EMPTY_STATIC_INIT(LeUtilTest)

FOUNDATION_EXPORT void LeUtilTest_init(LeUtilTest *self);

FOUNDATION_EXPORT LeUtilTest *new_LeUtilTest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeUtilTest *create_LeUtilTest_init(void);

J2OBJC_TYPE_LITERAL_HEADER(LeUtilTest)

@compatibility_alias HoutbeckeRsLeLeUtilTest LeUtilTest;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeUtilTest")
