
#include "Event.h"
#include "EventSinkFiller.h"
#include "EventSinkTest.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "ListEventSinkSource.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

__attribute__((unused)) static IOSObjectArray *EventSinkTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *EventSinkTest__Annotations$1();

@implementation EventSinkTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EventSinkTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

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

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, 3, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(testLimit);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&EventSinkTest__Annotations$0, "LJavaLangInterruptedException;", (void *)&EventSinkTest__Annotations$1 };
  static const J2ObjcClassInfo _EventSinkTest = { "EventSinkTest", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
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

IOSObjectArray *EventSinkTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *EventSinkTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EventSinkTest)
