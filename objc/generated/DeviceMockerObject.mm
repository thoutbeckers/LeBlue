
#include "DeviceMockerObject.h"
#include "Event.h"
#include "EventSinkFiller.h"
#include "IOSClass.h"
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
  return [self hasRemoteDevicesWithInt:123 withByteArray:[IOSByteArray arrayWithBytes:(jbyte[]){  } count:0] withIntArray:remoteDevices];
}

- (DeviceMockerObject *)hasRemoteDeviceWithByteArray:(IOSByteArray *)scanRecord
                                             withInt:(jint)remoteDevice {
  return [self hasRemoteDevicesWithInt:123 withByteArray:scanRecord withIntArray:[IOSIntArray arrayWithInts:(jint[]){ remoteDevice } count:1]];
}

- (DeviceMockerObject *)hasRemoteDevicesWithInt:(jint)rssi
                                  withByteArray:(IOSByteArray *)scanRecord
                                   withIntArray:(IOSIntArray *)remoteDevices {
  IOSObjectArray *events = [IOSObjectArray arrayWithLength:((IOSIntArray *) nil_chk(remoteDevices))->size_ type:Event_class_()];
  for (jint k = 0; k < remoteDevices->size_; k++) IOSObjectArray_SetAndConsume(events, k, new_Event_initWithEventType_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceFound), EventSinkFiller_DEFAULT_DEVICE_ID, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", IOSIntArray_Get(remoteDevices, k)), JreStrcat("I", rssi), LeUtil_bytesToStringWithByteArray_(scanRecord) } count:3 type:NSString_class_()]));
  MockedResponseObject *mro = [self getFirstMockObjectWithEventType:JreLoadEnum(LeEventType, deviceStartScanning)];
  if (mro == nil) [self withMockWithEventType:JreLoadEnum(LeEventType, deviceStartScanning) withMockedResponse:create_MockedResponseObject_initWithEventArray_(events)];
  else {
    [mro addEventsWithEventArray:events];
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x81, 1, 2, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x81, 1, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSessionObject:withInt:);
  methods[1].selector = @selector(withFakeDeviceListeners);
  methods[2].selector = @selector(hasRemoteDevicesWithIntArray:);
  methods[3].selector = @selector(hasRemoteDeviceWithByteArray:withInt:);
  methods[4].selector = @selector(hasRemoteDevicesWithInt:withByteArray:withIntArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LSessionObject;I", "hasRemoteDevices", "[I", "hasRemoteDevice", "[BI", "I[B[I" };
  static const J2ObjcClassInfo _DeviceMockerObject = { "DeviceMockerObject", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
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

J2OBJC_NAME_MAPPING(DeviceMockerObject, "houtbecke.rs.le.session", "")
