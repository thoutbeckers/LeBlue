
#include "Event.h"
#include "GattServiceMockerObject.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeEventType.h"
#include "MockedResponseObject.h"
#include "MockerObject.h"
#include "SessionObject.h"
#include "java/lang/Boolean.h"
#include "java/util/UUID.h"

@implementation GattServiceMockerObject

- (instancetype)initWithSessionObject:(SessionObject *)sessionObject
                              withInt:(jint)sessionSource {
  GattServiceMockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
  return self;
}

- (GattServiceMockerObject *)mocksServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  [self withMockWithEventType:JreLoadEnum(LeEventType, serviceGetUUID) withNSString:[((JavaUtilUUID *) nil_chk(uuid)) description]];
  return self;
}

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristic {
  return [self hasCharacteristicWithInt:characteristic withNSString:[((SessionObject *) nil_chk(sessionObject_)) getSourceIdentificationWithInt:characteristic]];
}

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristic
                                     withJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [self hasCharacteristicWithInt:characteristic withNSString:[((JavaUtilUUID *) nil_chk(uuid)) description]];
}

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristicId
                                         withNSString:(NSString *)uuid {
  [((SessionObject *) nil_chk(sessionObject_)) setSourceIdentificationWithInt:characteristicId withNSString:uuid];
  [self withMockWithEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withNSString:uuid withInt:0 withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", characteristicId) } count:1 type:NSString_class_()]];
  return self;
}

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristic
                                      withInt:(jint)remoteId
                          withJavaLangBoolean:(JavaLangBoolean *)enable {
  return [self canNotifyWithInt:characteristic withInt:remoteId withNSString:[((SessionObject *) nil_chk(sessionObject_)) getSourceIdentificationWithInt:characteristic] withNSString:[((JavaLangBoolean *) nil_chk(enable)) description]];
}

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristic
                             withJavaUtilUUID:(JavaUtilUUID *)uuid
                                      withInt:(jint)remoteId
                          withJavaLangBoolean:(JavaLangBoolean *)enable {
  return [self canNotifyWithInt:characteristic withInt:remoteId withNSString:[((JavaUtilUUID *) nil_chk(uuid)) description] withNSString:[((JavaLangBoolean *) nil_chk(enable)) description]];
}

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristicId
                                      withInt:(jint)remoteId
                                 withNSString:(NSString *)uuid
                                 withNSString:(NSString *)enable {
  [((SessionObject *) nil_chk(sessionObject_)) setSourceIdentificationWithInt:characteristicId withNSString:uuid];
  [self withMockWithEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockCharacteristicNotificationChanged), [self getDelay], sessionSource_, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", characteristicId), uuid, JreStrcat("I", remoteId), enable } count:4 type:NSString_class_()]))];
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 3, 6, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 7, 9, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 7, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSessionObject:withInt:);
  methods[1].selector = @selector(mocksServiceWithJavaUtilUUID:);
  methods[2].selector = @selector(hasCharacteristicWithInt:);
  methods[3].selector = @selector(hasCharacteristicWithInt:withJavaUtilUUID:);
  methods[4].selector = @selector(hasCharacteristicWithInt:withNSString:);
  methods[5].selector = @selector(canNotifyWithInt:withInt:withJavaLangBoolean:);
  methods[6].selector = @selector(canNotifyWithInt:withJavaUtilUUID:withInt:withJavaLangBoolean:);
  methods[7].selector = @selector(canNotifyWithInt:withInt:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LSessionObject;I", "mocksService", "LJavaUtilUUID;", "hasCharacteristic", "I", "ILJavaUtilUUID;", "ILNSString;", "canNotify", "IILJavaLangBoolean;", "ILJavaUtilUUID;ILJavaLangBoolean;", "IILNSString;LNSString;" };
  static const J2ObjcClassInfo _GattServiceMockerObject = { "GattServiceMockerObject", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x1, 8, 0, -1, -1, -1, -1, -1 };
  return &_GattServiceMockerObject;
}

@end

void GattServiceMockerObject_initWithSessionObject_withInt_(GattServiceMockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  MockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
}

GattServiceMockerObject *new_GattServiceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(GattServiceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

GattServiceMockerObject *create_GattServiceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(GattServiceMockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GattServiceMockerObject)

J2OBJC_NAME_MAPPING(GattServiceMockerObject, "houtbecke.rs.le.session", "")
