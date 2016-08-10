
#include "DeviceMockerObject.h"
#include "Event.h"
#include "EventSinkFiller.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "LeUtil.h"
#include "MockedResponseObject.h"
#include "MockerObject.h"
#include "SessionObject.h"

@implementation DeviceMockerObject

- (instancetype)initWithSessionObject:(SessionObject *)sessionObject
                              withInt:(jint)sessionSource {
  DeviceMockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
  return self;
}

- (DeviceMockerObject *)withFakeDeviceListeners {
  mockDeviceListeners_ = true;
  return self;
}

- (DeviceMockerObject *)hasRemoteDevicesWithIntArray:(IOSIntArray *)remoteDevices {
  return [self hasRemoteDevicesWithInt:123 withByteArray:[IOSByteArray newArrayWithBytes:(jbyte[]){  } count:0] withIntArray:remoteDevices];
}

- (DeviceMockerObject *)hasRemoteDeviceWithByteArray:(IOSByteArray *)scanRecord
                                             withInt:(jint)remoteDevice {
  return [self hasRemoteDevicesWithInt:123 withByteArray:scanRecord withIntArray:[IOSIntArray newArrayWithInts:(jint[]){ remoteDevice } count:1]];
}

- (DeviceMockerObject *)hasRemoteDevicesWithInt:(jint)rssi
                                  withByteArray:(IOSByteArray *)scanRecord
                                   withIntArray:(IOSIntArray *)remoteDevices {
  IOSObjectArray *events = [IOSObjectArray newArrayWithLength:((IOSIntArray *) nil_chk(remoteDevices))->size_ type:Event_class_()];
  for (jint k = 0; k < remoteDevices->size_; k++) (void) IOSObjectArray_SetAndConsume(events, k, new_Event_initWithEventType_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceFound), EventSinkFiller_DEFAULT_DEVICE_ID, [IOSObjectArray newArrayWithObjects:(id[]){ JreStrcat("I", IOSIntArray_Get(remoteDevices, k)), JreStrcat("I", rssi), LeUtil_bytesToStringWithByteArray_(scanRecord) } count:3 type:NSString_class_()]));
  MockedResponseObject *mro = [self getFirstMockObjectWithEventType:JreLoadEnum(LeEventType, deviceStartScanning)];
  if (mro == nil) (void) [self withMockWithEventType:JreLoadEnum(LeEventType, deviceStartScanning) withMockedResponse:new_MockedResponseObject_initWithEventArray_(events)];
  else {
    [mro addEventsWithEventArray:events];
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithSessionObject:withInt:", "DeviceMockerObject", NULL, 0x1, NULL, NULL },
    { "withFakeDeviceListeners", NULL, "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x1, NULL, NULL },
    { "hasRemoteDevicesWithIntArray:", "hasRemoteDevices", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x81, NULL, NULL },
    { "hasRemoteDeviceWithByteArray:withInt:", "hasRemoteDevice", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x1, NULL, NULL },
    { "hasRemoteDevicesWithInt:withByteArray:withIntArray:", "hasRemoteDevices", "Lhoutbecke.rs.le.session.DeviceMockerObject;", 0x81, NULL, NULL },
  };
  static const J2ObjcClassInfo _DeviceMockerObject = { 2, "DeviceMockerObject", "houtbecke.rs.le.session", NULL, 0x1, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_DeviceMockerObject;
}

@end

void DeviceMockerObject_initWithSessionObject_withInt_(DeviceMockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  MockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
}

DeviceMockerObject *new_DeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(DeviceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

DeviceMockerObject *create_DeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(DeviceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeviceMockerObject)
