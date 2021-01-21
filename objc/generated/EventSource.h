
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSource")
#ifdef RESTRICT_EventSource
#define INCLUDE_ALL_EventSource 0
#else
#define INCLUDE_ALL_EventSource 1
#endif
#undef RESTRICT_EventSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (EventSource_) && (INCLUDE_ALL_EventSource || defined(INCLUDE_EventSource))
#define EventSource_

@class Event;

@protocol EventSource < JavaObject >

- (Event *)nextEvent;

- (jboolean)hasMoreEvent;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSource)

J2OBJC_TYPE_LITERAL_HEADER(EventSource)

#define HoutbeckeRsLeSessionEventSource EventSource

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_EventSource")
