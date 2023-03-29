
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MockerTest")
#ifdef RESTRICT_MockerTest
#define INCLUDE_ALL_MockerTest 0
#else
#define INCLUDE_ALL_MockerTest 1
#endif
#undef RESTRICT_MockerTest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (MockerTest_) && (INCLUDE_ALL_MockerTest || defined(INCLUDE_MockerTest))
#define MockerTest_

@class ListEventSinkSource;
@protocol LeDevice;
@protocol LeRemoteDevice;

@interface MockerTest : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (ListEventSinkSource *)createSource;

- (id<LeDevice>)getDevice;

- (id<LeRemoteDevice>)getRemoteDevice;

- (void)setRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice;

- (void)setUp;

- (void)testController;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest)

FOUNDATION_EXPORT void MockerTest_init(MockerTest *self);

FOUNDATION_EXPORT MockerTest *new_MockerTest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockerTest *create_MockerTest_init(void);

J2OBJC_TYPE_LITERAL_HEADER(MockerTest)

@compatibility_alias HoutbeckeRsLeMockerTest MockerTest;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_MockerTest")
