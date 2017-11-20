
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventSinkFiller")
#ifdef RESTRICT_EventSinkFiller
#define INCLUDE_ALL_EventSinkFiller 0
#else
#define INCLUDE_ALL_EventSinkFiller 1
#endif
#undef RESTRICT_EventSinkFiller

#if !defined (EventSinkFiller_) && (INCLUDE_ALL_EventSinkFiller || defined(INCLUDE_EventSinkFiller))
#define EventSinkFiller_

@class IOSByteArray;
@class IOSObjectArray;
@class LeEventType;
@class ListEventSinkSource;
@class SessionObject;

@interface EventSinkFiller : NSObject {
 @public
  ListEventSinkSource *listEventSinkSource_;
  jint defaultDelay_;
  SessionObject *and__;
  jint currentRemoteDevice_;
  jint currentCharacteristic_;
}

+ (jint)DEFAULT_DEVICE_ID;

#pragma mark Public

- (instancetype)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource;

- (instancetype)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource
                          withSessionObject:(SessionObject *)sessionObject;

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                           withInt:(jint)thirdSource
                                 withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                 withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                 withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                                     withInt:(jint)thirdSource
                           withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                           withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                           withNSStringArray:(IOSObjectArray *)args;

- (EventSinkFiller *)andDelayWithInt:(jint)delay;

- (EventSinkFiller *)andNoDelay;

- (EventSinkFiller *)characteristicChangeWithByteArray:(IOSByteArray *)value;

- (SessionObject *)end;

- (EventSinkFiller *)hasDefaultDelayWithInt:(jint)delay;

- (EventSinkFiller *)mockCharacteristicChangeWithInt:(jint)remoteDevice
                                             withInt:(jint)characteristic
                                       withByteArray:(IOSByteArray *)value;

- (EventSinkFiller *)mockCharacteristicChangesWithInt:(jint)remoteDevice
                                              withInt:(jint)characteristic;

- (EventSinkFiller *)pointReachedWithNSString:(NSString *)point;

- (EventSinkFiller *)waitForPointWithNSString:(NSString *)point;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EventSinkFiller)

J2OBJC_FIELD_SETTER(EventSinkFiller, listEventSinkSource_, ListEventSinkSource *)
J2OBJC_FIELD_SETTER(EventSinkFiller, and__, SessionObject *)

inline jint EventSinkFiller_get_DEFAULT_DEVICE_ID();
#define EventSinkFiller_DEFAULT_DEVICE_ID 0
J2OBJC_STATIC_FIELD_CONSTANT(EventSinkFiller, DEFAULT_DEVICE_ID, jint)

FOUNDATION_EXPORT void EventSinkFiller_initWithListEventSinkSource_(EventSinkFiller *self, ListEventSinkSource *listEventSinkSource);

FOUNDATION_EXPORT EventSinkFiller *new_EventSinkFiller_initWithListEventSinkSource_(ListEventSinkSource *listEventSinkSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EventSinkFiller *create_EventSinkFiller_initWithListEventSinkSource_(ListEventSinkSource *listEventSinkSource);

FOUNDATION_EXPORT void EventSinkFiller_initWithListEventSinkSource_withSessionObject_(EventSinkFiller *self, ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject);

FOUNDATION_EXPORT EventSinkFiller *new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EventSinkFiller *create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject);

J2OBJC_TYPE_LITERAL_HEADER(EventSinkFiller)

@compatibility_alias HoutbeckeRsLeSessionEventSinkFiller EventSinkFiller;

#endif

#pragma pop_macro("INCLUDE_ALL_EventSinkFiller")
