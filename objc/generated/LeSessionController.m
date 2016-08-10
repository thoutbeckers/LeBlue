
#include "Event.h"
#include "EventSource.h"
#include "EventType.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeEventType.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeGattCharacteristicMock.h"
#include "LeGattServiceMock.h"
#include "LeGattStatus.h"
#include "LeRemoteDeviceListener.h"
#include "LeRemoteDeviceMock.h"
#include "LeScanRecord.h"
#include "LeSessionController.h"
#include "LeUtil.h"
#include "MockedResponse.h"
#include "Mocker.h"
#include "Session.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/UUID.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/locks/Condition.h"
#include "java/util/concurrent/locks/ReentrantLock.h"

@interface LeSessionController () {
 @public
  NSString *point_;
}

@end

J2OBJC_FIELD_SETTER(LeSessionController, point_, NSString *)

@interface LeSessionController_RunnableWrapper : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<JavaLangRunnable> runnable_;
  jboolean started_;
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                       withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_RunnableWrapper)

J2OBJC_FIELD_SETTER(LeSessionController_RunnableWrapper, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_RunnableWrapper, runnable_, id<JavaLangRunnable>)

__attribute__((unused)) static void LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController_RunnableWrapper *self, LeSessionController *outer$, id<JavaLangRunnable> runnable);

__attribute__((unused)) static LeSessionController_RunnableWrapper *new_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_RunnableWrapper *create_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_RunnableWrapper)

__attribute__((unused)) static void LeSessionController_SourceType_initWithNSString_withInt_(LeSessionController_SourceType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static LeSessionController_SourceType *new_LeSessionController_SourceType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface LeSessionController_$1 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$1)

J2OBJC_FIELD_SETTER(LeSessionController_$1, this$0_, LeSessionController *)

__attribute__((unused)) static void LeSessionController_$1_initWithLeSessionController_(LeSessionController_$1 *self, LeSessionController *outer$);

__attribute__((unused)) static LeSessionController_$1 *new_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$1 *create_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$1)

@interface LeSessionController_$2 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$2)

J2OBJC_FIELD_SETTER(LeSessionController_$2, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$2, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController_$2 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$2 *new_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$2 *create_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$2)

@interface LeSessionController_$3 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$3)

J2OBJC_FIELD_SETTER(LeSessionController_$3, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$3, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController_$3 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$3 *new_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$3 *create_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$3)

@interface LeSessionController_$4 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$4)

J2OBJC_FIELD_SETTER(LeSessionController_$4, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$4, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$4, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$4 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$4 *new_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$4 *create_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$4)

@interface LeSessionController_$5 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$5)

J2OBJC_FIELD_SETTER(LeSessionController_$5, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$5, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController_$5 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$5 *new_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$5 *create_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$5)

@interface LeSessionController_$6 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$6)

J2OBJC_FIELD_SETTER(LeSessionController_$6, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$6, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$6, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$6 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$6 *new_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$6 *create_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$6)

@interface LeSessionController_$7 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$7)

J2OBJC_FIELD_SETTER(LeSessionController_$7, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$7, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController_$7 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$7 *new_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$7 *create_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$7)

@interface LeSessionController_$8 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  id<LeRemoteDeviceListener> val$listener_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$8)

J2OBJC_FIELD_SETTER(LeSessionController_$8, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$8, val$listener_, id<LeRemoteDeviceListener>)
J2OBJC_FIELD_SETTER(LeSessionController_$8, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$8 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

__attribute__((unused)) static LeSessionController_$8 *new_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$8 *create_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$8)

@interface LeSessionController_$9 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$9)

J2OBJC_FIELD_SETTER(LeSessionController_$9, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$9, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController_$9 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$9 *new_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$9 *create_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$9)

@interface LeSessionController_$10 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  id<LeRemoteDeviceListener> val$listener_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$10)

J2OBJC_FIELD_SETTER(LeSessionController_$10, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$10, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$10, val$listener_, id<LeRemoteDeviceListener>)

__attribute__((unused)) static void LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController_$10 *self, LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1);

__attribute__((unused)) static LeSessionController_$10 *new_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$10 *create_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$10)

@interface LeSessionController_$11 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$11)

J2OBJC_FIELD_SETTER(LeSessionController_$11, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$11, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController_$11 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$11 *new_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$11 *create_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$11)

@interface LeSessionController_$12 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$12)

J2OBJC_FIELD_SETTER(LeSessionController_$12, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$12, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController_$12 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$12 *new_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$12 *create_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$12)

@interface LeSessionController_$13 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  JavaUtilUUID *val$uuid_;
  id<LeGattCharacteristic> val$characteristic_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$13)

J2OBJC_FIELD_SETTER(LeSessionController_$13, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$uuid_, JavaUtilUUID *)
J2OBJC_FIELD_SETTER(LeSessionController_$13, val$characteristic_, id<LeGattCharacteristic>)

__attribute__((unused)) static void LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$13 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

__attribute__((unused)) static LeSessionController_$13 *new_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$13 *create_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$13)

@interface LeSessionController_$14 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$14)

J2OBJC_FIELD_SETTER(LeSessionController_$14, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$14, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController_$14 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$14 *new_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$14 *create_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$14)

@interface LeSessionController_$15 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$15)

J2OBJC_FIELD_SETTER(LeSessionController_$15, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$15, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController_$15 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$15 *new_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$15 *create_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$15)

@interface LeSessionController_$16 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
  JavaUtilUUID *val$uuid2_;
  id<LeGattCharacteristic> val$characteristic2_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$16)

J2OBJC_FIELD_SETTER(LeSessionController_$16, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$event_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$uuid2_, JavaUtilUUID *)
J2OBJC_FIELD_SETTER(LeSessionController_$16, val$characteristic2_, id<LeGattCharacteristic>)

__attribute__((unused)) static void LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$16 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

__attribute__((unused)) static LeSessionController_$16 *new_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$16 *create_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$16)

@interface LeSessionController_$17 : NSObject < JavaLangRunnable > {
 @public
  LeSessionController *this$0_;
  Event *val$event_;
}

- (void)run;

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController_$17)

J2OBJC_FIELD_SETTER(LeSessionController_$17, this$0_, LeSessionController *)
J2OBJC_FIELD_SETTER(LeSessionController_$17, val$event_, Event *)

__attribute__((unused)) static void LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController_$17 *self, LeSessionController *outer$, Event *capture$0);

__attribute__((unused)) static LeSessionController_$17 *new_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeSessionController_$17 *create_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_$17)

NSString *LeSessionController_TAG = @"LeBlueController";

@implementation LeSessionController

- (jboolean)shouldLog {
  return ![@"true" isEqual:JavaLangSystem_getPropertyWithNSString_(@"doNotLog")];
}

- (instancetype)initWithSession:(id<Session>)session {
  LeSessionController_initWithSession_(self, session);
  return self;
}

- (instancetype)initWithSession:(id<Session>)session
                    withBoolean:(jboolean)strict {
  LeSessionController_initWithSession_withBoolean_(self, session, strict);
  return self;
}

- (NSString *)eventValue {
  return [self eventValueWithInt:0];
}

- (NSString *)eventValueWithInt:(jint)seq {
  return IOSObjectArray_Get(nil_chk(values_), seq);
}

- (jint)eventIntValue {
  @try {
    return JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(nil_chk(values_), 0));
  }
  @catch (JavaLangNumberFormatException *e) {
  }
  return 0;
}

- (jboolean)eventBooleanValue {
  return [self eventBooleanValueWithInt:0];
}

- (jboolean)eventBooleanValueWithInt:(jint)seq {
  return JavaLangBoolean_parseBooleanWithNSString_([self eventValueWithInt:seq]);
}

- (void)pointReachedWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    self->point_ = point;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)waitForPointOrEventWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    waitingForEvent_ = true;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    while (![((NSString *) nil_chk(point)) isEqual:self->point_] && sessionIsRunning_ && !stopSession_ && currentEvent_ != nil && currentEvent_->type_ == JreLoadEnum(LeEventType, mockWaitForPoint)) {
      [condition_ await];
    }
    waitingForEvent_ = false;
    [self updateCurrentEventWithEvent:nil];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)updateCurrentEventWithEvent:(Event *)newCurrentEvent {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    currentEvent_ = newCurrentEvent;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)checkPause {
  jlong current = JavaLangSystem_currentTimeMillis();
  while (current < executeNextEventAfter_ && !stopSession_) {
    @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(self->condition_)) awaitWithLong:executeNextEventAfter_ - current withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
    }
    @catch (JavaLangInterruptedException *ignore) {
    }
    current = JavaLangSystem_currentTimeMillis();
  }
}

- (void)waitForPointWithNSString:(NSString *)point {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (![((NSString *) nil_chk(point)) isEqual:self->point_] && sessionIsRunning_ && !stopSession_) {
      @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
      }
      @catch (JavaLangInterruptedException *ignore) {
      }
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)waitTillSessionStarted {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (!waitingForEvent_ && !stopSession_) {
      @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) awaitWithLong:1000 withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
      }
      @catch (JavaLangInterruptedException *e) {
        [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
      }
    }
    return waitingForEvent_;
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)waitForEventWithEvent:(Event *)event {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (currentEvent_ != nil && sessionIsRunning_ && !stopSession_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *e) {
      [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
    }
    [self updateCurrentEventWithEvent:event];
    [self checkPause];
    while (currentEvent_ == event && [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] == 0 && sessionIsRunning_ && !stopSession_) @try {
      waitingForEvent_ = true;
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
      [condition_ await];
    }
    @catch (JavaLangInterruptedException *e) {
      [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
    }
    waitingForEvent_ = false;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startDefaultSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self startSessionWithNSString:nil];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startSessionWithNSString:(NSString *)sessionName {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self stopSession];
    [self waitForFinishedSession];
    stopSession_ = false;
    self->sessionName_ = sessionName;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    [new_JavaLangThread_initWithJavaLangRunnable_(new_LeSessionController_$1_initWithLeSessionController_(self)) start];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)runCurrentEventOnUiThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  LeSessionController_RunnableWrapper *wrapper = nil;
  wrapper = new_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(self, runnable);
  [(new_JavaLangThread_initWithJavaLangRunnable_withNSString_(wrapper, @"wrapper thread")) start];
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (!wrapper->started_) {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)startSessionInThread {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) clear];
    sessionIsRunning_ = true;
    sessionException_ = nil;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
    id<EventSource> source = (sessionName_ == nil) ? [((id<Session>) nil_chk(session_)) getDefaultSource] : [((id<Session>) nil_chk(session_)) getNamedEventSourceWithNSString:sessionName_];
    [source reset];
    Event *event = nil;
    @try {
      while (!stopSession_ && ([source hasMoreEvent] || [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0 || JreLoadVolatileId(&stackedEvent_) != nil)) {
        if ([((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0) {
          event = [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) removeWithInt:0];
        }
        else if (JreLoadVolatileId(&stackedEvent_) != nil) {
          event = JreLoadVolatileId(&stackedEvent_);
          (void) JreVolatileStrongAssign(&stackedEvent_, nil);
        }
        else {
          event = [source nextEvent];
        }
        if (stopSession_) {
          return;
        }
        [self workOnEventWithEvent:event];
      }
    }
    @catch (JavaLangException *e) {
      sessionException_ = e;
      @throw new_JavaLangRuntimeException_initWithNSString_withNSException_(JreStrcat("$@", @"error processing session at event ", event), e);
    }
    @finally {
      sessionIsRunning_ = false;
      stopSession_ = true;
      [self updateCurrentEventWithEvent:nil];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)workOnEventWithEvent:(Event *)event {
  switch ([(LeEventType *) cast_chk(((Event *) nil_chk(event))->type_, [LeEventType class]) ordinal]) {
    case LeEventType_Enum_deviceAddListener:
    case LeEventType_Enum_deviceStartScanning:
    case LeEventType_Enum_deviceStopScanning:
    case LeEventType_Enum_serviceEnableCharacteristicNotification:
    case LeEventType_Enum_deviceRemoveListener:
    case LeEventType_Enum_deviceCheckBleHardwareAvailable:
    case LeEventType_Enum_deviceIsBtEnabled:
    case LeEventType_Enum_remoteDeviceGetAddress:
    case LeEventType_Enum_remoteDeviceGetName:
    case LeEventType_Enum_remoteDeviceAddListener:
    case LeEventType_Enum_remoteDeviceRemoveListener:
    case LeEventType_Enum_remoteDeviceConnect:
    case LeEventType_Enum_remoteDeviceClose:
    case LeEventType_Enum_remoteDeviceDisconnect:
    case LeEventType_Enum_remoteDeviceReadRssi:
    case LeEventType_Enum_remoteDeviceStartServiceDiscovery:
    case LeEventType_Enum_serviceGetUUID:
    case LeEventType_Enum_serviceGetCharacteristic:
    case LeEventType_Enum_characteristicGetValue:
    case LeEventType_Enum_characteristicGetIntValue:
    case LeEventType_Enum_remoteDeviceSetCharacteristicListener:
    case LeEventType_Enum_remoteDeviceSetCharacteristicWriteListener:
    case LeEventType_Enum_characteristicSetValue:
    case LeEventType_Enum_characteristicRead:
    [self waitForEventWithEvent:event];
    break;
    default:
    [self updateCurrentEventWithEvent:event];
    [self checkPause];
    {
      id<LeGattCharacteristic> characteristic;
      JavaUtilUUID *uuid;
      id<LeGattCharacteristic> characteristic2;
      JavaUtilUUID *uuid2;
      switch ([(LeEventType *) cast_chk(event->type_, [LeEventType class]) ordinal]) {
        case LeEventType_Enum_mockRemoteDeviceFound:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$2_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_remoteDeviceFound:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$3_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceConnected:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceConnected:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$5_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceDisconnected:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceDisconnected:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$7_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceClosed:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, listener, event)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceClosed:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$9_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockRemoteDeviceServicesDiscovered:
        {
          IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:event->source_])) getRemoteDeviceListenersWithLeMockController:self withInt:event->source_];
          id<LeRemoteDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          id<LeRemoteDeviceListener> const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            id<LeRemoteDeviceListener> leRemoteListener = *b__++;
            id<LeRemoteDeviceListener> listener = leRemoteListener;
            [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(self, event, listener)];
          }
        }
        break;
        case LeEventType_Enum_remoteDeviceServicesDiscovered:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$11_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_remoteDeviceRssiRead:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$12_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockCharacteristicChangedWithMockedValue:
        (void) [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) putWithId:JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)) withId:LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 1))];
        case LeEventType_Enum_mockCharacteristicChanged:
        characteristic = [self createOrReturnCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
        uuid = JavaUtilUUID_fromStringWithNSString_([((id<Session>) nil_chk(session_)) getSourceIdentificationWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)))) intValue]]);
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, event, uuid, characteristic)];
        break;
        case LeEventType_Enum_characteristicChanged:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$14_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_characteristicWritten:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$15_initWithLeSessionController_withEvent_(self, event)];
        break;
        case LeEventType_Enum_mockCharacteristicNotificationChanged:
        characteristic2 = [self createOrReturnCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
        uuid2 = JavaUtilUUID_fromStringWithNSString_([((id<Session>) nil_chk(session_)) getSourceIdentificationWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0)))) intValue]]);
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, event, uuid2, characteristic2)];
        break;
        case LeEventType_Enum_characteristicNotificationChanged:
        [self runCurrentEventOnUiThreadWithJavaLangRunnable:new_LeSessionController_$17_initWithLeSessionController_withEvent_(self, event)];
        break;
        default:
        switch ([(LeEventType *) cast_chk(event->type_, [LeEventType class]) ordinal]) {
          case LeEventType_Enum_mockCharacteristicMockedValue:
          (void) [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) putWithId:JavaLangInteger_valueOfWithInt_(event->source_) withId:LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(event->values_), 0))];
          break;
          case LeEventType_Enum_mockCharacteristicClearMockedValue:
          (void) [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) removeWithId:JavaLangInteger_valueOfWithInt_(event->source_)];
          break;
          case LeEventType_Enum_mockWaitForPoint:
          [self waitForPointOrEventWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
          break;
          case LeEventType_Enum_mockPointReached:
          [self pointReachedWithNSString:IOSObjectArray_Get(nil_chk(event->values_), 0)];
          break;
          default:
          @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$@", @"Unimplemented event type: ", event->type_));
        }
        [self updateCurrentEventWithEvent:nil];
      }
    }
  }
  executeNextEventAfter_ = JavaLangSystem_currentTimeMillis() + event->delay_;
}

- (void)waitForFinishedSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    while (sessionIsRunning_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)stopSession {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    stopSession_ = true;
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) signalAll];
  }
  @finally {
    [lock_ unlock];
  }
}

- (JavaLangException *)getSessionException {
  return sessionException_;
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                     withLeDeviceMock:(LeDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, device) withInt:[self getDeviceKeyWithLeDeviceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
               withLeRemoteDeviceMock:(LeRemoteDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, remoteDevice) withInt:[self getRemoteDeviceKeyWithLeRemoteDeviceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                withLeGattServiceMock:(LeGattServiceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, gattService) withInt:[self getGattServiceKeyWithLeGattServiceMock:source] withNSStringArray:arguments];
}

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
         withLeGattCharacteristicMock:(LeGattCharacteristicMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments {
  return [self checkEventWithSourceIdWithLeEventType:event withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, gattCharacteristic) withInt:[self getCharacteristicKeyWithLeGattCharacteristicMock:source] withNSStringArray:arguments];
}

- (id<Session>)getSession {
  return session_;
}

- (jboolean)checkEventWithSourceIdWithLeEventType:(LeEventType *)eventType
               withLeSessionController_SourceType:(LeSessionController_SourceType *)sourceType
                                          withInt:(jint)source
                                withNSStringArray:(IOSObjectArray *)arguments {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if (eventType == JreLoadEnum(LeEventType, characteristicGetValue)) {
      IOSByteArray *value = [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
      if (value != nil) {
        values_ = [IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()];
        return true;
      }
    }
    if (eventType == JreLoadEnum(LeEventType, characteristicGetIntValue)) {
      IOSByteArray *value = [((id<JavaUtilMap>) nil_chk(characteristicsValues_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
      if (value != nil) {
        values_ = [IOSObjectArray newArrayWithObjects:(id[]){ JreStrcat("B", IOSByteArray_Get(value, 0)) } count:1 type:NSString_class_()];
        return true;
      }
    }
    id<Mocker> mocker;
    switch ([sourceType ordinal]) {
      case LeSessionController_SourceType_Enum_device:
      mocker = [((id<Session>) nil_chk(session_)) getDeviceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_remoteDevice:
      mocker = [((id<Session>) nil_chk(session_)) getRemoteDeviceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_gattService:
      mocker = [((id<Session>) nil_chk(session_)) getGattServiceMockerWithInt:source];
      break;
      case LeSessionController_SourceType_Enum_gattCharacteristic:
      mocker = [((id<Session>) nil_chk(session_)) getGattCharacteristicMockerWithInt:source];
      break;
      default:
      mocker = nil;
      break;
    }
    if (mocker != nil) {
      id<MockedResponse> mockedResponse = [mocker mockWithLeMockController:self withLeEventType:eventType withInt:source withNSStringArray:arguments];
      if (mockedResponse != nil) {
        [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) addAllWithJavaUtilCollection:JavaUtilArrays_asListWithNSObjectArray_([mockedResponse getNextMockedEvents])];
        values_ = [mockedResponse getMockedResultValues];
        if ([((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0) {
          while (sessionIsRunning_ && currentEvent_ != nil && JreLoadVolatileId(&stackedEvent_) != nil) @try {
            [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
          }
          @catch (JavaLangInterruptedException *e) {
            [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
          }
          if (currentEvent_ != nil) (void) JreVolatileStrongAssign(&stackedEvent_, currentEvent_);
          [self updateCurrentEventWithEvent:nil];
          while (sessionIsRunning_ && (currentEvent_ == nil || [((id<JavaUtilList>) nil_chk(JreLoadVolatileId(&mockedEvents_))) size] > 0)) @try {
            [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
          }
          @catch (JavaLangInterruptedException *e) {
            [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
          }
        }
        return true;
      }
    }
    while (!waitingForEvent_ && sessionIsRunning_) @try {
      [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
    if (currentEvent_ != nil && eventType == currentEvent_->type_) {
      self->source_ = currentEvent_->source_;
      self->values_ = currentEvent_->values_;
      [self updateCurrentEventWithEvent:nil];
      while (currentEvent_ == nil && sessionIsRunning_) @try {
        [((id<JavaUtilConcurrentLocksCondition>) nil_chk(condition_)) await];
      }
      @catch (JavaLangInterruptedException *ignored) {
      }
      if (self->source_ == source) {
        return true;
      }
      else {
        NSString *message = JreStrcat("$@$I$I", @"Mismatch source: For event ", eventType, @" source not correct: ", source, @" expected ", self->source_);
        if (strict_) @throw new_JavaLangRuntimeException_initWithNSString_(message);
        return false;
      }
    }
    NSString *message = JreStrcat("$@$@CI$Z$$$@", @"Mismatch, expected ", (currentEvent_ != nil ? ((id) currentEvent_->type_) : @"nothing"), @" got :", eventType, '(', source, @") is happening (session running? :", sessionIsRunning_, @") with values", JavaUtilArrays_toStringWithNSObjectArray_(self->values_), @" full event: ", currentEvent_);
    if (strict_) @throw new_JavaLangRuntimeException_initWithNSString_(message);
    if ([self shouldLog]) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$$", LeSessionController_TAG, @": ", message)];
    return false;
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                      withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceStopScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceStopScanning) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceConnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnect) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceCloseWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClose) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)remoteDeviceDisconnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnect) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (id<LeCharacteristicListener>)getCharacteristicListenerWithNSString:(NSString *)key {
  return [self getCharacteristicListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (id<LeCharacteristicListener>)getCharacteristicListenerWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(characteristicListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (void)remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                              withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
  (void) [((id<JavaUtilMap>) nil_chk(characteristicListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
}

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithNSString:(NSString *)key {
  return [self getCharacteristicWriteListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(characteristicWriteListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (void)remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                   withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ JavaUtilArrays_toStringWithNSObjectArray_(uuids) } count:1 type:NSString_class_()]];
  (void) [((id<JavaUtilMap>) nil_chk(characteristicWriteListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
}

- (jboolean)serviceEnableCharacteristicNotificationWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                        withJavaUtilUUID:(JavaUtilUUID *)characteristic {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(characteristic)) description] } count:1 type:NSString_class_()]];
    return true;
  }
  @finally {
    [lock_ unlock];
  }
}

- (LeDeviceMock *)getDeviceWithNSString:(NSString *)key {
  return [self getDeviceWithInt:JavaLangInteger_parseIntWithNSString_(key)];
}

- (LeDeviceMock *)getDeviceWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(devices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getDeviceKeyWithLeDeviceMock:(LeDeviceMock *)device {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(deviceKeys_)) getWithId:device])) intValue];
}

- (void)addDeviceWithInt:(jint)key
        withLeDeviceMock:(LeDeviceMock *)mock {
  (void) [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:mock];
  (void) [((id<JavaUtilMap>) nil_chk(deviceKeys_)) putWithId:mock withId:JavaLangInteger_valueOfWithInt_(key)];
}

- (LeRemoteDeviceMock *)createRemoteDeviceWithInt:(jint)key
                                 withLeDeviceMock:(LeDeviceMock *)deviceMock {
  (void) [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:new_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(key, self, deviceMock)];
  (void) [((id<JavaUtilMap>) nil_chk(remoteDeviceKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (LeRemoteDeviceMock *)createOrReturnRemoteDeviceWithInt:(jint)key
                                         withLeDeviceMock:(LeDeviceMock *)deviceMock {
  LeRemoteDeviceMock *mock = [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  return mock != nil ? mock : [self createRemoteDeviceWithInt:key withLeDeviceMock:deviceMock];
}

- (jint)getRemoteDeviceKeyWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(remoteDeviceKeys_)) getWithId:leRemoteDeviceMock])) intValue];
}

- (LeRemoteDeviceMock *)getRemoteDeviceWithNSString:(NSString *)key {
  return [self getRemoteDeviceWithInt:JavaLangInteger_parseIntWithNSString_(key)];
}

- (LeRemoteDeviceMock *)getRemoteDeviceWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (LeGattServiceMock *)createGattServiceWithNSString:(NSString *)key {
  return [self createGattServiceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattServiceMock *)createGattServiceWithInt:(jint)key {
  (void) [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:new_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger_valueOfWithInt_(key), self)];
  (void) [((id<JavaUtilMap>) nil_chk(gattServicesKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getGattServiceKeyWithLeGattServiceMock:(LeGattServiceMock *)LeGattServiceMock {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(gattServicesKeys_)) getWithId:LeGattServiceMock])) intValue];
}

- (id<LeDeviceListener>)getDeviceListenerWithNSString:(NSString *)key {
  return [self getDeviceListenerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (void)addDeviceListenerWithInt:(jint)key
            withLeDeviceListener:(id<LeDeviceListener>)listener {
  (void) [((id<JavaUtilMap>) nil_chk(deviceListeners_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:listener];
  (void) [((id<JavaUtilMap>) nil_chk(deviceListenerKeys_)) putWithId:listener withId:JavaLangInteger_valueOfWithInt_(key)];
}

- (id<LeDeviceListener>)getDeviceListenerWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(deviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getDeviceListenerKeyWithLeDeviceListener:(id<LeDeviceListener>)deviceListener {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(deviceListenerKeys_)) getWithId:deviceListener])) intValue];
}

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithNSString:(NSString *)key {
  return [self createOrReturnCharacteristicWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithInt:(jint)key {
  LeGattCharacteristicMock *mock = [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
  if (mock != nil) return mock;
  (void) [((id<JavaUtilMap>) nil_chk(characteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(key) withId:new_LeGattCharacteristicMock_initWithLeMockController_(self)];
  (void) [((id<JavaUtilMap>) nil_chk(characteristicsKeys_)) putWithId:[((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)] withId:JavaLangInteger_valueOfWithInt_(key)];
  return [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (jint)getCharacteristicKeyWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)characteristic {
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(characteristicsKeys_)) getWithId:characteristic])) intValue];
}

- (LeGattCharacteristicMock *)getCharacteristicWithNSString:(NSString *)key {
  return [self getCharacteristicWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(key))) intValue]];
}

- (LeGattCharacteristicMock *)getCharacteristicWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(characteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (id<LeGattCharacteristic>)serviceGetCharacteristicWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                         withJavaUtilUUID:(JavaUtilUUID *)uuid {
  if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description] } count:1 type:NSString_class_()]]) return [self createOrReturnCharacteristicWithInt:[self eventIntValue]];
  else return nil;
}

- (void)deviceAddListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                     withLeDeviceListener:(id<LeDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithSourceIdWithLeEventType:JreLoadEnum(LeEventType, deviceAddListener) withLeSessionController_SourceType:JreLoadEnum(LeSessionController_SourceType, device) withInt:[self getDeviceKeyWithLeDeviceMock:leDeviceMock] withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]]) {
      [self addDeviceListenerWithInt:[self eventIntValue] withLeDeviceListener:listener];
    }
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)deviceRemoveListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                        withLeDeviceListener:(id<LeDeviceListener>)listener {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceRemoveListener) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(JavaLangInteger_parseIntWithNSString_(key))];
}

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithInt:(jint)key {
  return [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) getWithId:JavaLangInteger_valueOfWithInt_(key)];
}

- (void)remoteDeviceAddListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                           withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceAddListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]]) (void) [((id<JavaUtilMap>) nil_chk(remoteDeviceListeners_)) putWithId:JavaLangInteger_valueOfWithInt_([self eventIntValue]) withId:listener];
}

- (void)remoteDeviceRemoveListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                              withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRemoveListener) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
}

- (jboolean)deviceCheckBleHardwareAvailableWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceCheckBleHardwareAvailable) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]]) {
      return [self eventBooleanValue];
    }
    return true;
  }
  @finally {
    [lock_ unlock];
  }
}

- (jboolean)deviceIsBtEnabledWithLeDeviceMock:(LeDeviceMock *)leDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, deviceIsBtEnabled) withLeDeviceMock:leDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
    return [self eventBooleanValue];
  }
  @finally {
    [lock_ unlock];
  }
}

- (NSString *)remoteDeviceGetAddressWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  if ([self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetAddress) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]]) return [self eventValue];
  else return @"0:0:0:0";
}

- (NSString *)remoteDeviceGetNameWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetName) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  return [self eventValue];
}

- (JavaUtilUUID *)serviceGetUuidWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock {
  return [self checkEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetUUID) withLeGattServiceMock:leGattServiceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]] ? JavaUtilUUID_fromStringWithNSString_([self eventValue]) : JavaUtilUUID_randomUUID();
}

- (IOSByteArray *)characteristicGetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  return LeUtil_stringToBytesWithNSString_([self eventValue]);
}

- (jint)characteristicGetIntValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                                 withLeFormat:(LeFormat *)format
                                                      withInt:(jint)index {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetIntValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ [((LeFormat *) nil_chk(format)) description], JreStrcat("I", index) } count:2 type:NSString_class_()]];
  return [self eventIntValue];
}

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
}

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value
                                       withJavaLangBoolean:(JavaLangBoolean *)withResponse {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value), [((JavaLangBoolean *) nil_chk(withResponse)) description] } count:2 type:NSString_class_()]];
}

- (void)remoteDeviceReadRssiWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(lock_)) lock];
  @try {
    [self checkEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceReadRssi) withLeRemoteDeviceMock:leRemoteDeviceMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  }
  @finally {
    [lock_ unlock];
  }
}

- (void)characteristicReadWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock {
  [self checkEventWithLeEventType:JreLoadEnum(LeEventType, characteristicRead) withLeGattCharacteristicMock:leGattCharacteristicMock withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
}

- (void)__javaClone:(LeSessionController *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&mockedEvents_, &original->mockedEvents_);
  JreCloneVolatileStrong(&stackedEvent_, &original->stackedEvent_);
}

- (void)dealloc {
  JreReleaseVolatile(&mockedEvents_);
  JreReleaseVolatile(&stackedEvent_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "shouldLog", NULL, "Z", 0x0, NULL, NULL },
    { "initWithSession:", "LeSessionController", NULL, 0x1, NULL, NULL },
    { "initWithSession:withBoolean:", "LeSessionController", NULL, 0x1, NULL, NULL },
    { "eventValue", NULL, "Ljava.lang.String;", 0x4, NULL, NULL },
    { "eventValueWithInt:", "eventValue", "Ljava.lang.String;", 0x4, NULL, NULL },
    { "eventIntValue", NULL, "I", 0x4, NULL, NULL },
    { "eventBooleanValue", NULL, "Z", 0x4, NULL, NULL },
    { "eventBooleanValueWithInt:", "eventBooleanValue", "Z", 0x4, NULL, NULL },
    { "pointReachedWithNSString:", "pointReached", "V", 0x1, NULL, NULL },
    { "waitForPointOrEventWithNSString:", "waitForPointOrEvent", "V", 0x4, "Ljava.lang.InterruptedException;", NULL },
    { "updateCurrentEventWithEvent:", "updateCurrentEvent", "V", 0x4, NULL, NULL },
    { "checkPause", NULL, "V", 0x4, NULL, NULL },
    { "waitForPointWithNSString:", "waitForPoint", "V", 0x1, NULL, NULL },
    { "waitTillSessionStarted", NULL, "Z", 0x1, NULL, NULL },
    { "waitForEventWithEvent:", "waitForEvent", "V", 0x1, "Ljava.lang.InterruptedException;", NULL },
    { "startDefaultSession", NULL, "V", 0x1, NULL, NULL },
    { "startSessionWithNSString:", "startSession", "V", 0x1, NULL, NULL },
    { "runCurrentEventOnUiThreadWithJavaLangRunnable:", "runCurrentEventOnUiThread", "V", 0x0, "Ljava.lang.InterruptedException;", NULL },
    { "startSessionInThread", NULL, "V", 0x4, NULL, NULL },
    { "workOnEventWithEvent:", "workOnEvent", "V", 0x4, "Ljava.lang.InterruptedException;", NULL },
    { "waitForFinishedSession", NULL, "V", 0x1, NULL, NULL },
    { "stopSession", NULL, "V", 0x1, NULL, NULL },
    { "getSessionException", NULL, "Ljava.lang.Exception;", 0x1, NULL, NULL },
    { "checkEventWithLeEventType:withLeDeviceMock:withNSStringArray:", "checkEvent", "Z", 0x81, NULL, NULL },
    { "checkEventWithLeEventType:withLeRemoteDeviceMock:withNSStringArray:", "checkEvent", "Z", 0x81, NULL, NULL },
    { "checkEventWithLeEventType:withLeGattServiceMock:withNSStringArray:", "checkEvent", "Z", 0x81, NULL, NULL },
    { "checkEventWithLeEventType:withLeGattCharacteristicMock:withNSStringArray:", "checkEvent", "Z", 0x81, NULL, NULL },
    { "getSession", NULL, "Lhoutbecke.rs.le.session.Session;", 0x1, NULL, NULL },
    { "checkEventWithSourceIdWithLeEventType:withLeSessionController_SourceType:withInt:withNSStringArray:", "checkEventWithSourceId", "Z", 0x81, NULL, NULL },
    { "deviceStartScanningWithLeDeviceMock:", "deviceStartScanning", "V", 0x1, NULL, NULL },
    { "deviceStartScanningWithLeDeviceMock:withJavaUtilUUIDArray:", "deviceStartScanning", "V", 0x1, NULL, NULL },
    { "deviceStopScanningWithLeDeviceMock:", "deviceStopScanning", "V", 0x1, NULL, NULL },
    { "remoteDeviceConnectWithLeRemoteDeviceMock:", "remoteDeviceConnect", "V", 0x1, NULL, NULL },
    { "remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:", "remoteDeviceStartServiceDiscovery", "V", 0x1, NULL, NULL },
    { "remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:withJavaUtilUUIDArray:", "remoteDeviceStartServiceDiscovery", "V", 0x1, NULL, NULL },
    { "remoteDeviceCloseWithLeRemoteDeviceMock:", "remoteDeviceClose", "V", 0x1, NULL, NULL },
    { "remoteDeviceDisconnectWithLeRemoteDeviceMock:", "remoteDeviceDisconnect", "V", 0x1, NULL, NULL },
    { "getCharacteristicListenerWithNSString:", "getCharacteristicListener", "Lhoutbecke.rs.le.LeCharacteristicListener;", 0x4, NULL, NULL },
    { "getCharacteristicListenerWithInt:", "getCharacteristicListener", "Lhoutbecke.rs.le.LeCharacteristicListener;", 0x1, NULL, NULL },
    { "remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:withLeCharacteristicListener:withJavaUtilUUIDArray:", "remoteDeviceSetCharacteristicListener", "V", 0x1, NULL, NULL },
    { "getCharacteristicWriteListenerWithNSString:", "getCharacteristicWriteListener", "Lhoutbecke.rs.le.LeCharacteristicWriteListener;", 0x4, NULL, NULL },
    { "getCharacteristicWriteListenerWithInt:", "getCharacteristicWriteListener", "Lhoutbecke.rs.le.LeCharacteristicWriteListener;", 0x1, NULL, NULL },
    { "remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:withLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "remoteDeviceSetCharacteristicWriteListener", "V", 0x1, NULL, NULL },
    { "serviceEnableCharacteristicNotificationWithLeGattServiceMock:withJavaUtilUUID:", "serviceEnableCharacteristicNotification", "Z", 0x1, NULL, NULL },
    { "getDeviceWithNSString:", "getDevice", "Lhoutbecke.rs.le.mock.LeDeviceMock;", 0x4, NULL, NULL },
    { "getDeviceWithInt:", "getDevice", "Lhoutbecke.rs.le.mock.LeDeviceMock;", 0x4, NULL, NULL },
    { "getDeviceKeyWithLeDeviceMock:", "getDeviceKey", "I", 0x4, NULL, NULL },
    { "addDeviceWithInt:withLeDeviceMock:", "addDevice", "V", 0x1, NULL, NULL },
    { "createRemoteDeviceWithInt:withLeDeviceMock:", "createRemoteDevice", "Lhoutbecke.rs.le.mock.LeRemoteDeviceMock;", 0x4, NULL, NULL },
    { "createOrReturnRemoteDeviceWithInt:withLeDeviceMock:", "createOrReturnRemoteDevice", "Lhoutbecke.rs.le.mock.LeRemoteDeviceMock;", 0x4, NULL, NULL },
    { "getRemoteDeviceKeyWithLeRemoteDeviceMock:", "getRemoteDeviceKey", "I", 0x4, NULL, NULL },
    { "getRemoteDeviceWithNSString:", "getRemoteDevice", "Lhoutbecke.rs.le.mock.LeRemoteDeviceMock;", 0x4, NULL, NULL },
    { "getRemoteDeviceWithInt:", "getRemoteDevice", "Lhoutbecke.rs.le.mock.LeRemoteDeviceMock;", 0x4, NULL, NULL },
    { "createGattServiceWithNSString:", "createGattService", "Lhoutbecke.rs.le.mock.LeGattServiceMock;", 0x4, NULL, NULL },
    { "createGattServiceWithInt:", "createGattService", "Lhoutbecke.rs.le.mock.LeGattServiceMock;", 0x4, NULL, NULL },
    { "getGattServiceKeyWithLeGattServiceMock:", "getGattServiceKey", "I", 0x4, NULL, NULL },
    { "getDeviceListenerWithNSString:", "getDeviceListener", "Lhoutbecke.rs.le.LeDeviceListener;", 0x4, NULL, NULL },
    { "addDeviceListenerWithInt:withLeDeviceListener:", "addDeviceListener", "V", 0x4, NULL, NULL },
    { "getDeviceListenerWithInt:", "getDeviceListener", "Lhoutbecke.rs.le.LeDeviceListener;", 0x1, NULL, NULL },
    { "getDeviceListenerKeyWithLeDeviceListener:", "getDeviceListenerKey", "I", 0x4, NULL, NULL },
    { "createOrReturnCharacteristicWithNSString:", "createOrReturnCharacteristic", "Lhoutbecke.rs.le.mock.LeGattCharacteristicMock;", 0x4, NULL, NULL },
    { "createOrReturnCharacteristicWithInt:", "createOrReturnCharacteristic", "Lhoutbecke.rs.le.mock.LeGattCharacteristicMock;", 0x4, NULL, NULL },
    { "getCharacteristicKeyWithLeGattCharacteristicMock:", "getCharacteristicKey", "I", 0x4, NULL, NULL },
    { "getCharacteristicWithNSString:", "getCharacteristic", "Lhoutbecke.rs.le.mock.LeGattCharacteristicMock;", 0x4, NULL, NULL },
    { "getCharacteristicWithInt:", "getCharacteristic", "Lhoutbecke.rs.le.mock.LeGattCharacteristicMock;", 0x4, NULL, NULL },
    { "serviceGetCharacteristicWithLeGattServiceMock:withJavaUtilUUID:", "serviceGetCharacteristic", "Lhoutbecke.rs.le.LeGattCharacteristic;", 0x1, NULL, NULL },
    { "deviceAddListenerWithLeDeviceMock:withLeDeviceListener:", "deviceAddListener", "V", 0x1, NULL, NULL },
    { "deviceRemoveListenerWithLeDeviceMock:withLeDeviceListener:", "deviceRemoveListener", "V", 0x1, NULL, NULL },
    { "getRemoteDeviceListenerWithNSString:", "getRemoteDeviceListener", "Lhoutbecke.rs.le.LeRemoteDeviceListener;", 0x4, NULL, NULL },
    { "getRemoteDeviceListenerWithInt:", "getRemoteDeviceListener", "Lhoutbecke.rs.le.LeRemoteDeviceListener;", 0x1, NULL, NULL },
    { "remoteDeviceAddListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:", "remoteDeviceAddListener", "V", 0x1, NULL, NULL },
    { "remoteDeviceRemoveListenerWithLeRemoteDeviceMock:withLeRemoteDeviceListener:", "remoteDeviceRemoveListener", "V", 0x1, NULL, NULL },
    { "deviceCheckBleHardwareAvailableWithLeDeviceMock:", "deviceCheckBleHardwareAvailable", "Z", 0x1, NULL, NULL },
    { "deviceIsBtEnabledWithLeDeviceMock:", "deviceIsBtEnabled", "Z", 0x1, NULL, NULL },
    { "remoteDeviceGetAddressWithLeRemoteDeviceMock:", "remoteDeviceGetAddress", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "remoteDeviceGetNameWithLeRemoteDeviceMock:", "remoteDeviceGetName", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "serviceGetUuidWithLeGattServiceMock:", "serviceGetUuid", "Ljava.util.UUID;", 0x1, NULL, NULL },
    { "characteristicGetValueWithLeGattCharacteristicMock:", "characteristicGetValue", "[B", 0x1, NULL, NULL },
    { "characteristicGetIntValueWithLeGattCharacteristicMock:withLeFormat:withInt:", "characteristicGetIntValue", "I", 0x1, NULL, NULL },
    { "characteristicSetValueWithLeGattCharacteristicMock:withByteArray:", "characteristicSetValue", "V", 0x1, NULL, NULL },
    { "characteristicSetValueWithLeGattCharacteristicMock:withByteArray:withJavaLangBoolean:", "characteristicSetValue", "V", 0x1, NULL, NULL },
    { "remoteDeviceReadRssiWithLeRemoteDeviceMock:", "remoteDeviceReadRssi", "V", 0x1, NULL, NULL },
    { "characteristicReadWithLeGattCharacteristicMock:", "characteristicRead", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "TAG", 0x18, "Ljava.lang.String;", &LeSessionController_TAG, NULL, .constantValue.asLong = 0 },
    { "counter_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "strict_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "lock_", NULL, 0x10, "Ljava.util.concurrent.locks.ReentrantLock;", NULL, NULL, .constantValue.asLong = 0 },
    { "condition_", NULL, 0x10, "Ljava.util.concurrent.locks.Condition;", NULL, NULL, .constantValue.asLong = 0 },
    { "source_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x0, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "point_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentEvent_", NULL, 0x0, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "waitingForEvent_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "sessionName_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "session_", NULL, 0x0, "Lhoutbecke.rs.le.session.Session;", NULL, NULL, .constantValue.asLong = 0 },
    { "mockedEvents_", NULL, 0x40, "Ljava.util.List;", NULL, "Ljava/util/List<Lhoutbecke/rs/le/session/Event;>;", .constantValue.asLong = 0 },
    { "stackedEvent_", NULL, 0x40, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "sessionIsRunning_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "stopSession_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "executeNextEventAfter_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "characteristicsValues_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;[LB;>;", .constantValue.asLong = 0 },
    { "sessionException_", NULL, 0x0, "Ljava.lang.Exception;", NULL, NULL, .constantValue.asLong = 0 },
    { "characteristicListeners_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeCharacteristicListener;>;", .constantValue.asLong = 0 },
    { "characteristicWriteListeners_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeCharacteristicWriteListener;>;", .constantValue.asLong = 0 },
    { "devices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeDeviceMock;>;", .constantValue.asLong = 0 },
    { "deviceKeys_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeDeviceMock;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "remoteDevices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeRemoteDeviceMock;>;", .constantValue.asLong = 0 },
    { "remoteDeviceKeys_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeRemoteDeviceMock;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "gattServices_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeGattServiceMock;>;", .constantValue.asLong = 0 },
    { "gattServicesKeys_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeGattServiceMock;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "deviceListeners_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeDeviceListener;>;", .constantValue.asLong = 0 },
    { "deviceListenerKeys_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/LeDeviceListener;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "characteristics_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/mock/LeGattCharacteristicMock;>;", .constantValue.asLong = 0 },
    { "characteristicsKeys_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Lhoutbecke/rs/le/mock/LeGattCharacteristicMock;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "remoteDeviceListeners_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/LeRemoteDeviceListener;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lhoutbecke.rs.le.mock.LeSessionController$RunnableWrapper;", "Lhoutbecke.rs.le.mock.LeSessionController$SourceType;"};
  static const J2ObjcClassInfo _LeSessionController = { 2, "LeSessionController", "houtbecke.rs.le.mock", NULL, 0x1, 83, methods, 32, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_LeSessionController;
}

@end

void LeSessionController_initWithSession_(LeSessionController *self, id<Session> session) {
  LeSessionController_initWithSession_withBoolean_(self, session, false);
}

LeSessionController *new_LeSessionController_initWithSession_(id<Session> session) {
  J2OBJC_NEW_IMPL(LeSessionController, initWithSession_, session)
}

LeSessionController *create_LeSessionController_initWithSession_(id<Session> session) {
  J2OBJC_CREATE_IMPL(LeSessionController, initWithSession_, session)
}

void LeSessionController_initWithSession_withBoolean_(LeSessionController *self, id<Session> session, jboolean strict) {
  NSObject_init(self);
  self->counter_ = 0;
  self->lock_ = new_JavaUtilConcurrentLocksReentrantLock_initWithBoolean_(true);
  self->condition_ = [self->lock_ newCondition];
  self->point_ = @"";
  self->waitingForEvent_ = false;
  self->sessionName_ = nil;
  (void) JreVolatileStrongAssignAndConsume(&self->mockedEvents_, new_JavaUtilArrayList_init());
  (void) JreVolatileStrongAssign(&self->stackedEvent_, nil);
  self->sessionIsRunning_ = false;
  self->stopSession_ = false;
  self->executeNextEventAfter_ = 0;
  self->characteristicsValues_ = new_JavaUtilHashMap_init();
  self->sessionException_ = nil;
  self->characteristicListeners_ = new_JavaUtilHashMap_init();
  self->characteristicWriteListeners_ = new_JavaUtilHashMap_init();
  self->devices_ = new_JavaUtilHashMap_init();
  self->deviceKeys_ = new_JavaUtilHashMap_init();
  self->remoteDevices_ = new_JavaUtilHashMap_init();
  self->remoteDeviceKeys_ = JavaUtilCollections_synchronizedMapWithJavaUtilMap_(new_JavaUtilHashMap_init());
  self->gattServices_ = new_JavaUtilHashMap_init();
  self->gattServicesKeys_ = new_JavaUtilHashMap_init();
  self->deviceListeners_ = new_JavaUtilHashMap_init();
  self->deviceListenerKeys_ = new_JavaUtilHashMap_init();
  self->characteristics_ = new_JavaUtilHashMap_init();
  self->characteristicsKeys_ = new_JavaUtilHashMap_init();
  self->remoteDeviceListeners_ = new_JavaUtilHashMap_init();
  self->strict_ = strict;
  self->session_ = session;
}

LeSessionController *new_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict) {
  J2OBJC_NEW_IMPL(LeSessionController, initWithSession_withBoolean_, session, strict)
}

LeSessionController *create_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict) {
  J2OBJC_CREATE_IMPL(LeSessionController, initWithSession_withBoolean_, session, strict)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController)

@implementation LeSessionController_RunnableWrapper

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                       withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(self, outer$, runnable);
  return self;
}

- (void)run {
  [((JavaUtilConcurrentLocksReentrantLock *) nil_chk(this$0_->lock_)) lock];
  @try {
    started_ = true;
    [this$0_ updateCurrentEventWithEvent:nil];
    [((id<JavaUtilConcurrentLocksCondition>) nil_chk(this$0_->condition_)) signalAll];
    ;
  }
  @finally {
    [this$0_->lock_ unlock];
  }
  [((id<JavaLangRunnable>) nil_chk(runnable_)) run];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeSessionController:withJavaLangRunnable:", "RunnableWrapper", NULL, 0x1, NULL, NULL },
    { "run", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "runnable_", NULL, 0x10, "Ljava.lang.Runnable;", NULL, NULL, .constantValue.asLong = 0 },
    { "started_", NULL, 0x1, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeSessionController_RunnableWrapper = { 2, "RunnableWrapper", "houtbecke.rs.le.mock", "LeSessionController", 0x2, 2, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeSessionController_RunnableWrapper;
}

@end

void LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController_RunnableWrapper *self, LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  self->this$0_ = outer$;
  NSObject_init(self);
  self->started_ = false;
  self->runnable_ = runnable;
}

LeSessionController_RunnableWrapper *new_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  J2OBJC_NEW_IMPL(LeSessionController_RunnableWrapper, initWithLeSessionController_withJavaLangRunnable_, outer$, runnable)
}

LeSessionController_RunnableWrapper *create_LeSessionController_RunnableWrapper_initWithLeSessionController_withJavaLangRunnable_(LeSessionController *outer$, id<JavaLangRunnable> runnable) {
  J2OBJC_CREATE_IMPL(LeSessionController_RunnableWrapper, initWithLeSessionController_withJavaLangRunnable_, outer$, runnable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_RunnableWrapper)

J2OBJC_INITIALIZED_DEFN(LeSessionController_SourceType)

LeSessionController_SourceType *LeSessionController_SourceType_values_[4];

@implementation LeSessionController_SourceType

+ (IOSObjectArray *)values {
  return LeSessionController_SourceType_values();
}

+ (LeSessionController_SourceType *)valueOfWithNSString:(NSString *)name {
  return LeSessionController_SourceType_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [LeSessionController_SourceType class]) {
    JreEnum(LeSessionController_SourceType, device) = new_LeSessionController_SourceType_initWithNSString_withInt_(@"device", 0);
    JreEnum(LeSessionController_SourceType, remoteDevice) = new_LeSessionController_SourceType_initWithNSString_withInt_(@"remoteDevice", 1);
    JreEnum(LeSessionController_SourceType, gattService) = new_LeSessionController_SourceType_initWithNSString_withInt_(@"gattService", 2);
    JreEnum(LeSessionController_SourceType, gattCharacteristic) = new_LeSessionController_SourceType_initWithNSString_withInt_(@"gattCharacteristic", 3);
    J2OBJC_SET_INITIALIZED(LeSessionController_SourceType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "device", "device", 0x4019, "Lhoutbecke.rs.le.mock.LeSessionController$SourceType;", &JreEnum(LeSessionController_SourceType, device), NULL, .constantValue.asLong = 0 },
    { "remoteDevice", "remoteDevice", 0x4019, "Lhoutbecke.rs.le.mock.LeSessionController$SourceType;", &JreEnum(LeSessionController_SourceType, remoteDevice), NULL, .constantValue.asLong = 0 },
    { "gattService", "gattService", 0x4019, "Lhoutbecke.rs.le.mock.LeSessionController$SourceType;", &JreEnum(LeSessionController_SourceType, gattService), NULL, .constantValue.asLong = 0 },
    { "gattCharacteristic", "gattCharacteristic", 0x4019, "Lhoutbecke.rs.le.mock.LeSessionController$SourceType;", &JreEnum(LeSessionController_SourceType, gattCharacteristic), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lhoutbecke.rs.le.mock.LeSessionController$SourceType;"};
  static const J2ObjcClassInfo _LeSessionController_SourceType = { 2, "SourceType", "houtbecke.rs.le.mock", "LeSessionController", 0x401c, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lhoutbecke/rs/le/mock/LeSessionController$SourceType;>;" };
  return &_LeSessionController_SourceType;
}

@end

void LeSessionController_SourceType_initWithNSString_withInt_(LeSessionController_SourceType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

LeSessionController_SourceType *new_LeSessionController_SourceType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(LeSessionController_SourceType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *LeSessionController_SourceType_values() {
  LeSessionController_SourceType_initialize();
  return [IOSObjectArray arrayWithObjects:LeSessionController_SourceType_values_ count:4 type:LeSessionController_SourceType_class_()];
}

LeSessionController_SourceType *LeSessionController_SourceType_valueOfWithNSString_(NSString *name) {
  LeSessionController_SourceType_initialize();
  for (int i = 0; i < 4; i++) {
    LeSessionController_SourceType *e = LeSessionController_SourceType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

LeSessionController_SourceType *LeSessionController_SourceType_fromOrdinal(NSUInteger ordinal) {
  LeSessionController_SourceType_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return LeSessionController_SourceType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_SourceType)

@implementation LeSessionController_$1

- (void)run {
  [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) setNameWithNSString:@"LeSessionController"];
  [this$0_ startSessionInThread];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$ {
  LeSessionController_$1_initWithLeSessionController_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "startSessionWithNSString:" };
  static const J2ObjcClassInfo _LeSessionController_$1 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$1;
}

@end

void LeSessionController_$1_initWithLeSessionController_(LeSessionController_$1 *self, LeSessionController *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

LeSessionController_$1 *new_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) {
  J2OBJC_NEW_IMPL(LeSessionController_$1, initWithLeSessionController_, outer$)
}

LeSessionController_$1 *create_LeSessionController_$1_initWithLeSessionController_(LeSessionController *outer$) {
  J2OBJC_CREATE_IMPL(LeSessionController_$1, initWithLeSessionController_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$1)

@implementation LeSessionController_$2

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getDeviceMockerWithInt:((Event *) nil_chk(val$event_))->source_])) getDeviceListenersWithLeMockController:this$0_ withInt:val$event_->source_];
    id<LeDeviceListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeDeviceListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeDeviceListener> leListener = *b__++;
      [((id<LeDeviceListener>) nil_chk(leListener)) leDeviceFoundWithLeDevice:[this$0_ getDeviceWithInt:val$event_->source_] withLeRemoteDevice:[this$0_ createOrReturnRemoteDeviceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0)))) intValue] withLeDeviceMock:[this$0_ getDeviceWithInt:val$event_->source_]] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)))) intValue] withLeScanRecord:LeUtil_parseLeScanRecordWithByteArray_(LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$2_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$2 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$2;
}

@end

void LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController_$2 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$2 *new_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$2, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$2 *create_LeSessionController_$2_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$2, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$2)

@implementation LeSessionController_$3

- (void)run {
  [((id<LeDeviceListener>) nil_chk([this$0_ getDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDeviceFoundWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ createOrReturnRemoteDeviceWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)))) intValue] withLeDeviceMock:[this$0_ getDeviceWithInt:val$event_->source_]] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue] withLeScanRecord:LeUtil_parseLeScanRecordWithByteArray_(LeUtil_stringToBytesWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3)))];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$3_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$3 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$3;
}

@end

void LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController_$3 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$3 *new_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$3, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$3 *create_LeSessionController_$3_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$3, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$3)

@implementation LeSessionController_$4

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesConnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withLeRemoteDeviceListener:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$listener_", NULL, 0x1012, "Lhoutbecke.rs.le.LeRemoteDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$4 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$4;
}

@end

void LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$4 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  self->this$0_ = outer$;
  self->val$listener_ = capture$0;
  self->val$event_ = capture$1;
  NSObject_init(self);
}

LeSessionController_$4 *new_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$4, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$4 *create_LeSessionController_$4_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$4, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$4)

@implementation LeSessionController_$5

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesConnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$5_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$5 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$5;
}

@end

void LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController_$5 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$5 *new_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$5, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$5 *create_LeSessionController_$5_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$5, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$5)

@implementation LeSessionController_$6

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesDisconnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withLeRemoteDeviceListener:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$listener_", NULL, 0x1012, "Lhoutbecke.rs.le.LeRemoteDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$6 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$6;
}

@end

void LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$6 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  self->this$0_ = outer$;
  self->val$listener_ = capture$0;
  self->val$event_ = capture$1;
  NSObject_init(self);
}

LeSessionController_$6 *new_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$6, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$6 *create_LeSessionController_$6_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$6, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$6)

@implementation LeSessionController_$7

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesDisconnectedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$7_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$7 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$7;
}

@end

void LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController_$7 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$7 *new_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$7, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$7 *create_LeSessionController_$7_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$7, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$7)

@implementation LeSessionController_$8

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) leDevicesClosedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$0
                                  withEvent:(Event *)capture$1 {
  LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withLeRemoteDeviceListener:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$listener_", NULL, 0x1012, "Lhoutbecke.rs.le.LeRemoteDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$8 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$8;
}

@end

void LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController_$8 *self, LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  self->this$0_ = outer$;
  self->val$listener_ = capture$0;
  self->val$event_ = capture$1;
  NSObject_init(self);
}

LeSessionController_$8 *new_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$8, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

LeSessionController_$8 *create_LeSessionController_$8_initWithLeSessionController_withLeRemoteDeviceListener_withEvent_(LeSessionController *outer$, id<LeRemoteDeviceListener> capture$0, Event *capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$8, initWithLeSessionController_withLeRemoteDeviceListener_withEvent_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$8)

@implementation LeSessionController_$9

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) leDevicesClosedWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$9_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$9 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$9;
}

@end

void LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController_$9 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$9 *new_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$9, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$9 *create_LeSessionController_$9_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$9, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$9)

@implementation LeSessionController_$10

- (void)run {
  IOSObjectArray *services = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(((Event *) nil_chk(val$event_))->values_))->size_ - 2 type:LeGattServiceMock_class_()];
  for (jint k = 0; k < services->size_; k++) (void) IOSObjectArray_Set(services, k, [this$0_ createGattServiceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), k + 2)]);
  [((id<LeRemoteDeviceListener>) nil_chk(val$listener_)) serviceDiscoveredWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_] withLeGattStatus:LeGattStatus_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 1)) withLeGattServiceArray:services];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                 withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)capture$1 {
  LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:withLeRemoteDeviceListener:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$listener_", NULL, 0x1012, "Lhoutbecke.rs.le.LeRemoteDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$10 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$10;
}

@end

void LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController_$10 *self, LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  self->val$listener_ = capture$1;
  NSObject_init(self);
}

LeSessionController_$10 *new_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  J2OBJC_NEW_IMPL(LeSessionController_$10, initWithLeSessionController_withEvent_withLeRemoteDeviceListener_, outer$, capture$0, capture$1)
}

LeSessionController_$10 *create_LeSessionController_$10_initWithLeSessionController_withEvent_withLeRemoteDeviceListener_(LeSessionController *outer$, Event *capture$0, id<LeRemoteDeviceListener> capture$1) {
  J2OBJC_CREATE_IMPL(LeSessionController_$10, initWithLeSessionController_withEvent_withLeRemoteDeviceListener_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$10)

@implementation LeSessionController_$11

- (void)run {
  IOSObjectArray *services = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(((Event *) nil_chk(val$event_))->values_))->size_ - 3 type:LeGattServiceMock_class_()];
  for (jint k = 0; k < services->size_; k++) (void) IOSObjectArray_Set(services, k, [this$0_ createGattServiceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), k + 3)]);
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:val$event_->source_])) serviceDiscoveredWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattStatus:LeGattStatus_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)) withLeGattServiceArray:services];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$11_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$11 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$11;
}

@end

void LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController_$11 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$11 *new_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$11, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$11 *create_LeSessionController_$11_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$11, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$11)

@implementation LeSessionController_$12

- (void)run {
  [((id<LeRemoteDeviceListener>) nil_chk([this$0_ getRemoteDeviceListenerWithInt:((Event *) nil_chk(val$event_))->source_])) rssiReadWithLeDevice:[this$0_ getDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 0)] withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$12_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$12 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$12;
}

@end

void LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController_$12 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$12 *new_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$12, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$12 *create_LeSessionController_$12_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$12, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$12)

@implementation LeSessionController_$13

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getRemoteDeviceMockerWithInt:((Event *) nil_chk(val$event_))->source_])) getCharacteristicListenersWithLeMockController:this$0_ withInt:val$event_->source_];
    id<LeCharacteristicListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeCharacteristicListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeCharacteristicListener> leCharacteristicListener = *b__++;
      [((id<LeCharacteristicListener>) nil_chk(leCharacteristicListener)) leCharacteristicChangedWithJavaUtilUUID:val$uuid_ withLeRemoteDevice:[this$0_ getRemoteDeviceWithInt:val$event_->source_] withLeGattCharacteristic:val$characteristic_];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2 {
  LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:withJavaUtilUUID:withLeGattCharacteristic:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$uuid_", NULL, 0x1012, "Ljava.util.UUID;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$characteristic_", NULL, 0x1012, "Lhoutbecke.rs.le.LeGattCharacteristic;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$13 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$13;
}

@end

void LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$13 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  self->val$uuid_ = capture$1;
  self->val$characteristic_ = capture$2;
  NSObject_init(self);
}

LeSessionController_$13 *new_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_NEW_IMPL(LeSessionController_$13, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

LeSessionController_$13 *create_LeSessionController_$13_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_CREATE_IMPL(LeSessionController_$13, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$13)

@implementation LeSessionController_$14

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  [((id<LeCharacteristicListener>) nil_chk([this$0_ getCharacteristicListenerWithInt:val$event_->source_])) leCharacteristicChangedWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)]];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$14_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$14 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$14;
}

@end

void LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController_$14 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$14 *new_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$14, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$14 *create_LeSessionController_$14_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$14, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$14)

@implementation LeSessionController_$15

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  id<LeCharacteristicWriteListener> characteristicWriteListener = [this$0_ getCharacteristicWriteListenerWithInt:val$event_->source_];
  [((id<LeCharacteristicWriteListener>) nil_chk(characteristicWriteListener)) leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withBoolean:true];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$15_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$15 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$15;
}

@end

void LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController_$15 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$15 *new_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$15, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$15 *create_LeSessionController_$15_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$15, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$15)

@implementation LeSessionController_$16

- (void)run {
  {
    IOSObjectArray *a__ = [((id<Mocker>) nil_chk([((id<Session>) nil_chk(this$0_->session_)) getRemoteDeviceMockerWithInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 2)))) intValue]])) getCharacteristicListenersWithLeMockController:this$0_ withInt:[((JavaLangInteger *) nil_chk(JavaLangInteger_valueOfWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 2)))) intValue]];
    id<LeCharacteristicListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeCharacteristicListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeCharacteristicListener> leCharacteristicListener = *b__++;
      [((id<LeCharacteristicListener>) nil_chk(leCharacteristicListener)) leCharacteristicNotificationChangedWithJavaUtilUUID:val$uuid2_ withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withLeGattCharacteristic:val$characteristic2_ withBoolean:JavaLangBoolean_parseBooleanWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3))];
    }
  }
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0
                           withJavaUtilUUID:(JavaUtilUUID *)capture$1
                   withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$2 {
  LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:withJavaUtilUUID:withLeGattCharacteristic:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$uuid2_", NULL, 0x1012, "Ljava.util.UUID;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$characteristic2_", NULL, 0x1012, "Lhoutbecke.rs.le.LeGattCharacteristic;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$16 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$16;
}

@end

void LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController_$16 *self, LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  self->val$uuid2_ = capture$1;
  self->val$characteristic2_ = capture$2;
  NSObject_init(self);
}

LeSessionController_$16 *new_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_NEW_IMPL(LeSessionController_$16, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

LeSessionController_$16 *create_LeSessionController_$16_initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_(LeSessionController *outer$, Event *capture$0, JavaUtilUUID *capture$1, id<LeGattCharacteristic> capture$2) {
  J2OBJC_CREATE_IMPL(LeSessionController_$16, initWithLeSessionController_withEvent_withJavaUtilUUID_withLeGattCharacteristic_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$16)

@implementation LeSessionController_$17

- (void)run {
  JavaUtilUUID *uuid = nil;
  if (IOSObjectArray_Get(nil_chk(((Event *) nil_chk(val$event_))->values_), 0) != nil && ![((NSString *) nil_chk(IOSObjectArray_Get(val$event_->values_, 0))) isEqual:@"null"]) uuid = JavaUtilUUID_fromStringWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 0));
  [((id<LeCharacteristicListener>) nil_chk([this$0_ getCharacteristicListenerWithInt:val$event_->source_])) leCharacteristicNotificationChangedWithJavaUtilUUID:uuid withLeRemoteDevice:[this$0_ getRemoteDeviceWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 1)] withLeGattCharacteristic:[this$0_ getCharacteristicWithNSString:IOSObjectArray_Get(nil_chk(val$event_->values_), 2)] withBoolean:JavaLangBoolean_parseBooleanWithNSString_(IOSObjectArray_Get(nil_chk(val$event_->values_), 3))];
}

- (instancetype)initWithLeSessionController:(LeSessionController *)outer$
                                  withEvent:(Event *)capture$0 {
  LeSessionController_$17_initWithLeSessionController_withEvent_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithLeSessionController:withEvent:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$event_", NULL, 0x1012, "Lhoutbecke.rs.le.session.Event;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeSessionController", "workOnEventWithEvent:" };
  static const J2ObjcClassInfo _LeSessionController_$17 = { 2, "", "houtbecke.rs.le.mock", "LeSessionController", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeSessionController_$17;
}

@end

void LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController_$17 *self, LeSessionController *outer$, Event *capture$0) {
  self->this$0_ = outer$;
  self->val$event_ = capture$0;
  NSObject_init(self);
}

LeSessionController_$17 *new_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_NEW_IMPL(LeSessionController_$17, initWithLeSessionController_withEvent_, outer$, capture$0)
}

LeSessionController_$17 *create_LeSessionController_$17_initWithLeSessionController_withEvent_(LeSessionController *outer$, Event *capture$0) {
  J2OBJC_CREATE_IMPL(LeSessionController_$17, initWithLeSessionController_withEvent_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionController_$17)
