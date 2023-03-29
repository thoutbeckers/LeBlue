
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MockedResponse")
#ifdef RESTRICT_MockedResponse
#define INCLUDE_ALL_MockedResponse 0
#else
#define INCLUDE_ALL_MockedResponse 1
#endif
#undef RESTRICT_MockedResponse

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (MockedResponse_) && (INCLUDE_ALL_MockedResponse || defined(INCLUDE_MockedResponse))
#define MockedResponse_

@class IOSObjectArray;

@protocol MockedResponse < JavaObject >

- (IOSObjectArray *)getMockedResultValues;

- (IOSObjectArray *)getNextMockedEvents;

- (jboolean)isSelfDestroying;

- (jboolean)isForArgumentsWithNSStringArray:(IOSObjectArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(MockedResponse)

J2OBJC_TYPE_LITERAL_HEADER(MockedResponse)

#define HoutbeckeRsLeSessionMockedResponse MockedResponse

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_MockedResponse")
