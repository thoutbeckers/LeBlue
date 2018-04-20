
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Session")
#ifdef RESTRICT_Session
#define INCLUDE_ALL_Session 0
#else
#define INCLUDE_ALL_Session 1
#endif
#undef RESTRICT_Session

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (Session_) && (INCLUDE_ALL_Session || defined(INCLUDE_Session))
#define Session_

@class IOSObjectArray;
@protocol EventSource;
@protocol Mocker;

@protocol Session < JavaObject >

- (id<Mocker>)getGattCharacteristicMockerWithInt:(jint)id_;

- (id<Mocker>)getGattServiceMockerWithInt:(jint)id_;

- (id<Mocker>)getDeviceMockerWithInt:(jint)id_;

- (id<Mocker>)getRemoteDeviceMockerWithInt:(jint)id_;

- (id<EventSource>)getDefaultSource;

- (id<EventSource>)getNamedEventSourceWithNSString:(NSString *)source;

- (IOSObjectArray *)getEventSourceNames;

- (NSString *)getSourceIdentificationWithInt:(jint)source;

- (void)setSourceIdentificationWithInt:(jint)source
                          withNSString:(NSString *)identification;

@end

J2OBJC_EMPTY_STATIC_INIT(Session)

J2OBJC_TYPE_LITERAL_HEADER(Session)

#define HoutbeckeRsLeSessionSession Session

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_Session")
