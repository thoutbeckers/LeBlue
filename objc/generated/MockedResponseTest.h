
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MockedResponseTest")
#ifdef RESTRICT_MockedResponseTest
#define INCLUDE_ALL_MockedResponseTest 0
#else
#define INCLUDE_ALL_MockedResponseTest 1
#endif
#undef RESTRICT_MockedResponseTest

#if !defined (MockedResponseTest_) && (INCLUDE_ALL_MockedResponseTest || defined(INCLUDE_MockedResponseTest))
#define MockedResponseTest_

@class IOSObjectArray;

@interface MockedResponseTest : NSObject

#pragma mark Public

- (instancetype)init;

- (void)testMockedResponse;

@end

J2OBJC_EMPTY_STATIC_INIT(MockedResponseTest)

FOUNDATION_EXPORT void MockedResponseTest_init(MockedResponseTest *self);

FOUNDATION_EXPORT MockedResponseTest *new_MockedResponseTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseTest *create_MockedResponseTest_init();

J2OBJC_TYPE_LITERAL_HEADER(MockedResponseTest)

@compatibility_alias HoutbeckeRsLeMockedResponseTest MockedResponseTest;

#endif

#pragma pop_macro("INCLUDE_ALL_MockedResponseTest")
