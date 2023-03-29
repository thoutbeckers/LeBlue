
#include "BaseIntercepting.h"
#include "Event.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"

@implementation Event

- (instancetype)initWithEventType:(id<EventType>)type
             withBaseIntercepting:(BaseIntercepting *)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withBaseIntercepting_withNSStringArray_(self, type, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
             withBaseIntercepting:(BaseIntercepting *)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(self, type, delay, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)source
                      withBoolean:(jboolean)value {
  Event_initWithEventType_withInt_withBoolean_(self, type, source, value);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
                          withInt:(jint)source
                      withBoolean:(jboolean)value {
  Event_initWithEventType_withInt_withInt_withBoolean_(self, type, delay, source, value);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withNSStringArray_(self, type, source, values);
  return self;
}

- (instancetype)initWithEventType:(id<EventType>)type
                          withInt:(jint)delay
                          withInt:(jint)source
                withNSStringArray:(IOSObjectArray *)values {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, source, values);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@$I$$$I$JC", @"Event{type=", type_, @", source=", source_, @", values=", JavaUtilArrays_toStringWithNSObjectArray_(values_), @", delay=", delay_, @", timeStamp=", timeStamp_, '}');
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self java_getClass] != [o java_getClass]) return false;
  Event *event = (Event *) cast_chk(o, [Event class]);
  if (source_ != event->source_) return false;
  if (type_ != event->type_) return false;
  return JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_(values_, event->values_);
}

- (NSUInteger)hash {
  jint result = ((jint) [((id<EventType>) nil_chk(type_)) hash]);
  result = 31 * result + source_;
  result = 31 * result + JavaUtilArrays_hashCodeWithNSObjectArray_(values_);
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x81, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithEventType:withBaseIntercepting:withNSStringArray:);
  methods[1].selector = @selector(initWithEventType:withInt:withBaseIntercepting:withNSStringArray:);
  methods[2].selector = @selector(initWithEventType:withInt:withBoolean:);
  methods[3].selector = @selector(initWithEventType:withInt:withInt:withBoolean:);
  methods[4].selector = @selector(initWithEventType:withInt:withNSStringArray:);
  methods[5].selector = @selector(initWithEventType:withInt:withInt:withNSStringArray:);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "type_", "LEventType;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "source_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "delay_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "timeStamp_", "J", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "values_", "[LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LEventType;LBaseIntercepting;[LNSString;", "LEventType;ILBaseIntercepting;[LNSString;", "LEventType;IZ", "LEventType;IIZ", "LEventType;I[LNSString;", "LEventType;II[LNSString;", "toString", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _Event = { "Event", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 9, 5, -1, -1, -1, -1, -1 };
  return &_Event;
}

@end

void Event_initWithEventType_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, 0, ((BaseIntercepting *) nil_chk(source))->id__, values);
}

Event *new_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withBaseIntercepting_withNSStringArray_, type, source, values)
}

Event *create_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(id<EventType> type, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withBaseIntercepting_withNSStringArray_, type, source, values)
}

void Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(Event *self, id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, ((BaseIntercepting *) nil_chk(source))->id__, values);
}

Event *new_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withBaseIntercepting_withNSStringArray_, type, delay, source, values)
}

Event *create_Event_initWithEventType_withInt_withBaseIntercepting_withNSStringArray_(id<EventType> type, jint delay, BaseIntercepting *source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withBaseIntercepting_withNSStringArray_, type, delay, source, values)
}

void Event_initWithEventType_withInt_withBoolean_(Event *self, id<EventType> type, jint source, jboolean value) {
  Event_initWithEventType_withInt_withInt_withBoolean_(self, type, 0, source, value);
}

Event *new_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withBoolean_, type, source, value)
}

Event *create_Event_initWithEventType_withInt_withBoolean_(id<EventType> type, jint source, jboolean value) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withBoolean_, type, source, value)
}

void Event_initWithEventType_withInt_withInt_withBoolean_(Event *self, id<EventType> type, jint delay, jint source, jboolean value) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, delay, source, [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangBoolean_toStringWithBoolean_(value) } count:1 type:NSString_class_()]);
}

Event *new_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withInt_withBoolean_, type, delay, source, value)
}

Event *create_Event_initWithEventType_withInt_withInt_withBoolean_(id<EventType> type, jint delay, jint source, jboolean value) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withInt_withBoolean_, type, delay, source, value)
}

void Event_initWithEventType_withInt_withNSStringArray_(Event *self, id<EventType> type, jint source, IOSObjectArray *values) {
  Event_initWithEventType_withInt_withInt_withNSStringArray_(self, type, 0, source, values);
}

Event *new_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withNSStringArray_, type, source, values)
}

Event *create_Event_initWithEventType_withInt_withNSStringArray_(id<EventType> type, jint source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withNSStringArray_, type, source, values)
}

void Event_initWithEventType_withInt_withInt_withNSStringArray_(Event *self, id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  NSObject_init(self);
  self->type_ = type;
  self->source_ = source;
  self->values_ = values;
  self->delay_ = delay;
  self->timeStamp_ = JavaLangSystem_currentTimeMillis();
}

Event *new_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  J2OBJC_NEW_IMPL(Event, initWithEventType_withInt_withInt_withNSStringArray_, type, delay, source, values)
}

Event *create_Event_initWithEventType_withInt_withInt_withNSStringArray_(id<EventType> type, jint delay, jint source, IOSObjectArray *values) {
  J2OBJC_CREATE_IMPL(Event, initWithEventType_withInt_withInt_withNSStringArray_, type, delay, source, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Event)

J2OBJC_NAME_MAPPING(Event, "houtbecke.rs.le.session", "")
