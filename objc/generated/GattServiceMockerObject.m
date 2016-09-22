
#include "Event.h"
#include "GattServiceMockerObject.h"
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
  [self withMockWithEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withMockedResponse:create_MockedResponseObject_initWithEvent_(create_Event_initWithEventType_withInt_withInt_withNSStringArray_(JreLoadEnum(LeEventType, mockCharacteristicNotificationChanged), [self getDelay], sessionSource_, [IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", characteristicId), [((NSString *) nil_chk(uuid)) description], JreStrcat("I", remoteId), enable } count:4 type:NSString_class_()]))];
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithSessionObject:withInt:", "GattServiceMockerObject", NULL, 0x1, NULL, NULL },
    { "mocksServiceWithJavaUtilUUID:", "mocksService", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "hasCharacteristicWithInt:", "hasCharacteristic", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "hasCharacteristicWithInt:withJavaUtilUUID:", "hasCharacteristic", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "hasCharacteristicWithInt:withNSString:", "hasCharacteristic", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "canNotifyWithInt:withInt:withJavaLangBoolean:", "canNotify", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "canNotifyWithInt:withJavaUtilUUID:withInt:withJavaLangBoolean:", "canNotify", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
    { "canNotifyWithInt:withInt:withNSString:withNSString:", "canNotify", "Lhoutbecke.rs.le.session.GattServiceMockerObject;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _GattServiceMockerObject = { 2, "GattServiceMockerObject", "houtbecke.rs.le.session", NULL, 0x1, 8, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
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
