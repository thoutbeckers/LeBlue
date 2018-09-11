
#include "Event.h"
#include "EventSinkFiller.h"
#include "IOSClass.h"
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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, 1, 4, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x81, 5, 6, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x81, 5, 7, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSessionObject:withInt:);
  methods[1].selector = @selector(mocksRemoteDeviceWithNSString:withNSString:);
  methods[2].selector = @selector(mocksRemoteDeviceWithNSString:withNSString:withBoolean:);
  methods[3].selector = @selector(mocksRemoteDeviceWithInt:withNSString:withNSString:withBoolean:);
  methods[4].selector = @selector(hasServicesWithIntArray:);
  methods[5].selector = @selector(hasServicesWithLeGattStatus:withIntArray:);
  methods[6].selector = @selector(withFakeCharacteristicsListeners);
  methods[7].selector = @selector(withFakeRemoteDeviceListeners);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mockedDeviceSource_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSessionObject;I", "mocksRemoteDevice", "LNSString;LNSString;", "LNSString;LNSString;Z", "ILNSString;LNSString;Z", "hasServices", "[I", "LLeGattStatus;[I" };
  static const J2ObjcClassInfo _RemoteDeviceMockerObject = { "RemoteDeviceMockerObject", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
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

J2OBJC_NAME_MAPPING(RemoteDeviceMockerObject, "houtbecke.rs.le.session", "")
