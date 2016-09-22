
#include "Event.h"
#include "EventSinkFiller.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "LeGattStatus.h"
#include "MockedResponseObject.h"
#include "MockerObject.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@implementation RemoteDeviceMockerObject

- (instancetype)initWithSessionObject:(SessionObject *)sessionObject
                              withInt:(jint)sessionSource {
  RemoteDeviceMockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
  return self;
}

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithNSString:(NSString *)address
                                               withNSString:(NSString *)name {
  return [self mocksRemoteDeviceWithNSString:address withNSString:name withBoolean:true];
}

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithNSString:(NSString *)address
                                               withNSString:(NSString *)name
                                                withBoolean:(jboolean)connects {
  return [self mocksRemoteDeviceWithInt:EventSinkFiller_DEFAULT_DEVICE_ID withNSString:address withNSString:name withBoolean:connects];
}

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithInt:(jint)deviceId
                                          withNSString:(NSString *)address
                                          withNSString:(NSString *)name
                                           withBoolean:(jboolean)connects {
  self->mockedDeviceSource_ = deviceId;
  [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceGetAddress) withNSString:address];
  [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceGetName) withNSString:name];
  if (connects) {
    [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceConnect) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceConnected), [self getDelay], sessionSource_, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", deviceId) } count:1 type:NSString_class_()]))];
    [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnect) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceDisconnected), [self getDelay], sessionSource_, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", deviceId) } count:1 type:NSString_class_()]))];
    [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceClose) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceClosed), [self getDelay], sessionSource_, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", deviceId) } count:1 type:NSString_class_()]))];
  }
  return self;
}

- (RemoteDeviceMockerObject *)hasServicesWithIntArray:(IOSIntArray *)services {
  return [self hasServicesWithLeGattStatus:JreLoadEnum(LeGattStatus, SUCCESS) withIntArray:services];
}

- (RemoteDeviceMockerObject *)hasServicesWithLeGattStatus:(LeGattStatus *)status
                                             withIntArray:(IOSIntArray *)services {
  id<JavaUtilList> params = create_JavaUtilArrayList_init();
  [params addWithId:JreStrcat("I", mockedDeviceSource_)];
  [params addWithId:[((LeGattStatus *) nil_chk(status)) description]];
  {
    IOSIntArray *a__ = services;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint service = *b__++;
      [params addWithId:JreStrcat("I", service)];
    }
  }
  [self withMockWithEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockRemoteDeviceServicesDiscovered), [self getDelay], sessionSource_, [params toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[params size] type:NSString_class_()]]))];
  return self;
}

- (RemoteDeviceMockerObject *)withFakeCharacteristicsListeners {
  mockCharacteristicsListeners_ = true;
  return self;
}

- (RemoteDeviceMockerObject *)withFakeRemoteDeviceListeners {
  mockRemoteDeviceListeners_ = true;
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithSessionObject:withInt:", "RemoteDeviceMockerObject", NULL, 0x1, NULL, NULL },
    { "mocksRemoteDeviceWithNSString:withNSString:", "mocksRemoteDevice", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
    { "mocksRemoteDeviceWithNSString:withNSString:withBoolean:", "mocksRemoteDevice", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
    { "mocksRemoteDeviceWithInt:withNSString:withNSString:withBoolean:", "mocksRemoteDevice", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
    { "hasServicesWithIntArray:", "hasServices", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x81, NULL, NULL },
    { "hasServicesWithLeGattStatus:withIntArray:", "hasServices", "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x81, NULL, NULL },
    { "withFakeCharacteristicsListeners", NULL, "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
    { "withFakeRemoteDeviceListeners", NULL, "Lhoutbecke.rs.le.session.RemoteDeviceMockerObject;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mockedDeviceSource_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RemoteDeviceMockerObject = { 2, "RemoteDeviceMockerObject", "houtbecke.rs.le.session", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RemoteDeviceMockerObject;
}

@end

void RemoteDeviceMockerObject_initWithSessionObject_withInt_(RemoteDeviceMockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  MockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
}

RemoteDeviceMockerObject *new_RemoteDeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(RemoteDeviceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

RemoteDeviceMockerObject *create_RemoteDeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(RemoteDeviceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RemoteDeviceMockerObject)
