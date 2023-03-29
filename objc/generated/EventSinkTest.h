
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSinkTest")
#ifdef RESTRICT_EventSinkTest
#define INCLUDE_ALL_EventSinkTest 0
#else
#define INCLUDE_ALL_EventSinkTest 1
#endif
#undef RESTRICT_EventSinkTest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (EventSinkTest_) && (INCLUDE_ALL_EventSinkTest || defined(INCLUDE_EventSinkTest))
#define EventSinkTest_

@interface EventSinkTest : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (void)setUp;

- (void)testLimit;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSinkTest)

FOUNDATION_EXPORT void EventSinkTest_init(EventSinkTest *self);

FOUNDATION_EXPORT EventSinkTest *new_EventSinkTest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EventSinkTest *create_EventSinkTest_init(void);

J2OBJC_TYPE_LITERAL_HEADER(EventSinkTest)

@compatibility_alias HoutbeckeRsLeEventSinkTest EventSinkTest;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_EventSinkTest")
