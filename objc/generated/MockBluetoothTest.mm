
#include "Event.h"
#include "EventSink.h"
#include "EventSinkFiller.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "InterceptingLeDevice.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
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
#include "LeSessionInterceptor.h"
#include "ListEventSinkSource.h"
#include "MockBluetoothTest.h"
#include "SessionObject.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "java/util/UUID.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface MockBluetoothTest () {
 @public
  LeSessionController *sessionController_;
  id<LeDevice> device_;
  id<LeRemoteDevice> remoteDevice_;
}

@end

J2OBJC_FIELD_SETTER(MockBluetoothTest, sessionController_, LeSessionController *)
J2OBJC_FIELD_SETTER(MockBluetoothTest, device_, id<LeDevice>)
J2OBJC_FIELD_SETTER(MockBluetoothTest, remoteDevice_, id<LeRemoteDevice>)

inline jint MockBluetoothTest_get_LE_DEVICE(void);
#define MockBluetoothTest_LE_DEVICE 0
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_DEVICE, jint)

inline jint MockBluetoothTest_get_LE_DEVICE_LISTENER(void);
#define MockBluetoothTest_LE_DEVICE_LISTENER 1
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_DEVICE_LISTENER, jint)

inline jint MockBluetoothTest_get_LE_REMOTE_DEVICE(void);
#define MockBluetoothTest_LE_REMOTE_DEVICE 2
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_REMOTE_DEVICE, jint)

inline jint MockBluetoothTest_get_LE_REMOTE_DEVICE_LISTENER(void);
#define MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER 3
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_REMOTE_DEVICE_LISTENER, jint)

inline jint MockBluetoothTest_get_LE_SERVICE_1(void);
#define MockBluetoothTest_LE_SERVICE_1 4
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_SERVICE_1, jint)

inline jint MockBluetoothTest_get_LE_CHARACTERISTIC_1_1(void);
#define MockBluetoothTest_LE_CHARACTERISTIC_1_1 5
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_CHARACTERISTIC_1_1, jint)

inline jint MockBluetoothTest_get_LE_CHARACTERISTIC_1_2(void);
#define MockBluetoothTest_LE_CHARACTERISTIC_1_2 6
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_CHARACTERISTIC_1_2, jint)

inline jint MockBluetoothTest_get_LE_CHARACTERISTIC_LISTENER(void);
#define MockBluetoothTest_LE_CHARACTERISTIC_LISTENER 7
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_CHARACTERISTIC_LISTENER, jint)

inline jint MockBluetoothTest_get_LE_CHARACTERISTIC_WRITE_LISTENER(void);
#define MockBluetoothTest_LE_CHARACTERISTIC_WRITE_LISTENER 8
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, LE_CHARACTERISTIC_WRITE_LISTENER, jint)

inline jint MockBluetoothTest_get_RSSI(void);
#define MockBluetoothTest_RSSI 9
J2OBJC_STATIC_FIELD_CONSTANT(MockBluetoothTest, RSSI, jint)

__attribute__((unused)) static IOSObjectArray *MockBluetoothTest__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *MockBluetoothTest__Annotations$1(void);

@interface MockBluetoothTest_1 : NSObject < LeDeviceListener > {
 @public
  MockBluetoothTest *this$0_;
  IOSObjectArray *val$foundRemoteDevice_;
}

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$0;

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

@end

J2OBJC_EMPTY_STATIC_INIT(MockBluetoothTest_1)

__attribute__((unused)) static void MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest_1 *self, MockBluetoothTest *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static MockBluetoothTest_1 *new_MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockBluetoothTest_1 *create_MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0);

@interface MockBluetoothTest_2 : NSObject < LeRemoteDeviceListener > {
 @public
  MockBluetoothTest *this$0_;
  IOSObjectArray *val$connected_;
  IOSObjectArray *val$disconnected_;
  IOSObjectArray *val$closed_;
  IOSObjectArray *val$discovered_;
  IOSObjectArray *val$service_;
  IOSObjectArray *val$rssiRead_;
  IOSIntArray *val$rssiValue_;
}

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$2
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$3
                   withLeGattServiceArray:(IOSObjectArray *)capture$4
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$5
                             withIntArray:(IOSIntArray *)capture$6;

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

J2OBJC_EMPTY_STATIC_INIT(MockBluetoothTest_2)

__attribute__((unused)) static void MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest_2 *self, MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6);

__attribute__((unused)) static MockBluetoothTest_2 *new_MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockBluetoothTest_2 *create_MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6);

@interface MockBluetoothTest_3 : NSObject < LeCharacteristicListener > {
 @public
  MockBluetoothTest *this$0_;
  id<LeGattCharacteristic> val$characteristic_;
  IOSObjectArray *val$changed_;
  IOSObjectArray *val$notificationChanged_;
}

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$2;

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success;

@end

J2OBJC_EMPTY_STATIC_INIT(MockBluetoothTest_3)

__attribute__((unused)) static void MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest_3 *self, MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

__attribute__((unused)) static MockBluetoothTest_3 *new_MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockBluetoothTest_3 *create_MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

@interface MockBluetoothTest_4 : NSObject < LeCharacteristicWriteListener > {
 @public
  MockBluetoothTest *this$0_;
  id<LeGattCharacteristic> val$characteristic_;
  IOSObjectArray *val$changed_;
}

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1;

- (void)leCharacteristicWrittenWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic
                                    withBoolean:(jboolean)success;

@end

J2OBJC_EMPTY_STATIC_INIT(MockBluetoothTest_4)

__attribute__((unused)) static void MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest_4 *self, MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1);

__attribute__((unused)) static MockBluetoothTest_4 *new_MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockBluetoothTest_4 *create_MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1);

@implementation MockBluetoothTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  MockBluetoothTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (ListEventSinkSource *)createSource {
  ListEventSinkSource *source = create_ListEventSinkSource_init();
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_(source);
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, deviceAddListener) withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_DEVICE_LISTENER withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withInt:MockBluetoothTest_LE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceFound) withInt:MockBluetoothTest_LE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"123", @"" } count:2 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetAddress) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"0001:0002:0003:0004" } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetName) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"test device" } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceAddListener) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnect) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnected) withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceReadRssi) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRssiRead) withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", MockBluetoothTest_RSSI) } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceServicesDiscovered) withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((LeGattStatus *) nil_chk(JreLoadEnum(LeGattStatus, SUCCESS))) description], NSString_java_valueOfInt_(MockBluetoothTest_LE_SERVICE_1) } count:2 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetUUID) withInt:MockBluetoothTest_LE_SERVICE_1 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa"))) description] } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withInt:MockBluetoothTest_LE_SERVICE_1 withInt:MockBluetoothTest_LE_CHARACTERISTIC_1_1 withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withInt:MockBluetoothTest_LE_SERVICE_1 withInt:MockBluetoothTest_LE_CHARACTERISTIC_1_2 withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetValue) withInt:MockBluetoothTest_LE_CHARACTERISTIC_1_1 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"0,1,2" } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicListener) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ NSString_java_valueOfInt_(MockBluetoothTest_LE_CHARACTERISTIC_LISTENER), [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description] } count:2 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withInt:MockBluetoothTest_LE_SERVICE_1 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description], @"true" } count:2 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, characteristicNotificationChanged) withInt:MockBluetoothTest_LE_CHARACTERISTIC_LISTENER withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description], NSString_java_valueOfInt_(MockBluetoothTest_LE_REMOTE_DEVICE), NSString_java_valueOfInt_(MockBluetoothTest_LE_CHARACTERISTIC_1_2), @"true" } count:4 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, characteristicChanged) withInt:MockBluetoothTest_LE_CHARACTERISTIC_LISTENER withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description], NSString_java_valueOfInt_(MockBluetoothTest_LE_REMOTE_DEVICE), NSString_java_valueOfInt_(MockBluetoothTest_LE_CHARACTERISTIC_1_2) } count:3 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ NSString_java_valueOfInt_(MockBluetoothTest_LE_CHARACTERISTIC_WRITE_LISTENER), [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description] } count:2 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withInt:MockBluetoothTest_LE_CHARACTERISTIC_1_2 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"3,4,5" } count:1 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, characteristicWritten) withInt:MockBluetoothTest_LE_CHARACTERISTIC_WRITE_LISTENER withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc"))) description], NSString_java_valueOfInt_(MockBluetoothTest_LE_REMOTE_DEVICE), NSString_java_valueOfInt_(MockBluetoothTest_LE_CHARACTERISTIC_1_2), NSString_java_valueOfBool_(true) } count:4 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnect) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnected) withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClose) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClosed) withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withInt:MockBluetoothTest_LE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRemoveListener) withInt:MockBluetoothTest_LE_REMOTE_DEVICE withInt:MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  return source;
}

- (void)testController {
  ListEventSinkSource *events = [self createSource];
  JreStrongAssignAndConsume(&sessionController_, new_LeSessionController_initWithSession_withBoolean_([((SessionObject *) nil_chk(SessionObject_newSession())) setDefaultSourceWithEventSource:events], true));
  id<EventSink> sink = create_ListEventSinkSource_init();
  LeSessionInterceptor *sessionInterceptor = create_LeSessionInterceptor_initWithEventSink_(sink);
  JreStrongAssignAndConsume(&device_, new_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(create_LeDeviceMock_initWithInt_withLeMockController_(EventSinkFiller_DEFAULT_DEVICE_ID, sessionController_), sessionInterceptor));
  [((LeSessionController *) nil_chk(sessionController_)) startDefaultSession];
  OrgJunitAssert_assertTrueWithBoolean_([((LeSessionController *) nil_chk(sessionController_)) waitTillSessionStarted]);
  IOSObjectArray *foundRemoteDevice = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  [((InterceptingLeDevice *) nil_chk(((InterceptingLeDevice *) cast_chk(device_, [InterceptingLeDevice class])))) addListenerWithLeDeviceListener:create_MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(self, foundRemoteDevice)];
  [((InterceptingLeDevice *) nil_chk(((InterceptingLeDevice *) cast_chk(device_, [InterceptingLeDevice class])))) startScanning];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(foundRemoteDevice, 0), @"houtbecke/rs/le/MockBluetoothTest.java:128 condition failed: assert foundRemoteDevice[0];");
  JreAssert([((NSString *) nil_chk([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getAddress])) isEqual:@"0001:0002:0003:0004"], @"houtbecke/rs/le/MockBluetoothTest.java:130 condition failed: assert remoteDevice.getAddress().equals(\"0001:0002:0003:0004\");");
  JreAssert([((NSString *) nil_chk([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getName])) isEqual:@"test device"], @"houtbecke/rs/le/MockBluetoothTest.java:131 condition failed: assert remoteDevice.getName().equals(\"test device\");");
  IOSObjectArray *connected = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSObjectArray *disconnected = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSObjectArray *closed = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSObjectArray *discovered = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSObjectArray *rssiRead = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSIntArray *rssiValue = [IOSIntArray arrayWithInts:(jint[]){ 0 } count:1];
  IOSObjectArray *service = [IOSObjectArray arrayWithObjects:(id[]){ nil } count:1 type:LeGattService_class_()];
  id<LeRemoteDeviceListener> remoteDeviceListener = create_MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(self, connected, disconnected, closed, discovered, service, rssiRead, rssiValue);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:remoteDeviceListener];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) connect];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(connected, 0), @"houtbecke/rs/le/MockBluetoothTest.java:189 condition failed: assert connected[0];");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) readRssi];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(rssiRead, 0), @"houtbecke/rs/le/MockBluetoothTest.java:193 condition failed: assert rssiRead[0];");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(discovered, 0), @"houtbecke/rs/le/MockBluetoothTest.java:197 condition failed: assert discovered[0];");
  [((JavaUtilUUID *) nil_chk([((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getUuid])) isEqual:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")];
  id<LeGattCharacteristic> characteristic = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")];
  JreAssert(characteristic != nil, @"houtbecke/rs/le/MockBluetoothTest.java:202 condition failed: assert characteristic != null;");
  id<LeGattCharacteristic> characteristic2 = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789eeee")];
  JreAssert(characteristic2 != nil, @"houtbecke/rs/le/MockBluetoothTest.java:205 condition failed: assert characteristic2 != null;");
  IOSByteArray *byteArray1 = [((id<LeGattCharacteristic>) nil_chk(characteristic)) getValue];
  JreAssert(IOSByteArray_Get(nil_chk(byteArray1), 0) == 0, @"houtbecke/rs/le/MockBluetoothTest.java:208 condition failed: assert byteArray1[0] == 0;");
  JreAssert(IOSByteArray_Get(byteArray1, 1) == 1, @"houtbecke/rs/le/MockBluetoothTest.java:209 condition failed: assert byteArray1[1] == 1;");
  JreAssert(IOSByteArray_Get(byteArray1, 2) == 2, @"houtbecke/rs/le/MockBluetoothTest.java:210 condition failed: assert byteArray1[2] == 2;");
  IOSObjectArray *changed = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  IOSObjectArray *notificationChanged = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:JavaLangBoolean_class_()];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:create_MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, characteristic, changed, notificationChanged) withJavaUtilUUIDArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc") } count:1 type:JavaUtilUUID_class_()]];
  JavaLangThread_sleepWithLong_(300);
  [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) enableCharacteristicNotificationWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc")];
  JavaLangThread_sleepWithLong_(300);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(notificationChanged, 0))) booleanValue]);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(changed, 0))) booleanValue]);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicWriteListenerWithLeCharacteristicWriteListener:create_MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(self, characteristic, changed) withJavaUtilUUIDArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc") } count:1 type:JavaUtilUUID_class_()]];
  IOSObjectArray_Set(changed, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeGattCharacteristic>) nil_chk(characteristic2)) setValueWithByteArray:[IOSByteArray arrayWithBytes:(jbyte[]){ 3, 4, 5 } count:3]];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(changed, 0), @"houtbecke/rs/le/MockBluetoothTest.java:253 condition failed: assert changed[0];");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) disconnect];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(disconnected, 0), @"houtbecke/rs/le/MockBluetoothTest.java:257 condition failed: assert disconnected[0];");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) close];
  JavaLangThread_sleepWithLong_(100);
  JreAssert(IOSObjectArray_Get(closed, 0), @"houtbecke/rs/le/MockBluetoothTest.java:263 condition failed: assert closed[0];");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) removeListenerWithLeRemoteDeviceListener:remoteDeviceListener];
  JreAssert(![((ListEventSinkSource *) nil_chk(events)) hasMoreEvent], @"houtbecke/rs/le/MockBluetoothTest.java:268 condition failed: assert !events.hasMoreEvent();");
  JreAssert([((LeSessionController *) nil_chk(sessionController_)) getSessionException] == nil, @"houtbecke/rs/le/MockBluetoothTest.java:270 condition failed: assert sessionController.getSessionException() == null;");
  ListEventSinkSource *source = [self createSource];
  id<JavaUtilSet> processedEvents = create_JavaUtilHashSet_init();
  while ([((ListEventSinkSource *) nil_chk(source)) hasMoreEvent]) {
    [processedEvents addWithId:[source nextEvent]];
  }
  ListEventSinkSource *sinkList = (ListEventSinkSource *) cast_chk(sink, [ListEventSinkSource class]);
  while ([sinkList hasMoreEvent]) {
    [processedEvents removeWithId:[sinkList nextEvent]];
  }
  OrgJunitAssert_assertTrueWithBoolean_([processedEvents isEmpty]);
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

- (jint)getLE_DEVICE {
  return MockBluetoothTest_LE_DEVICE;
}

- (jint)getLE_DEVICE_LISTENER {
  return MockBluetoothTest_LE_DEVICE_LISTENER;
}

- (jint)getLE_REMOTE_DEVICE {
  return MockBluetoothTest_LE_REMOTE_DEVICE;
}

- (jint)getLE_REMOTE_DEVICE_LISTENER {
  return MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER;
}

- (jint)getLE_SERVICE_1 {
  return MockBluetoothTest_LE_SERVICE_1;
}

- (jint)getLE_CHARACTERISTIC_1_1 {
  return MockBluetoothTest_LE_CHARACTERISTIC_1_1;
}

- (jint)getLE_CHARACTERISTIC_1_2 {
  return MockBluetoothTest_LE_CHARACTERISTIC_1_2;
}

- (jint)getLE_CHARACTERISTIC_LISTENER {
  return MockBluetoothTest_LE_CHARACTERISTIC_LISTENER;
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
    { NULL, "V", 0x1, -1, -1, 2, -1, 3, -1 },
    { NULL, "LLeSessionController;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LLeDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(createSource);
  methods[3].selector = @selector(testController);
  methods[4].selector = @selector(getSessionController);
  methods[5].selector = @selector(setSessionControllerWithLeSessionController:);
  methods[6].selector = @selector(getDevice);
  methods[7].selector = @selector(setDeviceWithLeDevice:);
  methods[8].selector = @selector(getLE_DEVICE);
  methods[9].selector = @selector(getLE_DEVICE_LISTENER);
  methods[10].selector = @selector(getLE_REMOTE_DEVICE);
  methods[11].selector = @selector(getLE_REMOTE_DEVICE_LISTENER);
  methods[12].selector = @selector(getLE_SERVICE_1);
  methods[13].selector = @selector(getLE_CHARACTERISTIC_1_1);
  methods[14].selector = @selector(getLE_CHARACTERISTIC_1_2);
  methods[15].selector = @selector(getLE_CHARACTERISTIC_LISTENER);
  methods[16].selector = @selector(getRemoteDevice);
  methods[17].selector = @selector(setRemoteDeviceWithLeRemoteDevice:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sessionController_", "LLeSessionController;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "device_", "LLeDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "LE_DEVICE", "I", .constantValue.asInt = MockBluetoothTest_LE_DEVICE, 0x12, 10, -1, -1, -1 },
    { "LE_DEVICE_LISTENER", "I", .constantValue.asInt = MockBluetoothTest_LE_DEVICE_LISTENER, 0x12, 11, -1, -1, -1 },
    { "LE_REMOTE_DEVICE", "I", .constantValue.asInt = MockBluetoothTest_LE_REMOTE_DEVICE, 0x12, 12, -1, -1, -1 },
    { "LE_REMOTE_DEVICE_LISTENER", "I", .constantValue.asInt = MockBluetoothTest_LE_REMOTE_DEVICE_LISTENER, 0x12, 13, -1, -1, -1 },
    { "LE_SERVICE_1", "I", .constantValue.asInt = MockBluetoothTest_LE_SERVICE_1, 0x12, 14, -1, -1, -1 },
    { "LE_CHARACTERISTIC_1_1", "I", .constantValue.asInt = MockBluetoothTest_LE_CHARACTERISTIC_1_1, 0x12, 15, -1, -1, -1 },
    { "LE_CHARACTERISTIC_1_2", "I", .constantValue.asInt = MockBluetoothTest_LE_CHARACTERISTIC_1_2, 0x12, 16, -1, -1, -1 },
    { "LE_CHARACTERISTIC_LISTENER", "I", .constantValue.asInt = MockBluetoothTest_LE_CHARACTERISTIC_LISTENER, 0x12, 17, -1, -1, -1 },
    { "LE_CHARACTERISTIC_WRITE_LISTENER", "I", .constantValue.asInt = MockBluetoothTest_LE_CHARACTERISTIC_WRITE_LISTENER, 0x12, 18, -1, -1, -1 },
    { "RSSI", "I", .constantValue.asInt = MockBluetoothTest_RSSI, 0x12, 19, -1, -1, -1 },
    { "remoteDevice_", "LLeRemoteDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&MockBluetoothTest__Annotations$0, "LJavaLangInterruptedException;", (void *)&MockBluetoothTest__Annotations$1, "setSessionController", "LLeSessionController;", "setDevice", "LLeDevice;", "setRemoteDevice", "LLeRemoteDevice;", "LE_DEVICE", "LE_DEVICE_LISTENER", "LE_REMOTE_DEVICE", "LE_REMOTE_DEVICE_LISTENER", "LE_SERVICE_1", "LE_CHARACTERISTIC_1_1", "LE_CHARACTERISTIC_1_2", "LE_CHARACTERISTIC_LISTENER", "LE_CHARACTERISTIC_WRITE_LISTENER", "RSSI" };
  static const J2ObjcClassInfo _MockBluetoothTest = { "MockBluetoothTest", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x1, 18, 13, -1, -1, -1, -1, -1 };
  return &_MockBluetoothTest;
}

@end

void MockBluetoothTest_init(MockBluetoothTest *self) {
  NSObject_init(self);
}

MockBluetoothTest *new_MockBluetoothTest_init() {
  J2OBJC_NEW_IMPL(MockBluetoothTest, init)
}

MockBluetoothTest *create_MockBluetoothTest_init() {
  J2OBJC_CREATE_IMPL(MockBluetoothTest, init)
}

IOSObjectArray *MockBluetoothTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *MockBluetoothTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockBluetoothTest)

J2OBJC_NAME_MAPPING(MockBluetoothTest, "houtbecke.rs.le", "")

@implementation MockBluetoothTest_1

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(self, outer$, capture$0);
  return self;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDeviceFound], @"houtbecke/rs/le/MockBluetoothTest.java:111 condition failed: assert getDevice().equals(leDeviceFound);");
  JreAssert(leFoundRemoteDevice != nil, @"houtbecke/rs/le/MockBluetoothTest.java:112 condition failed: assert leFoundRemoteDevice != null;");
  JreAssert(rssi == 123, @"houtbecke/rs/le/MockBluetoothTest.java:113 condition failed: assert rssi == 123;");
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
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockBluetoothTest:withJavaLangBooleanArray:);
  methods[1].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[2].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockBluetoothTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$foundRemoteDevice_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "leDeviceState", "LLeDevice;LLeDeviceState;", "LMockBluetoothTest;", "testController" };
  static const J2ObjcClassInfo _MockBluetoothTest_1 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8000, 3, 2, 4, -1, 5, -1, -1 };
  return &_MockBluetoothTest_1;
}

@end

void MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest_1 *self, MockBluetoothTest *outer$, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$foundRemoteDevice_, capture$0);
  NSObject_init(self);
}

MockBluetoothTest_1 *new_MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(MockBluetoothTest_1, initWithMockBluetoothTest_withJavaLangBooleanArray_, outer$, capture$0)
}

MockBluetoothTest_1 *create_MockBluetoothTest_1_initWithMockBluetoothTest_withJavaLangBooleanArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockBluetoothTest_1, initWithMockBluetoothTest_withJavaLangBooleanArray_, outer$, capture$0)
}

@implementation MockBluetoothTest_2

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$2
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$3
                   withLeGattServiceArray:(IOSObjectArray *)capture$4
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$5
                             withIntArray:(IOSIntArray *)capture$6 {
  MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(self, outer$, capture$0, capture$1, capture$2, capture$3, capture$4, capture$5, capture$6);
  return self;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDeviceFoundOn], @"houtbecke/rs/le/MockBluetoothTest.java:147 condition failed: assert getDevice().equals(leDeviceFoundOn);");
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/MockBluetoothTest.java:148 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
  IOSObjectArray_Set(nil_chk(val$connected_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDevice], @"houtbecke/rs/le/MockBluetoothTest.java:154 condition failed: assert getDevice().equals(leDevice);");
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/MockBluetoothTest.java:155 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
  IOSObjectArray_Set(nil_chk(val$disconnected_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDevice], @"houtbecke/rs/le/MockBluetoothTest.java:161 condition failed: assert getDevice().equals(leDevice);");
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/MockBluetoothTest.java:162 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
  IOSObjectArray_Set(nil_chk(val$closed_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts {
  IOSObjectArray_Set(nil_chk(val$discovered_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDevice], @"houtbecke/rs/le/MockBluetoothTest.java:169 condition failed: assert getDevice().equals(leDevice);");
  JreAssert([((id<LeRemoteDevice>) nil_chk(leRemoteDevice)) isEqual:[this$0_ getRemoteDevice]], @"houtbecke/rs/le/MockBluetoothTest.java:170 condition failed: assert leRemoteDevice.equals(getRemoteDevice());");
  JreAssert([((LeGattStatus *) nil_chk(JreLoadEnum(LeGattStatus, SUCCESS))) isEqual:status], @"houtbecke/rs/le/MockBluetoothTest.java:171 condition failed: assert LeGattStatus.SUCCESS.equals(status);");
  JreAssert(((IOSObjectArray *) nil_chk(gatts))->size_ == 1, @"houtbecke/rs/le/MockBluetoothTest.java:172 condition failed: assert gatts.length == 1;");
  IOSObjectArray_Set(nil_chk(val$service_), 0, IOSObjectArray_Get(gatts, 0));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
  JreAssert([((id<LeDevice>) nil_chk([this$0_ getDevice])) isEqual:leDevice], @"houtbecke/rs/le/MockBluetoothTest.java:178 condition failed: assert getDevice().equals(leDevice);");
  JreAssert([((id<LeRemoteDevice>) nil_chk(leRemoteDevice)) isEqual:[this$0_ getRemoteDevice]], @"houtbecke/rs/le/MockBluetoothTest.java:179 condition failed: assert leRemoteDevice.equals(getRemoteDevice());");
  JreAssert(MockBluetoothTest_RSSI == rssi, @"houtbecke/rs/le/MockBluetoothTest.java:180 condition failed: assert (RSSI == rssi);");
  IOSObjectArray_Set(nil_chk(val$rssiRead_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
  *IOSIntArray_GetRef(nil_chk(val$rssiValue_), 0) = rssi;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$connected_);
  RELEASE_(val$disconnected_);
  RELEASE_(val$closed_);
  RELEASE_(val$discovered_);
  RELEASE_(val$service_);
  RELEASE_(val$rssiRead_);
  RELEASE_(val$rssiValue_);
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
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockBluetoothTest:withJavaLangBooleanArray:withJavaLangBooleanArray:withJavaLangBooleanArray:withJavaLangBooleanArray:withLeGattServiceArray:withJavaLangBooleanArray:withIntArray:);
  methods[1].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[4].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[5].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockBluetoothTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$connected_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$disconnected_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$closed_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$discovered_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$service_", "[LLeGattService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$rssiRead_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$rssiValue_", "[I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", "leDevicesDisconnected", "leDevicesClosed", "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", "rssiRead", "LLeDevice;LLeRemoteDevice;I", "LMockBluetoothTest;", "testController" };
  static const J2ObjcClassInfo _MockBluetoothTest_2 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8000, 6, 8, 8, -1, 9, -1, -1 };
  return &_MockBluetoothTest_2;
}

@end

void MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest_2 *self, MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$connected_, capture$0);
  JreStrongAssign(&self->val$disconnected_, capture$1);
  JreStrongAssign(&self->val$closed_, capture$2);
  JreStrongAssign(&self->val$discovered_, capture$3);
  JreStrongAssign(&self->val$service_, capture$4);
  JreStrongAssign(&self->val$rssiRead_, capture$5);
  JreStrongAssign(&self->val$rssiValue_, capture$6);
  NSObject_init(self);
}

MockBluetoothTest_2 *new_MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6) {
  J2OBJC_NEW_IMPL(MockBluetoothTest_2, initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_, outer$, capture$0, capture$1, capture$2, capture$3, capture$4, capture$5, capture$6)
}

MockBluetoothTest_2 *create_MockBluetoothTest_2_initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_(MockBluetoothTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSObjectArray *capture$4, IOSObjectArray *capture$5, IOSIntArray *capture$6) {
  J2OBJC_CREATE_IMPL(MockBluetoothTest_2, initWithMockBluetoothTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_withJavaLangBooleanArray_withIntArray_, outer$, capture$0, capture$1, capture$2, capture$3, capture$4, capture$5, capture$6)
}

@implementation MockBluetoothTest_3

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$2 {
  MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic {
  JreAssert([((JavaUtilUUID *) nil_chk(uuid)) isEqual:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc")], @"houtbecke/rs/le/MockBluetoothTest.java:217 condition failed: assert uuid.equals(UUID.fromString(\"12345678-1234-1234-1234-123456789cccc\"));");
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/MockBluetoothTest.java:218 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
  JreAssert(![((id<LeGattCharacteristic>) nil_chk(leCharacteristic)) isEqual:val$characteristic_], @"make sure this is a different characteristic");
  IOSObjectArray_Set(nil_chk(val$changed_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
  IOSObjectArray_Set(nil_chk(val$notificationChanged_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$characteristic_);
  RELEASE_(val$changed_);
  RELEASE_(val$notificationChanged_);
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
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockBluetoothTest:withLeGattCharacteristic:withJavaLangBooleanArray:withJavaLangBooleanArray:);
  methods[1].selector = @selector(leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:);
  methods[2].selector = @selector(leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockBluetoothTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$characteristic_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$changed_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$notificationChanged_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leCharacteristicChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;", "leCharacteristicNotificationChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", "LMockBluetoothTest;", "testController" };
  static const J2ObjcClassInfo _MockBluetoothTest_3 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8000, 3, 4, 4, -1, 5, -1, -1 };
  return &_MockBluetoothTest_3;
}

@end

void MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest_3 *self, MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$characteristic_, capture$0);
  JreStrongAssign(&self->val$changed_, capture$1);
  JreStrongAssign(&self->val$notificationChanged_, capture$2);
  NSObject_init(self);
}

MockBluetoothTest_3 *new_MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_NEW_IMPL(MockBluetoothTest_3, initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

MockBluetoothTest_3 *create_MockBluetoothTest_3_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_CREATE_IMPL(MockBluetoothTest_3, initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

@implementation MockBluetoothTest_4

- (instancetype)initWithMockBluetoothTest:(MockBluetoothTest *)outer$
                 withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
                 withJavaLangBooleanArray:(IOSObjectArray *)capture$1 {
  MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)leCharacteristicWrittenWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic
                                    withBoolean:(jboolean)success {
  JreAssert([((JavaUtilUUID *) nil_chk(uuid)) isEqual:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789cccc")], @"houtbecke/rs/le/MockBluetoothTest.java:241 condition failed: assert uuid.equals(UUID.fromString(\"12345678-1234-1234-1234-123456789cccc\"));");
  JreAssert([((id<LeRemoteDevice>) nil_chk([this$0_ getRemoteDevice])) isEqual:leRemoteDevice], @"houtbecke/rs/le/MockBluetoothTest.java:242 condition failed: assert getRemoteDevice().equals(leRemoteDevice);");
  JreAssert(![((id<LeGattCharacteristic>) nil_chk(leCharacteristic)) isEqual:val$characteristic_], @"make sure this is a different characteristic");
  IOSObjectArray_Set(nil_chk(val$changed_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$characteristic_);
  RELEASE_(val$changed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockBluetoothTest:withLeGattCharacteristic:withJavaLangBooleanArray:);
  methods[1].selector = @selector(leCharacteristicWrittenWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockBluetoothTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$characteristic_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$changed_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leCharacteristicWritten", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", "LMockBluetoothTest;", "testController" };
  static const J2ObjcClassInfo _MockBluetoothTest_4 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8000, 2, 3, 2, -1, 3, -1, -1 };
  return &_MockBluetoothTest_4;
}

@end

void MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest_4 *self, MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$characteristic_, capture$0);
  JreStrongAssign(&self->val$changed_, capture$1);
  NSObject_init(self);
}

MockBluetoothTest_4 *new_MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1) {
  J2OBJC_NEW_IMPL(MockBluetoothTest_4, initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_, outer$, capture$0, capture$1)
}

MockBluetoothTest_4 *create_MockBluetoothTest_4_initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_(MockBluetoothTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1) {
  J2OBJC_CREATE_IMPL(MockBluetoothTest_4, initWithMockBluetoothTest_withLeGattCharacteristic_withJavaLangBooleanArray_, outer$, capture$0, capture$1)
}
