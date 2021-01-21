
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
#include "MockerTest.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/UUID.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface MockerTest () {
 @public
  LeSessionController *sessionController_;
  id<LeDevice> device_;
  id<LeRemoteDevice> remoteDevice_;
}

@end

J2OBJC_FIELD_SETTER(MockerTest, sessionController_, LeSessionController *)
J2OBJC_FIELD_SETTER(MockerTest, device_, id<LeDevice>)
J2OBJC_FIELD_SETTER(MockerTest, remoteDevice_, id<LeRemoteDevice>)

inline jint MockerTest_get_LE_REMOTE_DEVICE(void);
#define MockerTest_LE_REMOTE_DEVICE 11
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE, jint)

inline jint MockerTest_get_LE_REMOTE_DEVICE_2(void);
#define MockerTest_LE_REMOTE_DEVICE_2 12
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE_2, jint)

inline jint MockerTest_get_LE_REMOTE_DEVICE_3(void);
#define MockerTest_LE_REMOTE_DEVICE_3 13
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_REMOTE_DEVICE_3, jint)

inline jint MockerTest_get_LE_SERVICE_1_1(void);
#define MockerTest_LE_SERVICE_1_1 101
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_1_1, jint)

inline jint MockerTest_get_LE_SERVICE_1_2(void);
#define MockerTest_LE_SERVICE_1_2 102
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_1_2, jint)

inline jint MockerTest_get_LE_SERVICE_2_1(void);
#define MockerTest_LE_SERVICE_2_1 201
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_SERVICE_2_1, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_1_1(void);
#define MockerTest_LE_CHARACTERISTIC_1_1 1001
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_1_1, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_1_2(void);
#define MockerTest_LE_CHARACTERISTIC_1_2 1002
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_1_2, jint)

inline jint MockerTest_get_LE_CHARACTERISTIC_2_1(void);
#define MockerTest_LE_CHARACTERISTIC_2_1 2001
J2OBJC_STATIC_FIELD_CONSTANT(MockerTest, LE_CHARACTERISTIC_2_1, jint)

__attribute__((unused)) static IOSObjectArray *MockerTest__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *MockerTest__Annotations$1(void);

@interface MockerTest_1 : NSObject < LeDeviceListener > {
 @public
  MockerTest *this$0_;
  IOSIntArray *val$foundRemoteDevices_;
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
                      withIntArray:(IOSIntArray *)capture$0;

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_1)

__attribute__((unused)) static void MockerTest_1_initWithMockerTest_withIntArray_(MockerTest_1 *self, MockerTest *outer$, IOSIntArray *capture$0);

__attribute__((unused)) static MockerTest_1 *new_MockerTest_1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_1 *create_MockerTest_1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0);

@interface MockerTest_2 : NSObject < LeDeviceListener > {
 @public
  IOSObjectArray *val$foundRemoteDevice2_;
}

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0;

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerTest_2)

__attribute__((unused)) static void MockerTest_2_initWithJavaLangBooleanArray_(MockerTest_2 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static MockerTest_2 *new_MockerTest_2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_2 *create_MockerTest_2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0);

@interface MockerTest_3 : NSObject < LeRemoteDeviceListener > {
 @public
  MockerTest *this$0_;
  IOSObjectArray *val$connected_;
  IOSObjectArray *val$discovered_;
  IOSObjectArray *val$service_;
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withJavaLangBooleanArray:(IOSObjectArray *)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
            withLeGattServiceArray:(IOSObjectArray *)capture$2;

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

J2OBJC_EMPTY_STATIC_INIT(MockerTest_3)

__attribute__((unused)) static void MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest_3 *self, MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

__attribute__((unused)) static MockerTest_3 *new_MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_3 *create_MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

@interface MockerTest_4 : NSObject < LeCharacteristicListener > {
 @public
  MockerTest *this$0_;
  id<LeGattCharacteristic> val$characteristic_;
  IOSObjectArray *val$changed_;
  IOSObjectArray *val$changedNotification_;
}

- (instancetype)initWithMockerTest:(MockerTest *)outer$
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

J2OBJC_EMPTY_STATIC_INIT(MockerTest_4)

__attribute__((unused)) static void MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest_4 *self, MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

__attribute__((unused)) static MockerTest_4 *new_MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_4 *create_MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2);

@interface MockerTest_5 : NSObject < LeRemoteDeviceListener > {
 @public
  IOSObjectArray *val$service_;
}

- (instancetype)initWithLeGattServiceArray:(IOSObjectArray *)capture$0;

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
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

J2OBJC_EMPTY_STATIC_INIT(MockerTest_5)

__attribute__((unused)) static void MockerTest_5_initWithLeGattServiceArray_(MockerTest_5 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static MockerTest_5 *new_MockerTest_5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static MockerTest_5 *create_MockerTest_5_initWithLeGattServiceArray_(IOSObjectArray *capture$0);

@implementation MockerTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  MockerTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  JavaLangSystem_setPropertyWithNSString_withNSString_(@"doNotLog", @"true");
}

- (ListEventSinkSource *)createSource {
  ListEventSinkSource *source = create_ListEventSinkSource_init();
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_(source);
  [filler waitForPointWithNSString:@"ready"];
  [filler addEventWithLeEventType:JreLoadEnum(LeEventType, mockCharacteristicChanged) withInt:MockerTest_LE_REMOTE_DEVICE withInt:MockerTest_LE_CHARACTERISTIC_1_2 withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  [filler addDeviceEventWithLeEventType:JreLoadEnum(LeEventType, mockRemoteDeviceFound) withInt:MockerTest_LE_REMOTE_DEVICE_2 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"123", @"" } count:2 type:NSString_class_()]];
  [filler pointReachedWithNSString:@"secondDevice"];
  [filler waitForPointWithNSString:@"done"];
  return source;
}

- (void)testController {
  ListEventSinkSource *events = [self createSource];
  JreStrongAssignAndConsume(&sessionController_, new_LeSessionController_initWithSession_([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk(([((CharacteristicsMockerObject *) nil_chk([((CharacteristicsMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((GattServiceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk(([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk(([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((SessionObject *) nil_chk(((DeviceMockerObject *) nil_chk(([((DeviceMockerObject *) nil_chk([((DeviceMockerObject *) nil_chk([((SessionObject *) nil_chk([((SessionObject *) nil_chk(SessionObject_newSession())) setDefaultSourceWithEventSource:events])) withDeviceMocker])) withFakeDeviceListeners])) hasRemoteDevicesWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ MockerTest_LE_REMOTE_DEVICE_3, MockerTest_LE_REMOTE_DEVICE } count:2]])))->and__)) withRemoteDeviceMockerWithInt:MockerTest_LE_REMOTE_DEVICE])) mocksRemoteDeviceWithNSString:@"0001:0002:0003:0004" withNSString:@"d1234" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray arrayWithInts:(jint[]){ MockerTest_LE_SERVICE_1_1, MockerTest_LE_SERVICE_1_2 } count:2]])))->and__ withRemoteDeviceMockerWithInt:MockerTest_LE_REMOTE_DEVICE_2])) mocksRemoteDeviceWithNSString:@"0005:0006:0007:0008" withNSString:@"d5678" withBoolean:true])) withFakeRemoteDeviceListeners])) withFakeCharacteristicsListeners])) hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:[IOSIntArray arrayWithInts:(jint[]){ MockerTest_LE_SERVICE_2_1 } count:1]])))->and__ withGattServiceMockerWithInt:MockerTest_LE_SERVICE_1_1])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")])) canNotifyWithInt:MockerTest_LE_CHARACTERISTIC_1_2 withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc") withInt:MockerTest_LE_REMOTE_DEVICE withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(true)])) hasCharacteristicWithInt:MockerTest_LE_CHARACTERISTIC_1_1 withJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")]))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_1_1])) mocksCharacteristic])) hasFixedValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 0, 1, 2 } count:3]])))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_1_2])) mocksCharacteristicWithNSString:@"12345678-1234-1234-1234-123456789bbcc"])) hasFixedValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 0, 1, 2 } count:3]])))->and__ withGattCharacteristicsMockerWithInt:MockerTest_LE_CHARACTERISTIC_2_1])) mocksCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789eeee")])) hasValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 0, 1, 2 } count:3]]))) hasValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 3, 4, 5 } count:3]]))) hasFixedValueWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 6, 7, 8 } count:3]])))->and__ withGattServiceMockerWithInt:MockerTest_LE_SERVICE_2_1])) mocksServiceWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789dddd")])) hasCharacteristicWithInt:MockerTest_LE_CHARACTERISTIC_2_1])) end]));
  JreStrongAssignAndConsume(&device_, new_LeDeviceMock_initWithInt_withLeMockController_(EventSinkFiller_DEFAULT_DEVICE_ID, sessionController_));
  [((LeSessionController *) nil_chk(sessionController_)) startDefaultSession];
  OrgJunitAssert_assertTrueWithBoolean_([((LeSessionController *) nil_chk(sessionController_)) waitTillSessionStarted]);
  IOSIntArray *foundRemoteDevices = [IOSIntArray arrayWithLength:1];
  *IOSIntArray_GetRef(foundRemoteDevices, 0) = 0;
  IOSObjectArray *foundRemoteDevice2 = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(foundRemoteDevice2, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeDevice>) nil_chk(device_)) addListenerWithLeDeviceListener:create_MockerTest_1_initWithMockerTest_withIntArray_(self, foundRemoteDevices)];
  [((id<LeDevice>) nil_chk((device_))) addListenerWithLeDeviceListener:create_MockerTest_2_initWithJavaLangBooleanArray_(foundRemoteDevice2)];
  [((id<LeDevice>) nil_chk(device_)) startScanning];
  @synchronized(self) {
    while (IOSIntArray_Get(foundRemoteDevices, 0) < 2) [self java_wait];
  }
  OrgJunitAssert_assertTrueWithNSString_withBoolean_(@"check both listeners are notified", IOSIntArray_Get(foundRemoteDevices, 0) == 2 && [((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(foundRemoteDevice2, 0))) booleanValue]);
  JavaLangThread_sleepWithLong_(100);
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getAddress], @"0001:0002:0003:0004");
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getName], @"d1234");
  IOSObjectArray *connected = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(connected, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *discovered = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(discovered, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *service = [IOSObjectArray arrayWithLength:1 type:LeGattService_class_()];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:create_MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(self, connected, discovered, service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) connect];
  while (![((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(connected, 0))) booleanValue]) @synchronized(self) {
    [self java_wait];
  }
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(connected, 0))) booleanValue]);
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(discovered, 0))) booleanValue]);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaUtilUUID *) nil_chk([((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getUuid])) isEqual:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789aaaa")]);
  id<LeGattCharacteristic> characteristic = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbbb")];
  JreAssert(characteristic != nil, @"houtbecke/rs/le/MockerTest.java:186 condition failed: assert characteristic != null;");
  IOSByteArray *byteArray1 = [((id<LeGattCharacteristic>) nil_chk(characteristic)) getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray1), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 2), 2);
  byteArray1 = [characteristic getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray1), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray1, 2), 2);
  IOSObjectArray *changed = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(changed, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSObjectArray *changedNotification = [IOSObjectArray arrayWithLength:1 type:JavaLangBoolean_class_()];
  IOSObjectArray_Set(changedNotification, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) setCharacteristicListenerWithLeCharacteristicListener:create_MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, characteristic, changed, changedNotification) withJavaUtilUUIDArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc") } count:1 type:JavaUtilUUID_class_()]];
  [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) enableCharacteristicNotificationWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc")];
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"ready"];
  JavaLangThread_sleepWithLong_(1000);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(changedNotification, 0))) booleanValue]);
  OrgJunitAssert_assertTrueWithBoolean_([((JavaLangBoolean *) nil_chk(IOSObjectArray_Get(changed, 0))) booleanValue]);
  [characteristic setValueWithByteArray:[IOSByteArray arrayWithBytes:(jbyte[]){ 3, 4, 5 } count:3]];
  [((LeSessionController *) nil_chk(sessionController_)) waitForPointWithNSString:@"secondDevice"];
  OrgJunitAssert_assertEqualsWithId_withId_([((id<LeRemoteDevice>) nil_chk(remoteDevice_)) getAddress], @"0005:0006:0007:0008");
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) addListenerWithLeRemoteDeviceListener:create_MockerTest_5_initWithLeGattServiceArray_(service)];
  [((id<LeRemoteDevice>) nil_chk(remoteDevice_)) startServicesDiscovery];
  JavaLangThread_sleepWithLong_(100);
  id<LeGattCharacteristic> char21 = [((id<LeGattService>) nil_chk(IOSObjectArray_Get(service, 0))) getCharacteristicWithJavaUtilUUID:JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789eeee")];
  IOSObjectArray_Set(changed, 0, JavaLangBoolean_valueOfWithBoolean_(false));
  IOSByteArray *byteArray2 = [((id<LeGattCharacteristic>) nil_chk(char21)) getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 0);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 1);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 2);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 3);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 4);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 5);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 6);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 7);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 8);
  byteArray2 = [char21 getValue];
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(nil_chk(byteArray2), 0), 6);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 1), 7);
  OrgJunitAssert_assertEqualsWithLong_withLong_(IOSByteArray_Get(byteArray2, 2), 8);
  [((LeSessionController *) nil_chk(sessionController_)) pointReachedWithNSString:@"done"];
  [((LeSessionController *) nil_chk(sessionController_)) waitForFinishedSession];
  OrgJunitAssert_assertFalseWithBoolean_([((ListEventSinkSource *) nil_chk(events)) hasMoreEvent]);
  OrgJunitAssert_assertNullWithId_([((LeSessionController *) nil_chk(sessionController_)) getSessionException]);
}

- (id<LeDevice>)getDevice {
  return device_;
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
    { NULL, "LLeDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeRemoteDevice;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(createSource);
  methods[3].selector = @selector(testController);
  methods[4].selector = @selector(getDevice);
  methods[5].selector = @selector(getRemoteDevice);
  methods[6].selector = @selector(setRemoteDeviceWithLeRemoteDevice:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sessionController_", "LLeSessionController;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "device_", "LLeDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "LE_REMOTE_DEVICE", "I", .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE, 0x12, 6, -1, -1, -1 },
    { "LE_REMOTE_DEVICE_2", "I", .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE_2, 0x12, 7, -1, -1, -1 },
    { "LE_REMOTE_DEVICE_3", "I", .constantValue.asInt = MockerTest_LE_REMOTE_DEVICE_3, 0x12, 8, -1, -1, -1 },
    { "LE_SERVICE_1_1", "I", .constantValue.asInt = MockerTest_LE_SERVICE_1_1, 0x12, 9, -1, -1, -1 },
    { "LE_SERVICE_1_2", "I", .constantValue.asInt = MockerTest_LE_SERVICE_1_2, 0x12, 10, -1, -1, -1 },
    { "LE_SERVICE_2_1", "I", .constantValue.asInt = MockerTest_LE_SERVICE_2_1, 0x12, 11, -1, -1, -1 },
    { "LE_CHARACTERISTIC_1_1", "I", .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_1_1, 0x12, 12, -1, -1, -1 },
    { "LE_CHARACTERISTIC_1_2", "I", .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_1_2, 0x12, 13, -1, -1, -1 },
    { "LE_CHARACTERISTIC_2_1", "I", .constantValue.asInt = MockerTest_LE_CHARACTERISTIC_2_1, 0x12, 14, -1, -1, -1 },
    { "remoteDevice_", "LLeRemoteDevice;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&MockerTest__Annotations$0, "LJavaLangInterruptedException;", (void *)&MockerTest__Annotations$1, "setRemoteDevice", "LLeRemoteDevice;", "LE_REMOTE_DEVICE", "LE_REMOTE_DEVICE_2", "LE_REMOTE_DEVICE_3", "LE_SERVICE_1_1", "LE_SERVICE_1_2", "LE_SERVICE_2_1", "LE_CHARACTERISTIC_1_1", "LE_CHARACTERISTIC_1_2", "LE_CHARACTERISTIC_2_1" };
  static const J2ObjcClassInfo _MockerTest = { "MockerTest", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x1, 7, 12, -1, -1, -1, -1, -1 };
  return &_MockerTest;
}

@end

void MockerTest_init(MockerTest *self) {
  NSObject_init(self);
}

MockerTest *new_MockerTest_init() {
  J2OBJC_NEW_IMPL(MockerTest, init)
}

MockerTest *create_MockerTest_init() {
  J2OBJC_CREATE_IMPL(MockerTest, init)
}

IOSObjectArray *MockerTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *MockerTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerTest)

J2OBJC_NAME_MAPPING(MockerTest, "houtbecke.rs.le", "")

@implementation MockerTest_1

- (instancetype)initWithMockerTest:(MockerTest *)outer$
                      withIntArray:(IOSIntArray *)capture$0 {
  MockerTest_1_initWithMockerTest_withIntArray_(self, outer$, capture$0);
  return self;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  @synchronized(self) {
    @synchronized(this$0_) {
      OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDeviceFound);
      OrgJunitAssert_assertNotNullWithId_(leFoundRemoteDevice);
      OrgJunitAssert_assertEqualsWithLong_withLong_(rssi, 123);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[((id<LeRemoteDevice>) nil_chk(leFoundRemoteDevice)) getAddress]];
      if ([((NSString *) nil_chk([leFoundRemoteDevice getAddress])) isEqual:@"0001:0002:0003:0004"] || [((NSString *) nil_chk([leFoundRemoteDevice getAddress])) isEqual:@"0005:0006:0007:0008"]) [this$0_ setRemoteDeviceWithLeRemoteDevice:leFoundRemoteDevice];
      (*IOSIntArray_GetRef(nil_chk(val$foundRemoteDevices_), 0))++;
      [this$0_ java_notify];
    }
  }
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$foundRemoteDevices_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockerTest:withIntArray:);
  methods[1].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[2].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockerTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$foundRemoteDevices_", "[I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "leDeviceState", "LLeDevice;LLeDeviceState;", "LMockerTest;", "testController" };
  static const J2ObjcClassInfo _MockerTest_1 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 3, 2, 4, -1, 5, -1, -1 };
  return &_MockerTest_1;
}

@end

void MockerTest_1_initWithMockerTest_withIntArray_(MockerTest_1 *self, MockerTest *outer$, IOSIntArray *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$foundRemoteDevices_, capture$0);
  NSObject_init(self);
}

MockerTest_1 *new_MockerTest_1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_1, initWithMockerTest_withIntArray_, outer$, capture$0)
}

MockerTest_1 *create_MockerTest_1_initWithMockerTest_withIntArray_(MockerTest *outer$, IOSIntArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_1, initWithMockerTest_withIntArray_, outer$, capture$0)
}

@implementation MockerTest_2

- (instancetype)initWithJavaLangBooleanArray:(IOSObjectArray *)capture$0 {
  MockerTest_2_initWithJavaLangBooleanArray_(self, capture$0);
  return self;
}

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDeviceFound
               withLeRemoteDevice:(id<LeRemoteDevice>)leFoundRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord {
  IOSObjectArray_Set(nil_chk(val$foundRemoteDevice2_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState {
}

- (void)dealloc {
  RELEASE_(val$foundRemoteDevice2_);
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
  methods[0].selector = @selector(initWithJavaLangBooleanArray:);
  methods[1].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[2].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$foundRemoteDevice2_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "leDeviceState", "LLeDevice;LLeDeviceState;", "LMockerTest;", "testController" };
  static const J2ObjcClassInfo _MockerTest_2 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 3, 1, 4, -1, 5, -1, -1 };
  return &_MockerTest_2;
}

@end

void MockerTest_2_initWithJavaLangBooleanArray_(MockerTest_2 *self, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->val$foundRemoteDevice2_, capture$0);
  NSObject_init(self);
}

MockerTest_2 *new_MockerTest_2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_2, initWithJavaLangBooleanArray_, capture$0)
}

MockerTest_2 *create_MockerTest_2_initWithJavaLangBooleanArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_2, initWithJavaLangBooleanArray_, capture$0)
}

@implementation MockerTest_3

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withJavaLangBooleanArray:(IOSObjectArray *)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
            withLeGattServiceArray:(IOSObjectArray *)capture$2 {
  MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDeviceFoundOn
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDeviceFoundOn);
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getRemoteDevice], leRemoteDevice);
  @synchronized(this$0_) {
    IOSObjectArray_Set(nil_chk(val$connected_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
    [this$0_ java_notifyAll];
  }
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
  IOSObjectArray_Set(nil_chk(val$discovered_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
  OrgJunitAssert_assertEqualsWithId_withId_([this$0_ getDevice], leDevice);
  OrgJunitAssert_assertEqualsWithId_withId_(leRemoteDevice, [this$0_ getRemoteDevice]);
  OrgJunitAssert_assertEqualsWithId_withId_(JreLoadEnum(LeGattStatus, SUCCESS), status);
  OrgJunitAssert_assertEqualsWithLong_withLong_(((IOSObjectArray *) nil_chk(gatts))->size_, 2);
  IOSObjectArray_Set(nil_chk(val$service_), 0, (IOSObjectArray_Get(gatts, 0)));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$connected_);
  RELEASE_(val$discovered_);
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
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithMockerTest:withJavaLangBooleanArray:withJavaLangBooleanArray:withLeGattServiceArray:);
  methods[1].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[4].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[5].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockerTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$connected_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$discovered_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$service_", "[LLeGattService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", "leDevicesDisconnected", "leDevicesClosed", "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", "rssiRead", "LLeDevice;LLeRemoteDevice;I", "LMockerTest;", "testController" };
  static const J2ObjcClassInfo _MockerTest_3 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 6, 4, 8, -1, 9, -1, -1 };
  return &_MockerTest_3;
}

@end

void MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest_3 *self, MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$connected_, capture$0);
  JreStrongAssign(&self->val$discovered_, capture$1);
  JreStrongAssign(&self->val$service_, capture$2);
  NSObject_init(self);
}

MockerTest_3 *new_MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_NEW_IMPL(MockerTest_3, initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_, outer$, capture$0, capture$1, capture$2)
}

MockerTest_3 *create_MockerTest_3_initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_(MockerTest *outer$, IOSObjectArray *capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_CREATE_IMPL(MockerTest_3, initWithMockerTest_withJavaLangBooleanArray_withJavaLangBooleanArray_withLeGattServiceArray_, outer$, capture$0, capture$1, capture$2)
}

@implementation MockerTest_4

- (instancetype)initWithMockerTest:(MockerTest *)outer$
          withLeGattCharacteristic:(id<LeGattCharacteristic>)capture$0
          withJavaLangBooleanArray:(IOSObjectArray *)capture$1
          withJavaLangBooleanArray:(IOSObjectArray *)capture$2 {
  MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)leCharacteristic {
  OrgJunitAssert_assertEqualsWithId_withId_(uuid, JavaUtilUUID_fromStringWithNSString_(@"12345678-1234-1234-1234-123456789bbcc"));
  OrgJunitAssert_assertEqualsWithId_withId_(this$0_->remoteDevice_, leRemoteDevice);
  OrgJunitAssert_assertNotEqualsWithNSString_withId_withId_(@"make sure this is a different characteristic", leCharacteristic, val$characteristic_);
  IOSObjectArray_Set(nil_chk(val$changed_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success {
  IOSObjectArray_Set(nil_chk(val$changedNotification_), 0, JavaLangBoolean_valueOfWithBoolean_(true));
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$characteristic_);
  RELEASE_(val$changed_);
  RELEASE_(val$changedNotification_);
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
  methods[0].selector = @selector(initWithMockerTest:withLeGattCharacteristic:withJavaLangBooleanArray:withJavaLangBooleanArray:);
  methods[1].selector = @selector(leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:);
  methods[2].selector = @selector(leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LMockerTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$characteristic_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$changed_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$changedNotification_", "[LJavaLangBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leCharacteristicChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;", "leCharacteristicNotificationChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z", "LMockerTest;", "testController" };
  static const J2ObjcClassInfo _MockerTest_4 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 3, 4, 4, -1, 5, -1, -1 };
  return &_MockerTest_4;
}

@end

void MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest_4 *self, MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$characteristic_, capture$0);
  JreStrongAssign(&self->val$changed_, capture$1);
  JreStrongAssign(&self->val$changedNotification_, capture$2);
  NSObject_init(self);
}

MockerTest_4 *new_MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_NEW_IMPL(MockerTest_4, initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

MockerTest_4 *create_MockerTest_4_initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_(MockerTest *outer$, id<LeGattCharacteristic> capture$0, IOSObjectArray *capture$1, IOSObjectArray *capture$2) {
  J2OBJC_CREATE_IMPL(MockerTest_4, initWithMockerTest_withLeGattCharacteristic_withJavaLangBooleanArray_withJavaLangBooleanArray_, outer$, capture$0, capture$1, capture$2)
}

@implementation MockerTest_5

- (instancetype)initWithLeGattServiceArray:(IOSObjectArray *)capture$0 {
  MockerTest_5_initWithLeGattServiceArray_(self, capture$0);
  return self;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
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
  IOSObjectArray_Set(nil_chk(val$service_), 0, IOSObjectArray_Get(nil_chk(gatts), 0));
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
}

- (void)dealloc {
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
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeGattServiceArray:);
  methods[1].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[4].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[5].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$service_", "[LLeGattService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", "leDevicesDisconnected", "leDevicesClosed", "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", "rssiRead", "LLeDevice;LLeRemoteDevice;I", "LMockerTest;", "testController" };
  static const J2ObjcClassInfo _MockerTest_5 = { "", "houtbecke.rs.le", ptrTable, methods, fields, 7, 0x8018, 6, 1, 8, -1, 9, -1, -1 };
  return &_MockerTest_5;
}

@end

void MockerTest_5_initWithLeGattServiceArray_(MockerTest_5 *self, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->val$service_, capture$0);
  NSObject_init(self);
}

MockerTest_5 *new_MockerTest_5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(MockerTest_5, initWithLeGattServiceArray_, capture$0)
}

MockerTest_5 *create_MockerTest_5_initWithLeGattServiceArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(MockerTest_5, initWithLeGattServiceArray_, capture$0)
}
