
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSource")
#ifdef RESTRICT_EventSource
#define INCLUDE_ALL_EventSource 0
#else
#define INCLUDE_ALL_EventSource 1
#endif
#undef RESTRICT_EventSource

#if !defined (EventSource_) && (INCLUDE_ALL_EventSource || defined(INCLUDE_EventSource))
#define EventSource_

@class Event;

@protocol EventSource < NSObject, JavaObject >

- (Event *)nextEvent;

- (jboolean)hasMoreEvent;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSource)

J2OBJC_TYPE_LITERAL_HEADER(EventSource)

#define HoutbeckeRsLeSessionEventSource EventSource

#endif

#pragma pop_macro("INCLUDE_ALL_EventSource")
