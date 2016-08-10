
#include "Event.h"
#include "EventSinkFiller.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "LeUtil.h"
#include "ListEventSinkSource.h"
#include "SessionObject.h"

@implementation EventSinkFiller

- (SessionObject *)end {
  return and__;
}

- (instancetype)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource {
  EventSinkFiller_initWithListEventSinkSource_(self, listEventSinkSource);
  return self;
}

- (instancetype)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource
                          withSessionObject:(SessionObject *)sessionObject {
  EventSinkFiller_initWithListEventSinkSource_withSessionObject_(self, listEventSinkSource, sessionObject);
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:new_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, LeUtil_extendWithNSStringArray_withIntArray_(args, [IOSIntArray newArrayWithInts:(jint[]){ secondSource } count:1]))];
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                                     withInt:(jint)thirdSource
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:new_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, LeUtil_extendWithNSStringArray_withIntArray_(args, [IOSIntArray newArrayWithInts:(jint[]){ secondSource, thirdSource } count:2]))];
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:new_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, args)];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                 withNSStringArray:(IOSObjectArray *)args {
  (void) [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withInt:secondSource withNSStringArray:args];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                           withInt:(jint)thirdSource
                                 withNSStringArray:(IOSObjectArray *)args {
  (void) [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withInt:secondSource withInt:thirdSource withNSStringArray:args];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                 withNSStringArray:(IOSObjectArray *)args {
  (void) [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withNSStringArray:args];
  return self;
}

- (EventSinkFiller *)mockCharacteristicChangesWithInt:(jint)remoteDevice
                                              withInt:(jint)characteristic {
  currentRemoteDevice_ = remoteDevice;
  currentCharacteristic_ = characteristic;
  return self;
}

- (EventSinkFiller *)characteristicChangeWithByteArray:(IOSByteArray *)value {
  return [self mockCharacteristicChangeWithInt:currentRemoteDevice_ withInt:currentCharacteristic_ withByteArray:value];
}

- (EventSinkFiller *)mockCharacteristicChangeWithInt:(jint)remoteDevice
                                             withInt:(jint)characteristic
                                       withByteArray:(IOSByteArray *)value {
  (void) [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChangedWithMockedValue) withInt:remoteDevice withInt:characteristic withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
  return self;
}

- (EventSinkFiller *)waitForPointWithNSString:(NSString *)point {
  (void) [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockWaitForPoint) withInt:0 withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ point } count:1 type:NSString_class_()]];
  return self;
}

- (EventSinkFiller *)pointReachedWithNSString:(NSString *)point {
  (void) [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockPointReached) withInt:0 withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ point } count:1 type:NSString_class_()]];
  return self;
}

- (EventSinkFiller *)andNoDelay {
  return [self andDelayWithInt:0];
}

- (EventSinkFiller *)andDelayWithInt:(jint)delay {
  ((Event *) nil_chk([((ListEventSinkSource *) nil_chk(listEventSinkSource_)) lastEvent]))->delay_ = delay;
  return self;
}

- (EventSinkFiller *)hasDefaultDelayWithInt:(jint)delay {
  defaultDelay_ = delay;
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "end", NULL, "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "initWithListEventSinkSource:", "EventSinkFiller", NULL, 0x1, NULL, NULL },
    { "initWithListEventSinkSource:withSessionObject:", "EventSinkFiller", NULL, 0x1, NULL, NULL },
    { "addEventWithLeEventType:withInt:withInt:withNSStringArray:", "addEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "addEventWithLeEventType:withInt:withInt:withInt:withNSStringArray:", "addEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "addEventWithLeEventType:withInt:withNSStringArray:", "addEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "addDeviceEventWithLeEventType:withInt:withNSStringArray:", "addDeviceEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "addDeviceEventWithLeEventType:withInt:withInt:withNSStringArray:", "addDeviceEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "addDeviceEventWithLeEventType:withNSStringArray:", "addDeviceEvent", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x81, NULL, NULL },
    { "mockCharacteristicChangesWithInt:withInt:", "mockCharacteristicChanges", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "characteristicChangeWithByteArray:", "characteristicChange", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "mockCharacteristicChangeWithInt:withInt:withByteArray:", "mockCharacteristicChange", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "waitForPointWithNSString:", "waitForPoint", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "pointReachedWithNSString:", "pointReached", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "andNoDelay", NULL, "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "andDelayWithInt:", "andDelay", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
    { "hasDefaultDelayWithInt:", "hasDefaultDelay", "Lhoutbecke.rs.le.session.EventSinkFiller;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_DEVICE_ID", "DEFAULT_DEVICE_ID", 0x19, "I", NULL, NULL, .constantValue.asInt = EventSinkFiller_DEFAULT_DEVICE_ID },
    { "listEventSinkSource_", NULL, 0x0, "Lhoutbecke.rs.le.session.ListEventSinkSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultDelay_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "and__", "and", 0x11, "Lhoutbecke.rs.le.session.SessionObject;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentRemoteDevice_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentCharacteristic_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _EventSinkFiller = { 2, "EventSinkFiller", "houtbecke.rs.le.session", NULL, 0x1, 17, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_EventSinkFiller;
}

@end

void EventSinkFiller_initWithListEventSinkSource_(EventSinkFiller *self, ListEventSinkSource *listEventSinkSource) {
  EventSinkFiller_initWithListEventSinkSource_withSessionObject_(self, listEventSinkSource, nil);
}

EventSinkFiller *new_EventSinkFiller_initWithListEventSinkSource_(ListEventSinkSource *listEventSinkSource) {
  J2OBJC_NEW_IMPL(EventSinkFiller, initWithListEventSinkSource_, listEventSinkSource)
}

EventSinkFiller *create_EventSinkFiller_initWithListEventSinkSource_(ListEventSinkSource *listEventSinkSource) {
  J2OBJC_CREATE_IMPL(EventSinkFiller, initWithListEventSinkSource_, listEventSinkSource)
}

void EventSinkFiller_initWithListEventSinkSource_withSessionObject_(EventSinkFiller *self, ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) {
  NSObject_init(self);
  self->listEventSinkSource_ = listEventSinkSource;
  self->and__ = sessionObject;
}

EventSinkFiller *new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) {
  J2OBJC_NEW_IMPL(EventSinkFiller, initWithListEventSinkSource_withSessionObject_, listEventSinkSource, sessionObject)
}

EventSinkFiller *create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) {
  J2OBJC_CREATE_IMPL(EventSinkFiller, initWithListEventSinkSource_withSessionObject_, listEventSinkSource, sessionObject)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EventSinkFiller)
