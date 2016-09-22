
#include "Event.h"
#include "EventSinkFiller.h"
#include "EventSinkTest.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "ListEventSinkSource.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@implementation EventSinkTest

- (void)setUp {
  JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (void)testLimit {
  ListEventSinkSource *source = create_ListEventSinkSource_initWithInt_(2);
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_(source);
  [filler waitForPointWithNSString:@"ready"];
  OrgJunitAssert_assertEqualsWithLong_withLong_(1, ((IOSObjectArray *) nil_chk([source getEvents]))->size_);
  [filler pointReachedWithNSString:@"secondDevice"];
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, ((IOSObjectArray *) nil_chk([source getEvents]))->size_);
  OrgJunitAssert_assertEqualsWithId_withId_(((Event *) nil_chk(IOSObjectArray_Get(nil_chk([source getEvents]), 0)))->type_, JreLoadEnum(LeEventType, mockWaitForPoint));
  OrgJunitAssert_assertEqualsWithId_withId_(((Event *) nil_chk(IOSObjectArray_Get(nil_chk([source getEvents]), 1)))->type_, JreLoadEnum(LeEventType, mockPointReached));
  [filler waitForPointWithNSString:@"done"];
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, ((IOSObjectArray *) nil_chk([source getEvents]))->size_);
  OrgJunitAssert_assertEqualsWithId_withId_(((Event *) nil_chk(IOSObjectArray_Get(nil_chk([source getEvents]), 0)))->type_, JreLoadEnum(LeEventType, mockPointReached));
  OrgJunitAssert_assertEqualsWithId_withId_(((Event *) nil_chk(IOSObjectArray_Get(nil_chk([source getEvents]), 1)))->type_, JreLoadEnum(LeEventType, mockWaitForPoint));
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EventSinkTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_setUp {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_testLimit {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setUp", NULL, "V", 0x1, "Ljava.lang.Exception;", NULL },
    { "testLimit", NULL, "V", 0x1, "Ljava.lang.InterruptedException;", NULL },
    { "init", "EventSinkTest", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _EventSinkTest = { 2, "EventSinkTest", "houtbecke.rs.le", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_EventSinkTest;
}

@end

void EventSinkTest_init(EventSinkTest *self) {
  NSObject_init(self);
}

EventSinkTest *new_EventSinkTest_init() {
  J2OBJC_NEW_IMPL(EventSinkTest, init)
}

EventSinkTest *create_EventSinkTest_init() {
  J2OBJC_CREATE_IMPL(EventSinkTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EventSinkTest)
