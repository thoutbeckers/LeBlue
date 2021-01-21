
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Mocker")
#ifdef RESTRICT_Mocker
#define INCLUDE_ALL_Mocker 0
#else
#define INCLUDE_ALL_Mocker 1
#endif
#undef RESTRICT_Mocker

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (Mocker_) && (INCLUDE_ALL_Mocker || defined(INCLUDE_Mocker))
#define Mocker_

@class IOSObjectArray;
@class LeEventType;
@protocol LeMockController;
@protocol MockedResponse;

@protocol Mocker < JavaObject >

- (id<MockedResponse>)mockWithLeMockController:(id<LeMockController>)controller
                               withLeEventType:(LeEventType *)type
                                       withInt:(jint)source
                             withNSStringArray:(IOSObjectArray *)arguments;

- (IOSObjectArray *)getDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                   withInt:(jint)device;

- (IOSObjectArray *)getRemoteDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                         withInt:(jint)remoteDevice;

- (IOSObjectArray *)getCharacteristicListenersWithLeMockController:(id<LeMockController>)controller
                                                           withInt:(jint)characteristic;

@end

J2OBJC_EMPTY_STATIC_INIT(Mocker)

J2OBJC_TYPE_LITERAL_HEADER(Mocker)

#define HoutbeckeRsLeSessionMocker Mocker

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_Mocker")
