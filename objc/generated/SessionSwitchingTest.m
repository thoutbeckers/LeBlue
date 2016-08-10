
#include "CharacteristicsMockerObject.h"
#include "DeviceMockerObject.h"
#include "EventSinkFiller.h"
#include "GattServiceMockerObject.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeDeviceMock.h"
#include "LeDeviceState.h"
#include "LeEventType.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattStatus.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "LeScanRecord.h"
#include "LeSessionController.h"
#include "ListEventSinkSource.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "SessionSwitchingTest.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface SessionSwitchingTest () {
 @public
  LeSessionController *sessionController_;
  id<LeDevice> device_;
  id<LeRemoteDevice> remoteDevice_;
}

@end

J2OBJC_FIELD_SETTER(SessionSwitchingTest, sessionController_, LeSessionController *)
J2OBJC_FIELD_SETTER(SessionSwitchingTest, device_, id<LeDevice>)
J2OBJC_FIELD_SETTER(SessionSwitchingTest, remoteDevice_, id<LeRemoteDevice>)

inline jint SessionSwitchingTest_get_LE_REMOTE_DEVICE();
#define SessionSwitchingTest_LE_REMOTE_DEVICE 1
J2OBJC_STATIC_FIELD_CONSTANT(SessionSwitchingTest, LE_REMOTE_DEVICE, jint)

inline jint SessionSwitchingTest_get_LE_SERVICE();
#define SessionSwitchingTest_LE_SERVICE 1
J2OBJC_STATIC_FIELD_CONSTANT(SessionSwitchingTest, LE_SERVICE, jint)

inline jint SessionSwitchingTest_get_LE_CHARACTERISTIC();
#define SessionSwitchingTest_LE_CHARACTERISTIC 1
J2OBJC_STATIC_FIELD_CONSTANT(SessionSwitchingTest, LE_CHARACTERISTIC, jint)

@interface SessionSwitchingTest_$1 : NSObject < LeDeviceListener > {
 @public
  SessionSwitchingTest *this$0_;
  IOSObjectArray *val$foundRemoteDevice_;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                    withJavaLangBooleanArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_$1)

J2OBJC_FIELD_SETTER(SessionSwitchingTest_$1, this$0_, SessionSwitchingTest *)
J2OBJC_FIELD_SETTER(SessionSwitchingTest_$1, val$foundRemoteDevice_, IOSObjectArray *)

__attribute__((unused)) static void SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest_$1 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_$1 *new_SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_$1 *create_SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(SessionSwitchingTest_$1)

@interface SessionSwitchingTest_$2 : NSObject < LeRemoteDeviceListener > {
 @public
  SessionSwitchingTest *this$0_;
  IOSObjectArray *val$service_;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts;

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi;

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                           withNSObjectArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_$2)

J2OBJC_FIELD_SETTER(SessionSwitchingTest_$2, this$0_, SessionSwitchingTest *)
J2OBJC_FIELD_SETTER(SessionSwitchingTest_$2, val$service_, IOSObjectArray *)

__attribute__((unused)) static void SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest_$2 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_$2 *new_SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_$2 *create_SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(SessionSwitchingTest_$2)

@interface SessionSwitchingTest_$3 : NSObject < LeCharacteristicListener > {
 @public
  IOSObjectArray *val$valueRead_;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success;

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_$3)

J2OBJC_FIELD_SETTER(SessionSwitchingTest_$3, val$valueRead_, IOSObjectArray *)

__attribute__((unused)) static void SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(SessionSwitchingTest_$3 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_$3 *new_SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_$3 *create_SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(SessionSwitchingTest_$3)

@implementation SessionSwitchingTest

- (void)setUp {
  (void) JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (ListEventSinkSource *)createSource1 {
  ListEventSinkSource *source1 = new_ListEventSinkSource_init();
  EventSinkFiller *filler1 = new_EventSinkFiller_initWithListEventSinkSource_(source1);
  (void) [filler1 addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  (void) [filler1 addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, mockRemoteDeviceFound) withInt:SessionSwitchingTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"123", @"0,1,2" } count:2 type:NSString_class_()]];
  (void) [filler1 waitForPointWithNSString:@"ready"];
  return source1;
}

- (ListEventSinkSource *)createSource2 {
  ListEventSinkSource *source2 = new_ListEventSinkSource_init();
  EventSinkFiller *filler2 = new_EventSinkFiller_initWithListEventSinkSource_(source2);
  (void) [filler2 addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChanged) withInt:SessionSwitchingTest_LE_REMOTE_DEVICE withInt:SessionSwitchingTest_LE_CHARACTERISTIC withNSStringArray:[IOSObjectArray newArrayWithLength:0 type:NSString_class_()]];
  (void) [filler2 waitForPointWithNSString:@"done"];
  return source2;
}

- (void)testController {
  ListEventSinkSource *events1 = [self createSource1];
  ListEventSinkSource *events2 = [self createSource2];
  sessionController_ = new_LeSessionController_initWithSession_([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((SessionObject *) nil_chk(((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk(SessionObject_newSession())) setDefaultSourceWithEventSource:events1])) withNamedEventSourceWithNSString:@"values" withEventSource:events2])) withDeviceMocker])) withFakeDeviceListeners]))->and__)) withRemoteDeviceMockerWithInt:SessionSwitchingTest_LE_REMOTE_DEVICE])) mocksRemoteDeviceWithNSString:@"0001:0002:0003:0004" withNSString:@"d1234" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray newArrayWithInts:(jint[]){ SessionSwitchingTest_LE_SERVICE } count:1]]))->and__ withGattServiceMockerWithInt:SessionSwitchingTest_LE_SERVICE])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")])) hasCharacteristicWithInt:SessionSwitchingTest_LE_CHARACTERISTIC withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")]))->and__ withGattCharacteristicsMockerWithInt:SessionSwitchingTest_LE_CHARACTERISTIC])) mocksCharacteristic])) hasFixedValueWithIntArray:[IOSIntArray newArrayWithInts:(jint[]){ 0, 1, 2 } count:3]])) end]);
  device_ = new_LeDeviceMock_initWithInt_withLeMockController_(EventSinkFiller_DEFAULT_DEVICE_ID, sessionController_);
  [((LeSessionController *) nil_chk(sessionController_)) startDefaultSession];
  JreAssert(([((LeSessionController *) nil_chk(sessionController_)) waitTillSessionStarted]), (@"houtbecke/rs/le/SessionSwitchingTest.java:55 condition failed: assert sessionController.waitTillSessionStarted();"));
  IOSObjectArray *foundRemoteDevice = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(foundRemoteDevice, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((LeDeviceMock *) nil_chk(((LeDeviceMock *) cast_chk(device_, [LeDeviceMock class])))) addListenerWithLeDeviceListener:new_SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(self, foundRemoteDevice)];
  [((id<LeDevice>) nil_chk(device_)) startScanning];
  JavaLangThread_sleepWithLong_(100);
  JreAssert((IOSObjectArray_Get(foundRemoteDevice, 0)), (@"houtbecke/rs/le/SessionSwitchingTest.java:80 condition failed: assert foundRemoteDevice[0];"));
  IOSObjectArray *service = [IOSObjectArray newArrayWithLength:1 type:NSObject_class_()];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:new_SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(self, service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) connect];
  JavaLangThread_sleepWithLong_(100);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(100);
  IOSObjectArray *valueRead = [IOSObjectArray newArrayWithLength:1 type:JavaLangBoolean_class_()];
  (void) IOSObjectArray_Set(valueRead, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:new_SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(valueRead) withJavaUtilUUIDArray:[IOSObjectArray newArrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc") } count:1 type:JavaUtilUUID_class_()]];
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"ready"];
  JreAssert((![((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(valueRead, 0))) booleanValue]), (@"houtbecke/rs/le/SessionSwitchingTest.java:138 condition failed: assert !valueRead[0];"));
  [((LeSessionController *) nil_chk(sessionController_)) startSessionWithNSString:@"values"];
  JavaLangThread_sleepWithLong_(100);
  JreAssert((IOSObjectArray_Get(valueRead, 0)), (@"houtbecke/rs/le/SessionSwitchingTest.java:143 condition failed: assert valueRead[0];"));
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"done"];
  [((LeSessionController *) nil_chk(sessionController_)) waitForFinishedSession];
  JreAssert((![((ListEventSinkSource *) nil_chk(events1)) hasMoreEvent]), (@"houtbecke/rs/le/SessionSwitchingTest.java:149 condition failed: assert !events1.hasMoreEvent();"));
  JreAssert((![((ListEventSinkSource *) nil_chk(events2)) hasMoreEvent]), (@"houtbecke/rs/le/SessionSwitchingTest.java:150 condition failed: assert !events2.hasMoreEvent();"));
  JreAssert(([((LeSessionController *) nil_chk(sessionController_)) getSessionException] == nil), (@"houtbecke/rs/le/SessionSwitchingTest.java:151 condition failed: assert sessionController.getSessionException() == null;"));
}

- (LeSessionController *)getSessionController {
  return sessionController_;
}

- (void)setSessionControllerWithLeSessionController:(LeSessionController *)sessionController {
  self->sessionController_ = sessionController;
}

- (id<LeDevice>)getDevice {
  return device_;
}

- (void)setDeviceWithLeDevice:(id<LeDevice>)device {
  self->device_ = device;
}

- (jint)getLE_REMOTE_DEVICE {
  return SessionSwitchingTest_LE_REMOTE_DEVICE;
}

- (jint)getLE_SERVICE {
  return SessionSwitchingTest_LE_SERVICE;
}

- (jint)getLE_CHARACTERISTIC {
  return SessionSwitchingTest_LE_CHARACTERISTIC;
}

- (id<LeRemoteDevice>)getRemoteDevice {
  return remoteDevice_;
}

- (void)setRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice {
  self->remoteDevice_ = remoteDevice;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  SessionSwitchingTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_setUp {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_testController {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setUp", NULL, "V", 0x1, "Ljava.lang.Exception;", NULL },
    { "createSource1", NULL, "Lhoutbecke.rs.le.session.ListEventSinkSource;", 0x1, NULL, NULL },
    { "createSource2", NULL, "Lhoutbecke.rs.le.session.ListEventSinkSource;", 0x1, NULL, NULL },
    { "testController", NULL, "V", 0x1, "Ljava.lang.InterruptedException;", NULL },
    { "getSessionController", NULL, "Lhoutbecke.rs.le.mock.LeSessionController;", 0x1, NULL, NULL },
    { "setSessionControllerWithLeSessionController:", "setSessionController", "V", 0x1, NULL, NULL },
    { "getDevice", NULL, "Lhoutbecke.rs.le.LeDevice;", 0x1, NULL, NULL },
    { "setDeviceWithLeDevice:", "setDevice", "V", 0x1, NULL, NULL },
    { "getLE_REMOTE_DEVICE", NULL, "I", 0x11, NULL, NULL },
    { "getLE_SERVICE", NULL, "I", 0x11, NULL, NULL },
    { "getLE_CHARACTERISTIC", NULL, "I", 0x11, NULL, NULL },
    { "getRemoteDevice", NULL, "Lhoutbecke.rs.le.LeRemoteDevice;", 0x1, NULL, NULL },
    { "setRemoteDeviceWithLeRemoteDevice:", "setRemoteDevice", "V", 0x1, NULL, NULL },
    { "init", "SessionSwitchingTest", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sessionController_", NULL, 0x2, "Lhoutbecke.rs.le.mock.LeSessionController;", NULL, NULL, .constantValue.asLong = 0 },
    { "device_", NULL, 0x2, "Lhoutbecke.rs.le.LeDevice;", NULL, NULL, .constantValue.asLong = 0 },
    { "LE_REMOTE_DEVICE", "LE_REMOTE_DEVICE", 0x12, "I", NULL, NULL, .constantValue.asInt = SessionSwitchingTest_LE_REMOTE_DEVICE },
    { "LE_SERVICE", "LE_SERVICE", 0x12, "I", NULL, NULL, .constantValue.asInt = SessionSwitchingTest_LE_SERVICE },
    { "LE_CHARACTERISTIC", "LE_CHARACTERISTIC", 0x12, "I", NULL, NULL, .constantValue.asInt = SessionSwitchingTest_LE_CHARACTERISTIC },
    { "remoteDevice_", NULL, 0x2, "Lhoutbecke.rs.le.LeRemoteDevice;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _SessionSwitchingTest = { 2, "SessionSwitchingTest", "houtbecke.rs.le", NULL, 0x1, 14, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_SessionSwitchingTest;
}

@end

void SessionSwitchingTest_init(SessionSwitchingTest *self) {
  NSObject_init(self);
}

SessionSwitchingTest *new_SessionSwitchingTest_init() {
  J2OBJC_NEW_IMPL(SessionSwitchingTest, init)
}

SessionSwitchingTest *create_SessionSwitchingTest_init() {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionSwitchingTest)

@implementation SessionSwitchingTest_$1

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  JreAssert(([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDeviceFound]), (@"houtbecke/rs/le/SessionSwitchingTest.java:62 condition failed: assert getDevice().equals(leDeviceFound);"));
  JreAssert((leFoundRemoteDevice != nil), (@"houtbecke/rs/le/SessionSwitchingTest.java:63 condition failed: assert leFoundRemoteDevice != null;"));
  JreAssert((rssi == 123), (@"houtbecke/rs/le/SessionSwitchingTest.java:64 condition failed: assert rssi == 123;"));
  [this$0_ setRemoteDeviceWithLeRemoteDevice:leFoundRemoteDevice];
  (void) IOSObjectArray_Set(nil_chk(val$foundRemoteDevice_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                    withJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:", "leDeviceFound", "V", 0x1, NULL, NULL },
    { "leDeviceStateWithLeDevice:withLeDeviceState:", "leDeviceState", "V", 0x1, NULL, NULL },
    { "initWithSessionSwitchingTest:withJavaLangBooleanArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.SessionSwitchingTest;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$foundRemoteDevice_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "SessionSwitchingTest", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_$1 = { 2, "", "houtbecke.rs.le", "SessionSwitchingTest", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_SessionSwitchingTest_$1;
}

@end

void SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest_$1 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  self->this$0_ = outer$;
  self->val$foundRemoteDevice_ = capture$0;
  NSObject_init(self);
}

SessionSwitchingTest_$1 *new_SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_$1, initWithSessionSwitchingTest_withJavaLangBooleanArray_, outer$, capture$0)
}

SessionSwitchingTest_$1 *create_SessionSwitchingTest_$1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_$1, initWithSessionSwitchingTest_withJavaLangBooleanArray_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionSwitchingTest_$1)

@implementation SessionSwitchingTest_$2

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  JreAssert(([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice]), (@"houtbecke/rs/le/SessionSwitchingTest.java:86 condition failed: assert getRemoteDevice().equals(leRemoteDevice);"));
}

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
}

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts {
  JreAssert(([((id<LeRemoteDevice>) nil_chk(leRemoteDevice)) isEqual:[this$0_ getRemoteDevice]]), (@"houtbecke/rs/le/SessionSwitchingTest.java:101 condition failed: assert leRemoteDevice.equals(getRemoteDevice());"));
  (void) IOSObjectArray_Set(nil_chk(val$service_), 0, (IOSObjectArray_Get(nil_chk(gatts), 0)));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                           withNSObjectArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDevicesConnectedWithLeDevice:withLeRemoteDevice:", "leDevicesConnected", "V", 0x1, NULL, NULL },
    { "leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:", "leDevicesDisconnected", "V", 0x1, NULL, NULL },
    { "leDevicesClosedWithLeDevice:withLeRemoteDevice:", "leDevicesClosed", "V", 0x1, NULL, NULL },
    { "serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:", "serviceDiscovered", "V", 0x1, NULL, NULL },
    { "rssiReadWithLeDevice:withLeRemoteDevice:withInt:", "rssiRead", "V", 0x1, NULL, NULL },
    { "initWithSessionSwitchingTest:withNSObjectArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lhoutbecke.rs.le.SessionSwitchingTest;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$service_", NULL, 0x1012, "[Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "SessionSwitchingTest", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_$2 = { 2, "", "houtbecke.rs.le", "SessionSwitchingTest", 0x8008, 6, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_SessionSwitchingTest_$2;
}

@end

void SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest_$2 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  self->this$0_ = outer$;
  self->val$service_ = capture$0;
  NSObject_init(self);
}

SessionSwitchingTest_$2 *new_SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_$2, initWithSessionSwitchingTest_withNSObjectArray_, outer$, capture$0)
}

SessionSwitchingTest_$2 *create_SessionSwitchingTest_$2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_$2, initWithSessionSwitchingTest_withNSObjectArray_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionSwitchingTest_$2)

@implementation SessionSwitchingTest_$3

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic {
  (void) IOSObjectArray_Set(nil_chk(val$valueRead_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
}

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:", "leCharacteristicChanged", "V", 0x1, NULL, NULL },
    { "leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicNotificationChanged", "V", 0x1, NULL, NULL },
    { "initWithJavaLangBooleanArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$valueRead_", NULL, 0x1012, "[Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "SessionSwitchingTest", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_$3 = { 2, "", "houtbecke.rs.le", "SessionSwitchingTest", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_SessionSwitchingTest_$3;
}

@end

void SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(SessionSwitchingTest_$3 *self, IOSObjectArray *capture$0) {
  self->val$valueRead_ = capture$0;
  NSObject_init(self);
}

SessionSwitchingTest_$3 *new_SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_$3, initWithJavaLangBooleanArray_, capture$0)
}

SessionSwitchingTest_$3 *create_SessionSwitchingTest_$3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_$3, initWithJavaLangBooleanArray_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionSwitchingTest_$3)
