
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

__attribute__((unused)) static IOSObjectArray *SessionSwitchingTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *SessionSwitchingTest__Annotations$1();

@interface SessionSwitchingTest_1 : NSObject < LeDeviceListener > {
 @public
  SessionSwitchingTest *this$0_;
  IOSObjectArray *val$foundRemoteDevice_;
}

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                    withJavaLangBooleanArray:(IOSObjectArray *)capture$0;

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_1)

__attribute__((unused)) static void SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest_1 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_1 *new_SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_1 *create_SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

@interface SessionSwitchingTest_2 : NSObject < LeRemoteDeviceListener > {
 @public
  SessionSwitchingTest *this$0_;
  IOSObjectArray *val$service_;
}

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                           withNSObjectArray:(IOSObjectArray *)capture$0;

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

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_2)

__attribute__((unused)) static void SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest_2 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_2 *new_SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_2 *create_SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0);

@interface SessionSwitchingTest_3 : NSObject < LeCharacteristicListener > {
 @public
  IOSObjectArray *val$valueRead_;
}

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0;

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionSwitchingTest_3)

__attribute__((unused)) static void SessionSwitchingTest_3_initWithJavaLangBooleanArray_(SessionSwitchingTest_3 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static SessionSwitchingTest_3 *new_SessionSwitchingTest_3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static SessionSwitchingTest_3 *create_SessionSwitchingTest_3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0);

@implementation SessionSwitchingTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  SessionSwitchingTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (ListEventSinkSource *)createSource1 {
  ListEventSinkSource *source1 = create_ListEventSinkSource_init();
  EventSinkFiller *filler1 = create_EventSinkFiller_initWithListEventSinkSource_(source1);
  [filler1 addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler1 addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, mockRemoteDeviceFound) withInt:SessionSwitchingTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"123", @"0,1,2" } count:2 type:NSString_class_()]];
  [filler1 waitForPointWithNSString:@"ready"];
  return source1;
}

- (ListEventSinkSource *)createSource2 {
  ListEventSinkSource *source2 = create_ListEventSinkSource_init();
  EventSinkFiller *filler2 = create_EventSinkFiller_initWithListEventSinkSource_(source2);
  [filler2 addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChanged) withInt:SessionSwitchingTest_LE_REMOTE_DEVICE withInt:SessionSwitchingTest_LE_CHARACTERISTIC withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler2 waitForPointWithNSString:@"done"];
  return source2;
}

- (void)testController {
  ListEventSinkSource *events1 = [self createSource1];
  ListEventSinkSource *events2 = [self createSource2];
  JreStrongAssignAndConsume(&sessionController_, new_LeSessionController_initWithSession_([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk(([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((SessionObject *) nil_chk(((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk(SessionObject_newSession())) setDefaultSourceWithEventSource:events1])) withNamedEventSourceWithNSString:@"values" withEventSource:events2])) withDeviceMocker])) withFakeDeviceListeners]))->and__)) withRemoteDeviceMockerWithInt:SessionSwitchingTest_LE_REMOTE_DEVICE])) mocksRemoteDeviceWithNSString:@"0001:0002:0003:0004" withNSString:@"d1234" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray arrayWithInts:(jint[]){ SessionSwitchingTest_LE_SERVICE } count:1]])))->and__ withGattServiceMockerWithInt:SessionSwitchingTest_LE_SERVICE])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")])) hasCharacteristicWithInt:SessionSwitchingTest_LE_CHARACTERISTIC withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")]))->and__ withGattCharacteristicsMockerWithInt:SessionSwitchingTest_LE_CHARACTERISTIC])) mocksCharacteristic])) hasFixedValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 0, 1, 2 } count:3]]))) end]));
  JreStrongAssignAndConsume(&device_, new_LeDeviceMock_initWithInt_withLeMockController_(EventSinkFiller_DEFAULT_DEVICE_ID, sessionController_));
  [((LeSessionController *) nil_chk(sessionController_)) startDefaultSession];
  JreAssert([((LeSessionController *) nil_chk(sessionController_)) waitTillSessionStarted], @"houtbecke/rs/le/SessionSwitchingTest.java:55 condition failed: assert sessionController.waitTillSessionStarted();");
  IOSObjectArray *foundRemoteDevice = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(foundRemoteDevice, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((LeDeviceMock *) nil_chk(((LeDeviceMock *) cast_chk(device_, [LeDeviceMock class])))) addListenerWithLeDeviceListener:create_SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(self, foundRemoteDevice)];
  [((id<LeDevice>) nil_chk(device_)) startScanning];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(foundRemoteDevice, 0), @"houtbecke/rs/le/SessionSwitchingTest.java:80 condition failed: assert foundRemoteDevice[0];");
  IOSObjectArray *service = [IOSObjectArray arrayWithLength:1 type:NSObject_class_()];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:create_SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(self, service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) connect];
  JavaLangThread_sleepWithLong_(100);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(100);
  IOSObjectArray *valueRead = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(valueRead, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:create_SessionSwitchingTest_3_initWithJavaLangBooleanArray_(valueRead) withJavaUtilUUIDArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc") } count:1 type:JavaUtilUUID_class_()]];
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"ready"];
  JreAssert(![((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(valueRead, 0))) booleanValue], @"houtbecke/rs/le/SessionSwitchingTest.java:138 condition failed: assert !valueRead[0];");
  [((LeSessionController *) nil_chk(sessionController_)) startSessionWithNSString:@"values"];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(valueRead, 0), @"houtbecke/rs/le/SessionSwitchingTest.java:143 condition failed: assert valueRead[0];");
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"done"];
  [((LeSessionController *) nil_chk(sessionController_)) waitForFinishedSession];
  JreAssert(![((ListEventSinkSource *) nil_chk(events1)) hasMoreEvent], @"houtbecke/rs/le/SessionSwitchingTest.java:149 condition failed: assert !events1.hasMoreEvent();");
  JreAssert(![((ListEventSinkSource *) nil_chk(events2)) hasMoreEvent], @"houtbecke/rs/le/SessionSwitchingTest.java:150 condition failed: assert !events2.hasMoreEvent();");
  JreAssert([((LeSessionController *) nil_chk(sessionController_)) getSessionException] == nil, @"houtbecke/rs/le/SessionSwitchingTest.java:151 condition failed: assert sessionController.getSessionException() == null;");
}

- (LeSessionController *)getSessionController {
  return sessionController_;
}

- (void)setSessionControllerWithLeSessionController:(LeSessionController *)sessionController {
  JreStrongAssign(&self->sessionController_, sessionController);
}

- (id<LeDevice>)getDevice {
  return device_;
}

- (void)setDeviceWithLeDevice:(id<LeDevice>)device {
  JreStrongAssign(&self->device_, device);
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
  JreStrongAssign(&self->remoteDevice_, remoteDevice);
}

- (void)dealloc {
  RELEASE_(sessionController_);
  RELEASE_(device_);
  RELEASE_(remoteDevice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "LListEventSinkSource;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LListEventSinkSource;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, 3, -1 },
    { NULL, "LLeSessionController;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LLeDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(createSource1);
  methods[3].selector = @selector(createSource2);
  methods[4].selector = @selector(testController);
  methods[5].selector = @selector(getSessionController);
  methods[6].selector = @selector(setSessionControllerWithLeSessionController:);
  methods[7].selector = @selector(getDevice);
  methods[8].selector = @selector(setDeviceWithLeDevice:);
  methods[9].selector = @selector(getLE_REMOTE_DEVICE);
  methods[10].selector = @selector(getLE_SERVICE);
  methods[11].selector = @selector(getLE_CHARACTERISTIC);
  methods[12].selector = @selector(getRemoteDevice);
  methods[13].selector = @selector(setRemoteDeviceWithLeRemoteDevice:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sessionController_", "LLeSessionController;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "device_", "LLeDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "LE_REMOTE_DEVICE", "I", .constantValue.asInt = SessionSwitchingTest_LE_REMOTE_DEVICE, 0x12, 10, -1, -1, -1 },
    { "LE_SERVICE", "I", .constantValue.asInt = SessionSwitchingTest_LE_SERVICE, 0x12, 11, -1, -1, -1 },
    { "LE_CHARACTERISTIC", "I", .constantValue.asInt = SessionSwitchingTest_LE_CHARACTERISTIC, 0x12, 12, -1, -1, -1 },
    { "remoteDevice_", "LLeRemoteDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&SessionSwitchingTest__Annotations$0, "LJavaLangInterruptedException;", (void *)&SessionSwitchingTest__Annotations$1, "setSessionController", "LLeSessionController;", "setDevice", "LLeDevice;", "setRemoteDevice", "LLeRemoteDevice;", "LE_REMOTE_DEVICE", "LE_SERVICE", "LE_CHARACTERISTIC" };
  static const J2ObjcClassInfo _SessionSwitchingTest = { "SessionSwitchingTest", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x1, 14, 6, -1, -1, -1, -1, -1 };
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

IOSObjectArray *SessionSwitchingTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *SessionSwitchingTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionSwitchingTest)

@implementation SessionSwitchingTest_1

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                    withJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(self, outer$, capture$0);
  return self;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDeviceFound], @"houtbecke/rs/le/SessionSwitchingTest.java:62 condition failed: assert getDevice().equals(leDeviceFound);");
  JreAssert(leFoundRemoteDevice != nil, @"houtbecke/rs/le/SessionSwitchingTest.java:63 condition failed: assert leFoundRemoteDevice != null;");
  JreAssert(rssi == 123, @"houtbecke/rs/le/SessionSwitchingTest.java:64 condition failed: assert rssi == 123;");
  [this$0_ setRemoteDeviceWithLeRemoteDevice:leFoundRemoteDevice];
  IOSObjectArray_Set(nil_chk(val$foundRemoteDevice_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$foundRemoteDevice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithSessionSwitchingTest:withJavaLangBooleanArray:);
  methods[1].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[2].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LSessionSwitchingTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$foundRemoteDevice_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "leDeviceState", "LLeDevice;LLeDeviceState;", "LSessionSwitchingTest;", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_1 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 3, 2, 4, -1, 5, -1, -1 };
  return &_SessionSwitchingTest_1;
}

@end

void SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest_1 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$foundRemoteDevice_, capture$0);
  NSObject_init(self);
}

SessionSwitchingTest_1 *new_SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_1, initWithSessionSwitchingTest_withJavaLangBooleanArray_, outer$, capture$0)
}

SessionSwitchingTest_1 *create_SessionSwitchingTest_1_initWithSessionSwitchingTest_withJavaLangBooleanArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_1, initWithSessionSwitchingTest_withJavaLangBooleanArray_, outer$, capture$0)
}

@implementation SessionSwitchingTest_2

- (instancetype)initWithSessionSwitchingTest:(SessionSwitchingTest *)outer$
                           withNSObjectArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(self, outer$, capture$0);
  return self;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/SessionSwitchingTest.java:86 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
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
  JreAssert([((id<LeRemoteDevice>) nil_chk(leRemoteDevice)) isEqual:[this$0_ getRemoteDevice]], @"houtbecke/rs/le/SessionSwitchingTest.java:101 condition failed: assert leRemoteDevice.equals(getRemoteDevice());");
  IOSObjectArray_Set(nil_chk(val$service_), 0, (IOSObjectArray_Get(nil_chk(gatts), 0)));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$service_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithSessionSwitchingTest:withNSObjectArray:);
  methods[1].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[4].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[5].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LSessionSwitchingTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$service_", "[LNSObject;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", "leDevicesDisconnected", "leDevicesClosed", "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", "rssiRead", "LLeDevice;LLeRemoteDevice;I", "LSessionSwitchingTest;", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_2 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 6, 2, 8, -1, 9, -1, -1 };
  return &_SessionSwitchingTest_2;
}

@end

void SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest_2 *self, SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$service_, capture$0);
  NSObject_init(self);
}

SessionSwitchingTest_2 *new_SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_2, initWithSessionSwitchingTest_withNSObjectArray_, outer$, capture$0)
}

SessionSwitchingTest_2 *create_SessionSwitchingTest_2_initWithSessionSwitchingTest_withNSObjectArray_(SessionSwitchingTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_2, initWithSessionSwitchingTest_withNSObjectArray_, outer$, capture$0)
}

@implementation SessionSwitchingTest_3

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  SessionSwitchingTest_3_initWithJavaLangBooleanArray_(self, capture$0);
  return self;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic {
  IOSObjectArray_Set(nil_chk(val$valueRead_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
}

- (void)dealloc {
  RELEASE_(val$valueRead_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangBooleanArray:);
  methods[1].selector = @selector(leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:);
  methods[2].selector = @selector(leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$valueRead_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leCharacteristicChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;", "leCharacteristicNotificationChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", "LSessionSwitchingTest;", "testController" };
  static const J2ObjcClassInfo _SessionSwitchingTest_3 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 3, 1, 4, -1, 5, -1, -1 };
  return &_SessionSwitchingTest_3;
}

@end

void SessionSwitchingTest_3_initWithJavaLangBooleanArray_(SessionSwitchingTest_3 *self, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->val$valueRead_, capture$0);
  NSObject_init(self);
}

SessionSwitchingTest_3 *new_SessionSwitchingTest_3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(SessionSwitchingTest_3, initWithJavaLangBooleanArray_, capture$0)
}

SessionSwitchingTest_3 *create_SessionSwitchingTest_3_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(SessionSwitchingTest_3, initWithJavaLangBooleanArray_, capture$0)
}
