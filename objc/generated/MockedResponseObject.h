
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MockedResponseObject")
#ifdef RESTRICT_MockedResponseObject
#define INCLUDE_ALL_MockedResponseObject 0
#else
#define INCLUDE_ALL_MockedResponseObject 1
#endif
#undef RESTRICT_MockedResponseObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (MockedResponseObject_) && (INCLUDE_ALL_MockedResponseObject || defined(INCLUDE_MockedResponseObject))
#define MockedResponseObject_

#define RESTRICT_MockedResponse 1
#define INCLUDE_MockedResponse 1
#include "MockedResponse.h"

@class Event;
@class IOSObjectArray;

@interface MockedResponseObject : NSObject < MockedResponse > {
 @public
  jint pos_;
  NSString *value_;
  jboolean selfDestroying_;
}

#pragma mark Public

- (instancetype __nonnull)initWithEvent:(Event *)nextMockedEvent;

- (instancetype __nonnull)initWithEventArray:(IOSObjectArray *)nextMockedEvents;

- (instancetype __nonnull)initWithEvent:(Event *)nextMockedEvent
                      withNSStringArray:(IOSObjectArray *)mockedResultValues;

- (instancetype __nonnull)initWithEventArray:(IOSObjectArray *)nextMockedEvents
                           withNSStringArray:(IOSObjectArray *)mockedResultValues;

- (instancetype __nonnull)initWithNSStringArray:(IOSObjectArray *)mockedResultValues;

- (void)addEventsWithEventArray:(IOSObjectArray *)events;

- (void)destroyAfterUse;

- (void)forArgumentsWithNSString:(NSString *)argument
                         withInt:(jint)pos;

- (IOSObjectArray *)getMockedResultValues;

- (IOSObjectArray *)getNextMockedEvents;

- (jboolean)isForArgumentsWithNSStringArray:(IOSObjectArray *)values;

- (jboolean)isSelfDestroying;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(MockedResponseObject)

J2OBJC_FIELD_SETTER(MockedResponseObject, value_, NSString *)

FOUNDATION_EXPORT void MockedResponseObject_initWithEvent_(MockedResponseObject *self, Event *nextMockedEvent);

FOUNDATION_EXPORT MockedResponseObject *new_MockedResponseObject_initWithEvent_(Event *nextMockedEvent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseObject *create_MockedResponseObject_initWithEvent_(Event *nextMockedEvent);

FOUNDATION_EXPORT void MockedResponseObject_initWithNSStringArray_(MockedResponseObject *self, IOSObjectArray *mockedResultValues);

FOUNDATION_EXPORT MockedResponseObject *new_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseObject *create_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues);

FOUNDATION_EXPORT void MockedResponseObject_initWithEvent_withNSStringArray_(MockedResponseObject *self, Event *nextMockedEvent, IOSObjectArray *mockedResultValues);

FOUNDATION_EXPORT MockedResponseObject *new_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseObject *create_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues);

FOUNDATION_EXPORT void MockedResponseObject_initWithEventArray_(MockedResponseObject *self, IOSObjectArray *nextMockedEvents);

FOUNDATION_EXPORT MockedResponseObject *new_MockedResponseObject_initWithEventArray_(IOSObjectArray *nextMockedEvents) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseObject *create_MockedResponseObject_initWithEventArray_(IOSObjectArray *nextMockedEvents);

FOUNDATION_EXPORT void MockedResponseObject_initWithEventArray_withNSStringArray_(MockedResponseObject *self, IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues);

FOUNDATION_EXPORT MockedResponseObject *new_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockedResponseObject *create_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues);

J2OBJC_TYPE_LITERAL_HEADER(MockedResponseObject)

@compatibility_alias HoutbeckeRsLeSessionMockedResponseObject MockedResponseObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_MockedResponseObject")
