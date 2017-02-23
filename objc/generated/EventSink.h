
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSink")
#ifdef RESTRICT_EventSink
#define INCLUDE_ALL_EventSink 0
#else
#define INCLUDE_ALL_EventSink 1
#endif
#undef RESTRICT_EventSink

#if !defined (EventSink_) && (INCLUDE_ALL_EventSink || defined(INCLUDE_EventSink))
#define EventSink_

@class Event;
@class IOSObjectArray;

@protocol EventSink < JavaObject >

- (void)addEventWithEvent:(Event *)event;

- (IOSObjectArray *)getEvents;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSink)

J2OBJC_TYPE_LITERAL_HEADER(EventSink)

#define HoutbeckeRsLeSessionEventSink EventSink

#endif

#pragma pop_macro("INCLUDE_ALL_EventSink")
