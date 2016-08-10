
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSinkUtil")
#ifdef RESTRICT_EventSinkUtil
#define INCLUDE_ALL_EventSinkUtil 0
#else
#define INCLUDE_ALL_EventSinkUtil 1
#endif
#undef RESTRICT_EventSinkUtil

#if !defined (EventSinkUtil_) && (INCLUDE_ALL_EventSinkUtil || defined(INCLUDE_EventSinkUtil))
#define EventSinkUtil_

@protocol EventSink;

@protocol EventSinkUtil < NSObject, JavaObject >

- (NSString *)writeWithEventSink:(id<EventSink>)eventSink;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSinkUtil)

J2OBJC_TYPE_LITERAL_HEADER(EventSinkUtil)

#define HoutbeckeRsLeInterceptorEventSinkUtil EventSinkUtil

#endif

#pragma pop_macro("INCLUDE_ALL_EventSinkUtil")
