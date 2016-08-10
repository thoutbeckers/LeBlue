
#include "Event.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "MockedResponseObject.h"
#include "java/lang/System.h"

@interface MockedResponseObject () {
 @public
  IOSObjectArray *mockedResultValues_;
  IOSObjectArray *nextMockedEvents_;
}

@end

J2OBJC_FIELD_SETTER(MockedResponseObject, mockedResultValues_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(MockedResponseObject, nextMockedEvents_, IOSObjectArray *)

@implementation MockedResponseObject

- (IOSObjectArray *)getMockedResultValues {
  return mockedResultValues_;
}

- (void)addEventsWithEventArray:(IOSObjectArray *)events {
  IOSObjectArray *newEvents = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(events))->size_ + ((IOSObjectArray *) nil_chk(nextMockedEvents_))->size_ type:Event_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(nextMockedEvents_, 0, newEvents, 0, nextMockedEvents_->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(events, 0, newEvents, ((IOSObjectArray *) nil_chk(nextMockedEvents_))->size_, events->size_);
  nextMockedEvents_ = newEvents;
}

- (IOSObjectArray *)getNextMockedEvents {
  return nextMockedEvents_;
}

- (void)forArgumentsWithNSString:(NSString *)argument
                         withInt:(jint)pos {
  self->pos_ = pos;
  self->value_ = argument;
}

- (jboolean)isSelfDestroying {
  return selfDestroying_;
}

- (void)destroyAfterUse {
  selfDestroying_ = true;
}

- (jboolean)isForArgumentsWithNSStringArray:(IOSObjectArray *)values {
  if (pos_ == -1) return true;
  if (pos_ >= ((IOSObjectArray *) nil_chk(values))->size_) return false;
  if (value_ == nil) return IOSObjectArray_Get(values, pos_) == nil;
  return [value_ isEqual:IOSObjectArray_Get(values, pos_)];
}

- (instancetype)initWithEvent:(Event *)nextMockedEvent {
  MockedResponseObject_initWithEvent_(self, nextMockedEvent);
  return self;
}

- (instancetype)initWithNSStringArray:(IOSObjectArray *)mockedResultValues {
  MockedResponseObject_initWithNSStringArray_(self, mockedResultValues);
  return self;
}

- (instancetype)initWithEvent:(Event *)nextMockedEvent
            withNSStringArray:(IOSObjectArray *)mockedResultValues {
  MockedResponseObject_initWithEvent_withNSStringArray_(self, nextMockedEvent, mockedResultValues);
  return self;
}

- (instancetype)initWithEventArray:(IOSObjectArray *)nextMockedEvents {
  MockedResponseObject_initWithEventArray_(self, nextMockedEvents);
  return self;
}

- (instancetype)initWithEventArray:(IOSObjectArray *)nextMockedEvents
                 withNSStringArray:(IOSObjectArray *)mockedResultValues {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, nextMockedEvents, mockedResultValues);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getMockedResultValues", NULL, "[Ljava.lang.String;", 0x1, NULL, NULL },
    { "addEventsWithEventArray:", "addEvents", "V", 0x81, NULL, NULL },
    { "getNextMockedEvents", NULL, "[Lhoutbecke.rs.le.session.Event;", 0x1, NULL, NULL },
    { "forArgumentsWithNSString:withInt:", "forArguments", "V", 0x1, NULL, NULL },
    { "isSelfDestroying", NULL, "Z", 0x1, NULL, NULL },
    { "destroyAfterUse", NULL, "V", 0x1, NULL, NULL },
    { "isForArgumentsWithNSStringArray:", "isForArguments", "Z", 0x1, NULL, NULL },
    { "initWithEvent:", "MockedResponseObject", NULL, 0x1, NULL, NULL },
    { "initWithNSStringArray:", "MockedResponseObject", NULL, 0x81, NULL, NULL },
    { "initWithEvent:withNSStringArray:", "MockedResponseObject", NULL, 0x1, NULL, NULL },
    { "initWithEventArray:", "MockedResponseObject", NULL, 0x81, NULL, NULL },
    { "initWithEventArray:withNSStringArray:", "MockedResponseObject", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mockedResultValues_", NULL, 0x12, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "nextMockedEvents_", NULL, 0x2, "[Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "selfDestroying_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _MockedResponseObject = { 2, "MockedResponseObject", "houtbecke.rs.le.session", NULL, 0x1, 12, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_MockedResponseObject;
}

@end

void MockedResponseObject_initWithEvent_(MockedResponseObject *self, Event *nextMockedEvent) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray newArrayWithObjects:(id[]){ nextMockedEvent } count:1 type:Event_class_()], nil);
}

MockedResponseObject *new_MockedResponseObject_initWithEvent_(Event *nextMockedEvent) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEvent_, nextMockedEvent)
}

MockedResponseObject *create_MockedResponseObject_initWithEvent_(Event *nextMockedEvent) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEvent_, nextMockedEvent)
}

void MockedResponseObject_initWithNSStringArray_(MockedResponseObject *self, IOSObjectArray *mockedResultValues) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:Event_class_()], mockedResultValues);
}

MockedResponseObject *new_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithNSStringArray_, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithNSStringArray_, mockedResultValues)
}

void MockedResponseObject_initWithEvent_withNSStringArray_(MockedResponseObject *self, Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray newArrayWithObjects:(id[]){ nextMockedEvent } count:1 type:Event_class_()], mockedResultValues);
}

MockedResponseObject *new_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEvent_withNSStringArray_, nextMockedEvent, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEvent_withNSStringArray_, nextMockedEvent, mockedResultValues)
}

void MockedResponseObject_initWithEventArray_(MockedResponseObject *self, IOSObjectArray *nextMockedEvents) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, nextMockedEvents, [IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:NSString_class_()]);
}

MockedResponseObject *new_MockedResponseObject_initWithEventArray_(IOSObjectArray *nextMockedEvents) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEventArray_, nextMockedEvents)
}

MockedResponseObject *create_MockedResponseObject_initWithEventArray_(IOSObjectArray *nextMockedEvents) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEventArray_, nextMockedEvents)
}

void MockedResponseObject_initWithEventArray_withNSStringArray_(MockedResponseObject *self, IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) {
  NSObject_init(self);
  self->pos_ = -1;
  self->value_ = nil;
  self->selfDestroying_ = false;
  self->mockedResultValues_ = mockedResultValues == nil ? [IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:NSString_class_()] : mockedResultValues;
  self->nextMockedEvents_ = nextMockedEvents;
}

MockedResponseObject *new_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEventArray_withNSStringArray_, nextMockedEvents, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEventArray_withNSStringArray_, nextMockedEvents, mockedResultValues)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockedResponseObject)
