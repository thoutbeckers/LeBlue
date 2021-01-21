
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
  IOSObjectArray *newEvents = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(events))->size_ + ((IOSObjectArray *) nil_chk(nextMockedEvents_))->size_ type:Event_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(nextMockedEvents_, 0, newEvents, 0, nextMockedEvents_->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(events, 0, newEvents, ((IOSObjectArray *) nil_chk(nextMockedEvents_))->size_, events->size_);
  JreStrongAssign(&nextMockedEvents_, newEvents);
}

- (IOSObjectArray *)getNextMockedEvents {
  return nextMockedEvents_;
}

- (void)forArgumentsWithNSString:(NSString *)argument
                         withInt:(jint)pos {
  self->pos_ = pos;
  JreStrongAssign(&self->value_, argument);
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

- (void)dealloc {
  RELEASE_(mockedResultValues_);
  RELEASE_(nextMockedEvents_);
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LEvent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getMockedResultValues);
  methods[1].selector = @selector(addEventsWithEventArray:);
  methods[2].selector = @selector(getNextMockedEvents);
  methods[3].selector = @selector(forArgumentsWithNSString:withInt:);
  methods[4].selector = @selector(isSelfDestroying);
  methods[5].selector = @selector(destroyAfterUse);
  methods[6].selector = @selector(isForArgumentsWithNSStringArray:);
  methods[7].selector = @selector(initWithEvent:);
  methods[8].selector = @selector(initWithNSStringArray:);
  methods[9].selector = @selector(initWithEvent:withNSStringArray:);
  methods[10].selector = @selector(initWithEventArray:);
  methods[11].selector = @selector(initWithEventArray:withNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mockedResultValues_", "[LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "nextMockedEvents_", "[LEvent;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "selfDestroying_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addEvents", "[LEvent;", "forArguments", "LNSString;I", "isForArguments", "[LNSString;", "LEvent;", "LEvent;[LNSString;", "[LEvent;[LNSString;" };
  static const J2ObjcClassInfo _MockedResponseObject = { "MockedResponseObject", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 12, 5, -1, -1, -1, -1, -1 };
  return &_MockedResponseObject;
}

@end

void MockedResponseObject_initWithEvent_(MockedResponseObject *self, Event *nextMockedEvent) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray arrayWithObjects:(id[]){ nextMockedEvent } count:1 type:Event_class_()], nil);
}

MockedResponseObject *new_MockedResponseObject_initWithEvent_(Event *nextMockedEvent) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEvent_, nextMockedEvent)
}

MockedResponseObject *create_MockedResponseObject_initWithEvent_(Event *nextMockedEvent) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEvent_, nextMockedEvent)
}

void MockedResponseObject_initWithNSStringArray_(MockedResponseObject *self, IOSObjectArray *mockedResultValues) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray arrayWithObjects:(id[]){  } count:0 type:Event_class_()], mockedResultValues);
}

MockedResponseObject *new_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithNSStringArray_, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithNSStringArray_(IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithNSStringArray_, mockedResultValues)
}

void MockedResponseObject_initWithEvent_withNSStringArray_(MockedResponseObject *self, Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, [IOSObjectArray arrayWithObjects:(id[]){ nextMockedEvent } count:1 type:Event_class_()], mockedResultValues);
}

MockedResponseObject *new_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEvent_withNSStringArray_, nextMockedEvent, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithEvent_withNSStringArray_(Event *nextMockedEvent, IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEvent_withNSStringArray_, nextMockedEvent, mockedResultValues)
}

void MockedResponseObject_initWithEventArray_(MockedResponseObject *self, IOSObjectArray *nextMockedEvents) {
  MockedResponseObject_initWithEventArray_withNSStringArray_(self, nextMockedEvents, [IOSObjectArray arrayWithObjects:(id[]){  } count:0 type:NSString_class_()]);
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
  JreStrongAssign(&self->value_, nil);
  self->selfDestroying_ = false;
  JreStrongAssign(&self->mockedResultValues_, mockedResultValues == nil ? [IOSObjectArray arrayWithObjects:(id[]){  } count:0 type:NSString_class_()] : mockedResultValues);
  JreStrongAssign(&self->nextMockedEvents_, nextMockedEvents);
}

MockedResponseObject *new_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) {
  J2OBJC_NEW_IMPL(MockedResponseObject, initWithEventArray_withNSStringArray_, nextMockedEvents, mockedResultValues)
}

MockedResponseObject *create_MockedResponseObject_initWithEventArray_withNSStringArray_(IOSObjectArray *nextMockedEvents, IOSObjectArray *mockedResultValues) {
  J2OBJC_CREATE_IMPL(MockedResponseObject, initWithEventArray_withNSStringArray_, nextMockedEvents, mockedResultValues)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockedResponseObject)

J2OBJC_NAME_MAPPING(MockedResponseObject, "houtbecke.rs.le.session", "")
