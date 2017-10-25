
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_StringEventSinkUtil")
#ifdef RESTRICT_StringEventSinkUtil
#define INCLUDE_ALL_StringEventSinkUtil 0
#else
#define INCLUDE_ALL_StringEventSinkUtil 1
#endif
#undef RESTRICT_StringEventSinkUtil

#if !defined (StringEventSinkUtil_) && (INCLUDE_ALL_StringEventSinkUtil || defined(INCLUDE_StringEventSinkUtil))
#define StringEventSinkUtil_

#define RESTRICT_EventSinkUtil 1
#define INCLUDE_EventSinkUtil 1
#include "EventSinkUtil.h"

@protocol EventSink;

@interface StringEventSinkUtil : NSObject < EventSinkUtil >

#pragma mark Public

- (instancetype)init;

- (NSString *)writeWithEventSink:(id<EventSink>)eventSink;

@end

J2OBJC_EMPTY_STATIC_INIT(StringEventSinkUtil)

FOUNDATION_EXPORT void StringEventSinkUtil_init(StringEventSinkUtil *self);

FOUNDATION_EXPORT StringEventSinkUtil *new_StringEventSinkUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT StringEventSinkUtil *create_StringEventSinkUtil_init(void);

J2OBJC_TYPE_LITERAL_HEADER(StringEventSinkUtil)

@compatibility_alias HoutbeckeRsLeInterceptorStringEventSinkUtil StringEventSinkUtil;

#endif

#pragma pop_macro("INCLUDE_ALL_StringEventSinkUtil")
