
#include "Event.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "ListEventSinkSource.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"

@interface ListEventSinkSource ()

- (void)correctDelay;

@end

__attribute__((unused)) static void ListEventSinkSource_correctDelay(ListEventSinkSource *self);

@implementation ListEventSinkSource

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ListEventSinkSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)limit {
  ListEventSinkSource_initWithInt_(self, limit);
  return self;
}

- (void)addEventWithEvent:(Event *)event {
  if (limit_ == -1) {
    [((JavaUtilLinkedList *) nil_chk(events_)) addLastWithId:event];
  }
  else {
    if (limit_ <= [((JavaUtilLinkedList *) nil_chk(events_)) size]) (void) [((JavaUtilLinkedList *) nil_chk(events_)) removeFirst];
    [((JavaUtilLinkedList *) nil_chk(events_)) addLastWithId:event];
  }
}

- (void)correctDelay {
  ListEventSinkSource_correctDelay(self);
}

- (IOSObjectArray *)getEvents {
  ListEventSinkSource_correctDelay(self);
  return [((JavaUtilLinkedList *) nil_chk(events_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[events_ size] type:Event_class_()]];
}

- (Event *)nextEvent {
  if (iterator_ == nil) iterator_ = [((JavaUtilLinkedList *) nil_chk(events_)) iterator];
  return [((id<JavaUtilIterator>) nil_chk(iterator_)) next];
}

- (jboolean)hasMoreEvent {
  return (iterator_ == nil && [((JavaUtilLinkedList *) nil_chk(events_)) size] > 0) || [((id<JavaUtilIterator>) nil_chk(iterator_)) hasNext];
}

- (void)reset {
  iterator_ = nil;
}

- (Event *)lastEvent {
  return [((JavaUtilLinkedList *) nil_chk(events_)) getLast];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ListEventSinkSource", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "ListEventSinkSource", NULL, 0x1, NULL, NULL },
    { "addEventWithEvent:", "addEvent", "V", 0x1, NULL, NULL },
    { "correctDelay", NULL, "V", 0x2, NULL, NULL },
    { "getEvents", NULL, "[Lhoutbecke.rs.le.session.Event;", 0x1, NULL, NULL },
    { "nextEvent", NULL, "Lhoutbecke.rs.le.session.Event;", 0x1, NULL, NULL },
    { "hasMoreEvent", NULL, "Z", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "lastEvent", NULL, "Lhoutbecke.rs.le.session.Event;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "events_", NULL, 0x0, "Ljava.util.LinkedList;", NULL, "Ljava/util/LinkedList<Lhoutbecke/rs/le/session/Event;>;", .constantValue.asLong = 0 },
    { "iterator_", NULL, 0x0, "Ljava.util.Iterator;", NULL, "Ljava/util/Iterator<Lhoutbecke/rs/le/session/Event;>;", .constantValue.asLong = 0 },
    { "limit_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ListEventSinkSource = { 2, "ListEventSinkSource", "houtbecke.rs.le.session", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ListEventSinkSource;
}

@end

void ListEventSinkSource_init(ListEventSinkSource *self) {
  NSObject_init(self);
  self->events_ = new_JavaUtilLinkedList_init();
  self->iterator_ = nil;
  self->limit_ = -1;
}

ListEventSinkSource *new_ListEventSinkSource_init() {
  J2OBJC_NEW_IMPL(ListEventSinkSource, init)
}

ListEventSinkSource *create_ListEventSinkSource_init() {
  J2OBJC_CREATE_IMPL(ListEventSinkSource, init)
}

void ListEventSinkSource_initWithInt_(ListEventSinkSource *self, jint limit) {
  NSObject_init(self);
  self->events_ = new_JavaUtilLinkedList_init();
  self->iterator_ = nil;
  self->limit_ = -1;
  if (limit > 1) self->limit_ = limit;
}

ListEventSinkSource *new_ListEventSinkSource_initWithInt_(jint limit) {
  J2OBJC_NEW_IMPL(ListEventSinkSource, initWithInt_, limit)
}

ListEventSinkSource *create_ListEventSinkSource_initWithInt_(jint limit) {
  J2OBJC_CREATE_IMPL(ListEventSinkSource, initWithInt_, limit)
}

void ListEventSinkSource_correctDelay(ListEventSinkSource *self) {
  jlong lastTimeStamp = 0;
  for (Event * __strong event in nil_chk(self->events_)) {
    if (lastTimeStamp == 0) {
      ((Event *) nil_chk(event))->delay_ = 0;
    }
    else {
      ((Event *) nil_chk(event))->delay_ = (jint) (event->timeStamp_ - lastTimeStamp);
    }
    lastTimeStamp = event->timeStamp_;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ListEventSinkSource)
