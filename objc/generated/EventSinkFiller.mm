
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

+ (jint)DEFAULT_DEVICE_ID {
  return EventSinkFiller_DEFAULT_DEVICE_ID;
}

- (SessionObject *)end {
  return and__;
}

- (instancetype __nonnull)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource {
  EventSinkFiller_initWithListEventSinkSource_(self, listEventSinkSource);
  return self;
}

- (instancetype __nonnull)initWithListEventSinkSource:(ListEventSinkSource *)listEventSinkSource
                                    withSessionObject:(SessionObject *)sessionObject {
  EventSinkFiller_initWithListEventSinkSource_withSessionObject_(self, listEventSinkSource, sessionObject);
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:create_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, LeUtil_extendWithNSStringArray_withIntArray_(args, [IOSIntArray arrayWithInts:(jint[]){ secondSource } count:1]))];
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                                     withInt:(jint)secondSource
                                     withInt:(jint)thirdSource
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:create_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, LeUtil_extendWithNSStringArray_withIntArray_(args, [IOSIntArray arrayWithInts:(jint[]){ secondSource, thirdSource } count:2]))];
  return self;
}

- (EventSinkFiller *)addEventWithLeEventType:(LeEventType *)type
                                     withInt:(jint)source
                           withNSStringArray:(IOSObjectArray *)args {
  [((ListEventSinkSource *) nil_chk(listEventSinkSource_)) addEventWithEvent:create_Event_initWithEventType_withInt_withInt_withNSStringArray_(type, defaultDelay_, source, args)];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                 withNSStringArray:(IOSObjectArray *)args {
  [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withInt:secondSource withNSStringArray:args];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                           withInt:(jint)secondSource
                                           withInt:(jint)thirdSource
                                 withNSStringArray:(IOSObjectArray *)args {
  [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withInt:secondSource withInt:thirdSource withNSStringArray:args];
  return self;
}

- (EventSinkFiller *)addDeviceEventWithLeEventType:(LeEventType *)type
                                 withNSStringArray:(IOSObjectArray *)args {
  [self addEventWithLeEventType:type withInt:EventSinkFiller_DEFAULT_DEVICE_ID withNSStringArray:args];
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
  [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChangedWithMockedValue) withInt:remoteDevice withInt:characteristic withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
  return self;
}

- (EventSinkFiller *)waitForPointWithNSString:(NSString *)point {
  [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockWaitForPoint) withInt:0 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ point } count:1 type:NSString_class_()]];
  return self;
}

- (EventSinkFiller *)pointReachedWithNSString:(NSString *)point {
  [self addEventWithLeEventType:JreLoadEnum(LeEventType, mockPointReached) withInt:0 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ point } count:1 type:NSString_class_()]];
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

- (void)dealloc {
  RELEASE_(listEventSinkSource_);
  RELEASE_(and__);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LSessionObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 2, 3, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 2, 4, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 2, 5, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 6, 5, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 6, 3, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x81, 6, 7, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 16, 15, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 19, 18, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(end);
  methods[1].selector = @selector(initWithListEventSinkSource:);
  methods[2].selector = @selector(initWithListEventSinkSource:withSessionObject:);
  methods[3].selector = @selector(addEventWithLeEventType:withInt:withInt:withNSStringArray:);
  methods[4].selector = @selector(addEventWithLeEventType:withInt:withInt:withInt:withNSStringArray:);
  methods[5].selector = @selector(addEventWithLeEventType:withInt:withNSStringArray:);
  methods[6].selector = @selector(addDeviceEventWithLeEventType:withInt:withNSStringArray:);
  methods[7].selector = @selector(addDeviceEventWithLeEventType:withInt:withInt:withNSStringArray:);
  methods[8].selector = @selector(addDeviceEventWithLeEventType:withNSStringArray:);
  methods[9].selector = @selector(mockCharacteristicChangesWithInt:withInt:);
  methods[10].selector = @selector(characteristicChangeWithByteArray:);
  methods[11].selector = @selector(mockCharacteristicChangeWithInt:withInt:withByteArray:);
  methods[12].selector = @selector(waitForPointWithNSString:);
  methods[13].selector = @selector(pointReachedWithNSString:);
  methods[14].selector = @selector(andNoDelay);
  methods[15].selector = @selector(andDelayWithInt:);
  methods[16].selector = @selector(hasDefaultDelayWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_DEVICE_ID", "I", .constantValue.asInt = EventSinkFiller_DEFAULT_DEVICE_ID, 0x19, -1, -1, -1, -1 },
    { "listEventSinkSource_", "LListEventSinkSource;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "defaultDelay_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "and__", "LSessionObject;", .constantValue.asLong = 0, 0x11, 20, -1, -1, -1 },
    { "currentRemoteDevice_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "currentCharacteristic_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LListEventSinkSource;", "LListEventSinkSource;LSessionObject;", "addEvent", "LLeEventType;II[LNSString;", "LLeEventType;III[LNSString;", "LLeEventType;I[LNSString;", "addDeviceEvent", "LLeEventType;[LNSString;", "mockCharacteristicChanges", "II", "characteristicChange", "[B", "mockCharacteristicChange", "II[B", "waitForPoint", "LNSString;", "pointReached", "andDelay", "I", "hasDefaultDelay", "and" };
  static const J2ObjcClassInfo _EventSinkFiller = { "EventSinkFiller", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 17, 6, -1, -1, -1, -1, -1 };
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
  JreStrongAssign(&self->listEventSinkSource_, listEventSinkSource);
  JreStrongAssign(&self->and__, sessionObject);
}

EventSinkFiller *new_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) {
  J2OBJC_NEW_IMPL(EventSinkFiller, initWithListEventSinkSource_withSessionObject_, listEventSinkSource, sessionObject)
}

EventSinkFiller *create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(ListEventSinkSource *listEventSinkSource, SessionObject *sessionObject) {
  J2OBJC_CREATE_IMPL(EventSinkFiller, initWithListEventSinkSource_withSessionObject_, listEventSinkSource, sessionObject)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EventSinkFiller)
