
#include "Event.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "ListEventSinkSource.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "java/util/concurrent/locks/Lock.h"
#include "java/util/concurrent/locks/ReadWriteLock.h"
#include "java/util/concurrent/locks/ReentrantReadWriteLock.h"

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
  [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) writeLock])) lock];
  @try {
    if (limit_ == -1) {
      [((JavaUtilLinkedList *) nil_chk(events_)) addLastWithId:event];
    }
    else {
      if (limit_ <= [((JavaUtilLinkedList *) nil_chk(events_)) size]) (void) [((JavaUtilLinkedList *) nil_chk(events_)) removeFirst];
      [((JavaUtilLinkedList *) nil_chk(events_)) addLastWithId:event];
    }
  }
  @finally {
    [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) writeLock])) unlock];
  }
}

- (void)correctDelay {
  ListEventSinkSource_correctDelay(self);
}

- (IOSObjectArray *)getEvents {
  ListEventSinkSource_correctDelay(self);
  [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) readLock])) lock];
  @try {
    return [((JavaUtilLinkedList *) nil_chk(events_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[events_ size] type:Event_class_()]];
  }
  @finally {
    [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) readLock])) unlock];
  }
}

- (Event *)nextEvent {
  [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) readLock])) lock];
  @try {
    if (iterator_ == nil) iterator_ = [((JavaUtilLinkedList *) nil_chk(events_)) iterator];
    return [((id<JavaUtilIterator>) nil_chk(iterator_)) next];
  }
  @finally {
    [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(lock_)) readLock])) unlock];
  }
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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LEvent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEvent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEvent;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(addEventWithEvent:);
  methods[3].selector = @selector(correctDelay);
  methods[4].selector = @selector(getEvents);
  methods[5].selector = @selector(nextEvent);
  methods[6].selector = @selector(hasMoreEvent);
  methods[7].selector = @selector(reset);
  methods[8].selector = @selector(lastEvent);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "events_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x0, -1, -1, 3, -1 },
    { "lock_", "LJavaUtilConcurrentLocksReadWriteLock;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "iterator_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x0, -1, -1, 4, -1 },
    { "limit_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "addEvent", "LEvent;", "Ljava/util/LinkedList<Lhoutbecke/rs/le/session/Event;>;", "Ljava/util/Iterator<Lhoutbecke/rs/le/session/Event;>;" };
  static const J2ObjcClassInfo _ListEventSinkSource = { "ListEventSinkSource", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 9, 4, -1, -1, -1, -1, -1 };
  return &_ListEventSinkSource;
}

@end

void ListEventSinkSource_init(ListEventSinkSource *self) {
  NSObject_init(self);
  self->events_ = new_JavaUtilLinkedList_init();
  self->lock_ = new_JavaUtilConcurrentLocksReentrantReadWriteLock_init();
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
  self->lock_ = new_JavaUtilConcurrentLocksReentrantReadWriteLock_init();
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
  [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(self->lock_)) writeLock])) lock];
  @try {
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
  @finally {
    [((id<JavaUtilConcurrentLocksLock>) nil_chk([((id<JavaUtilConcurrentLocksReadWriteLock>) nil_chk(self->lock_)) writeLock])) unlock];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ListEventSinkSource)

J2OBJC_NAME_MAPPING(ListEventSinkSource, "houtbecke.rs.le.session", "")
