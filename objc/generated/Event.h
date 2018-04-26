
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Event")
#ifdef RESTRICT_Event
#define INCLUDE_ALL_Event 0
#else
#define INCLUDE_ALL_Event 1
#endif
#undef RESTRICT_Event

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (Event_) && (INCLUDE_ALL_Event || defined(INCLUDE_Event))
#define Event_

@class BaseIntercepting;
@class IOSObjectArray;
@protocol EventType;

@interface Event : NSObject {
 @public
  id<EventType> type_;
  jint source_;
  jint delay_;
  jlong timeStamp_;
  IOSObjectArray *values_;
}

#pragma mark Public

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                       withBaseIntercepting:(BaseIntercepting *)source
                          withNSStringArray:(IOSObjectArray *)values;

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                                    withInt:(jint)delay
                       withBaseIntercepting:(BaseIntercepting *)source
                          withNSStringArray:(IOSObjectArray *)values;

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                                    withInt:(jint)source
                                withBoolean:(jboolean)value;

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                                    withInt:(jint)delay
                                    withInt:(jint)source
                                withBoolean:(jboolean)value;

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                                    withInt:(jint)delay
                                    withInt:(jint)source
                          withNSStringArray:(IOSObjectArray *)values;

- (instancetype __nonnull)initWithEventType:(id<EventType>)type
                                    withInt:(jint)source
                          withNSStringArray:(IOSObjectArray *)values;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(Event)

J2OBJC_FIELD_SETTER(Event, type_, id<EventType>)
J2OBJC_FIELD_SETTER(Event, values_, IOSObjectArray *)

FOUNDATION_EXPORT void Event_initWithEventType_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, BaseIntercepting *source, IOSObjectArray *values);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values);

FOUNDATION_EXPORT void Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values);

FOUNDATION_EXPORT void Event_initWithEventType_withInt_withBoolean_(Event *self, id<EventType> type, jint source, jboolean value);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value);

FOUNDATION_EXPORT void Event_initWithEventType_withInt_withInt_withBoolean_(Event *self, id<EventType> type, jint delay, jint source, jboolean value);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value);

FOUNDATION_EXPORT void Event_initWithEventType_withInt_withNSStringArray_(Event *self, id<EventType> type, jint source, IOSObjectArray *values);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values);

FOUNDATION_EXPORT void Event_initWithEventType_withInt_withInt_withNSStringArray_(Event *self, id<EventType> type, jint delay, jint source, IOSObjectArray *values);

FOUNDATION_EXPORT Event *new_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Event *create_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values);

J2OBJC_TYPE_LITERAL_HEADER(Event)

@compatibility_alias HoutbeckeRsLeSessionEvent Event;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_Event")
