
#include "CharacteristicsMockerObject.h"
#include "DeviceMockerObject.h"
#include "EventSinkFiller.h"
#include "EventSource.h"
#include "GattServiceMockerObject.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "ListEventSinkSource.h"
#include "Mocker.h"
#include "MockerObject.h"
#include "RemoteDeviceMockerObject.h"
#include "SessionObject.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/UUID.h"

@implementation SessionObject

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  SessionObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (SessionObject *)newSession {
  return SessionObject_newSession();
}

- (MockerObject *)withObjectMockerWithInt:(jint)source {
  return MockerObject_newMockerWithSessionObject_withInt_(self, source);
}

- (SessionObject *)setDefaultDelayWithInt:(jint)defaultDelay {
  self->defaultDelay_ = defaultDelay;
  return self;
}

- (jint)getDefaultDelay {
  return defaultDelay_;
}

- (SessionObject *)setDefaultSourceWithEventSource:(id<EventSource>)defaultSource {
  JreStrongAssign(&self->defaultSource_, defaultSource);
  return self;
}

- (DeviceMockerObject *)withFakeDeviceWithIntArray:(IOSIntArray *)remoteDevices {
  return [((DeviceMockerObject *) nil_chk(([((DeviceMockerObject *) nil_chk([self withDeviceMocker])) hasRemoteDevicesWithInt:0 withByteArray:[IOSByteArray arrayWithBytes:(jbyte[]){ 0 } count:1] withIntArray:remoteDevices]))) withFakeDeviceListeners];
}

- (DeviceMockerObject *)withFakeDevicesWithIntArray:(IOSIntArray *)remoteDevices
                                     withByteArray2:(IOSObjectArray *)scanRecords {
  if (((IOSIntArray *) nil_chk(remoteDevices))->size_ != ((IOSObjectArray *) nil_chk(scanRecords))->size_) @throw create_JavaLangRuntimeException_initWithNSString_(@"scanRecords and remoteDevices differ in number");
  DeviceMockerObject *ret = [((DeviceMockerObject *) nil_chk([self withDeviceMocker])) withFakeDeviceListeners];
  for (jint k = 0; k < remoteDevices->size_; k++) [((DeviceMockerObject *) nil_chk(ret)) hasRemoteDeviceWithByteArray:IOSObjectArray_Get(scanRecords, k) withInt:IOSIntArray_Get(remoteDevices, k)];
  return ret;
}

- (DeviceMockerObject *)withDeviceMocker {
  return [self withDeviceMockerWithInt:EventSinkFiller_DEFAULT_DEVICE_ID];
}

- (DeviceMockerObject *)withDeviceMockerWithInt:(jint)id_ {
  DeviceMockerObject *ret = create_DeviceMockerObject_initWithSessionObject_withInt_(self, id_);
  [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:ret];
  return ret;
}

- (SessionObject *)withDeviceMockerWithInt:(jint)id_
                                withMocker:(id<Mocker>)device {
  [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:device];
  return self;
}

- (SessionObject *)withDeviceMockerWithMocker:(id<Mocker>)device {
  [((id<JavaUtilMap>) nil_chk(devices_)) putWithId:JavaLangInteger_valueOfWithInt_(EventSinkFiller_DEFAULT_DEVICE_ID) withId:device];
  return self;
}

- (RemoteDeviceMockerObject *)withFakeRemoteDeviceWithInt:(jint)id_
                                             withNSString:(NSString *)address
                                             withNSString:(NSString *)name
                                              withBoolean:(jboolean)connects
                                             withIntArray:(IOSIntArray *)services {
  return [((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([((RemoteDeviceMockerObject *) nil_chk([self withRemoteDeviceMockerWithInt:id_])) withFakeCharacteristicsListeners])) withFakeRemoteDeviceListeners])) mocksRemoteDeviceWithNSString:address withNSString:name withBoolean:connects])) hasServicesWithIntArray:services];
}

- (RemoteDeviceMockerObject *)withRemoteDeviceMockerWithInt:(jint)id_ {
  RemoteDeviceMockerObject *remoteDeviceMocker = create_RemoteDeviceMockerObject_initWithSessionObject_withInt_(self, id_);
  [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:remoteDeviceMocker];
  return remoteDeviceMocker;
}

- (SessionObject *)withRemoteDeviceMockerWithInt:(jint)id_
                                      withMocker:(id<Mocker>)remoteDevice {
  [((id<JavaUtilMap>) nil_chk(remoteDevices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:remoteDevice];
  return self;
}

- (GattServiceMockerObject *)withFakeServiceWithInt:(jint)id_
                                   withJavaUtilUUID:(JavaUtilUUID *)uuid {
  return [((GattServiceMockerObject *) nil_chk([self withGattServiceMockerWithInt:id_])) mocksServiceWithJavaUtilUUID:uuid];
}

- (GattServiceMockerObject *)withGattServiceMockerWithInt:(jint)id_ {
  GattServiceMockerObject *service = create_GattServiceMockerObject_initWithSessionObject_withInt_(self, id_);
  [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:service];
  return service;
}

- (SessionObject *)withGattServiceMockerWithInt:(jint)id_
                                     withMocker:(id<Mocker>)service {
  [((id<JavaUtilMap>) nil_chk(gattServices_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:service];
  return self;
}

- (CharacteristicsMockerObject *)withGattCharacteristicsMockerWithInt:(jint)id_ {
  CharacteristicsMockerObject *ret = create_CharacteristicsMockerObject_initWithSessionObject_withInt_(self, id_);
  [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:ret];
  return ret;
}

- (SessionObject *)withGattCharacteristicsMockerWithInt:(jint)id_
                                             withMocker:(id<Mocker>)characteristic {
  [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) putWithId:JavaLangInteger_valueOfWithInt_(id_) withId:characteristic];
  return self;
}

- (SessionObject *)withNamedEventSourceWithNSString:(NSString *)name
                                    withEventSource:(id<EventSource>)eventSource {
  [((id<JavaUtilMap>) nil_chk(eventSources_)) putWithId:name withId:eventSource];
  return self;
}

- (EventSinkFiller *)withNamedEventSourceFillerWithNSString:(NSString *)name {
  ListEventSinkSource *source = create_ListEventSinkSource_init();
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  [((id<JavaUtilMap>) nil_chk(eventSources_)) putWithId:name withId:source];
  return filler;
}

- (SessionObject *)withDefaultEventSourceWithEventSource:(id<EventSource>)defaultSource {
  JreStrongAssign(&self->defaultSource_, defaultSource);
  return self;
}

- (EventSinkFiller *)withDefaultEventSourceFiller {
  ListEventSinkSource *source = create_ListEventSinkSource_init();
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  JreStrongAssign(&defaultSource_, source);
  return filler;
}

- (SessionObject *)withEndEvent {
  ListEventSinkSource *source = create_ListEventSinkSource_init();
  EventSinkFiller *filler = create_EventSinkFiller_initWithListEventSinkSource_withSessionObject_(source, self);
  JreStrongAssign(&defaultSource_, source);
  return ((EventSinkFiller *) nil_chk([filler waitForPointWithNSString:@"end"]))->and__;
}

- (id<Mocker>)getGattCharacteristicMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(gattCharacteristics_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getGattServiceMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(gattServices_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getDeviceMockerWithInt:(jint)id_ {
  return [((id<JavaUtilMap>) nil_chk(devices_)) getWithId:JavaLangInteger_valueOfWithInt_(id_)];
}

- (id<Mocker>)getRemoteDeviceMockerWithInt:(jint)device {
  return [((id<JavaUtilMap>) nil_chk(remoteDevices_)) getWithId:JavaLangInteger_valueOfWithInt_(device)];
}

- (id<EventSource>)getDefaultSource {
  return defaultSource_;
}

- (id<EventSource>)getNamedEventSourceWithNSString:(NSString *)source {
  return [((id<JavaUtilMap>) nil_chk(eventSources_)) getWithId:source];
}

- (IOSObjectArray *)getEventSourceNames {
  id<JavaUtilSet> strings = [((id<JavaUtilMap>) nil_chk(eventSources_)) keySet];
  return [((id<JavaUtilSet>) nil_chk(strings)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[strings size] type:NSString_class_()]];
}

- (NSString *)getSourceIdentificationWithInt:(jint)source {
  NSString *ret = [((id<JavaUtilMap>) nil_chk(sourceIdentifications_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
  if (ret == nil) @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$", @"Trying to reference a mocked source by only it's id (", source, @"),  and it's identification string has not yet been specified"));
  return ret;
}

- (void)setSourceIdentificationWithInt:(jint)source
                          withNSString:(NSString *)identification {
  [((id<JavaUtilMap>) nil_chk(sourceIdentifications_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:identification];
}

- (void)dealloc {
  RELEASE_(devices_);
  RELEASE_(remoteDevices_);
  RELEASE_(gattServices_);
  RELEASE_(gattCharacteristics_);
  RELEASE_(defaultSource_);
  RELEASE_(eventSources_);
  RELEASE_(sourceIdentifications_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x81, 5, 6, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x81, 7, 8, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LDeviceMockerObject;", 0x1, 9, 1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 9, 11, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x81, 12, 13, -1, -1, -1, -1 },
    { NULL, "LRemoteDeviceMockerObject;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 14, 10, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "LGattServiceMockerObject;", 0x1, 17, 1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 17, 10, -1, -1, -1, -1 },
    { NULL, "LCharacteristicsMockerObject;", 0x1, 18, 1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 18, 10, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, 23, 4, -1, -1, -1, -1 },
    { NULL, "LEventSinkFiller;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x1, 24, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x1, 25, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x1, 26, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x1, 27, 1, -1, -1, -1, -1 },
    { NULL, "LEventSource;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEventSource;", 0x1, 28, 22, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 29, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 30, 31, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(newSession);
  methods[2].selector = @selector(withObjectMockerWithInt:);
  methods[3].selector = @selector(setDefaultDelayWithInt:);
  methods[4].selector = @selector(getDefaultDelay);
  methods[5].selector = @selector(setDefaultSourceWithEventSource:);
  methods[6].selector = @selector(withFakeDeviceWithIntArray:);
  methods[7].selector = @selector(withFakeDevicesWithIntArray:withByteArray2:);
  methods[8].selector = @selector(withDeviceMocker);
  methods[9].selector = @selector(withDeviceMockerWithInt:);
  methods[10].selector = @selector(withDeviceMockerWithInt:withMocker:);
  methods[11].selector = @selector(withDeviceMockerWithMocker:);
  methods[12].selector = @selector(withFakeRemoteDeviceWithInt:withNSString:withNSString:withBoolean:withIntArray:);
  methods[13].selector = @selector(withRemoteDeviceMockerWithInt:);
  methods[14].selector = @selector(withRemoteDeviceMockerWithInt:withMocker:);
  methods[15].selector = @selector(withFakeServiceWithInt:withJavaUtilUUID:);
  methods[16].selector = @selector(withGattServiceMockerWithInt:);
  methods[17].selector = @selector(withGattServiceMockerWithInt:withMocker:);
  methods[18].selector = @selector(withGattCharacteristicsMockerWithInt:);
  methods[19].selector = @selector(withGattCharacteristicsMockerWithInt:withMocker:);
  methods[20].selector = @selector(withNamedEventSourceWithNSString:withEventSource:);
  methods[21].selector = @selector(withNamedEventSourceFillerWithNSString:);
  methods[22].selector = @selector(withDefaultEventSourceWithEventSource:);
  methods[23].selector = @selector(withDefaultEventSourceFiller);
  methods[24].selector = @selector(withEndEvent);
  methods[25].selector = @selector(getGattCharacteristicMockerWithInt:);
  methods[26].selector = @selector(getGattServiceMockerWithInt:);
  methods[27].selector = @selector(getDeviceMockerWithInt:);
  methods[28].selector = @selector(getRemoteDeviceMockerWithInt:);
  methods[29].selector = @selector(getDefaultSource);
  methods[30].selector = @selector(getNamedEventSourceWithNSString:);
  methods[31].selector = @selector(getEventSourceNames);
  methods[32].selector = @selector(getSourceIdentificationWithInt:);
  methods[33].selector = @selector(setSourceIdentificationWithInt:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "defaultDelay_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "devices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 32, -1 },
    { "remoteDevices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 32, -1 },
    { "gattServices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 32, -1 },
    { "gattCharacteristics_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 32, -1 },
    { "defaultSource_", "LEventSource;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "eventSources_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 33, -1 },
    { "sourceIdentifications_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 34, -1 },
  };
  static const void *ptrTable[] = { "withObjectMocker", "I", "setDefaultDelay", "setDefaultSource", "LEventSource;", "withFakeDevice", "[I", "withFakeDevices", "[I[[B", "withDeviceMocker", "ILMocker;", "LMocker;", "withFakeRemoteDevice", "ILNSString;LNSString;Z[I", "withRemoteDeviceMocker", "withFakeService", "ILJavaUtilUUID;", "withGattServiceMocker", "withGattCharacteristicsMocker", "withNamedEventSource", "LNSString;LEventSource;", "withNamedEventSourceFiller", "LNSString;", "withDefaultEventSource", "getGattCharacteristicMocker", "getGattServiceMocker", "getDeviceMocker", "getRemoteDeviceMocker", "getNamedEventSource", "getSourceIdentification", "setSourceIdentification", "ILNSString;", "Ljava/util/Map<Ljava/lang/Integer;Lhoutbecke/rs/le/session/Mocker;>;", "Ljava/util/Map<Ljava/lang/String;Lhoutbecke/rs/le/session/EventSource;>;", "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _SessionObject = { "SessionObject", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 34, 8, -1, -1, -1, -1, -1 };
  return &_SessionObject;
}

@end

void SessionObject_init(SessionObject *self) {
  NSObject_init(self);
  self->defaultDelay_ = 0;
  JreStrongAssignAndConsume(&self->devices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->remoteDevices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->gattServices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->gattCharacteristics_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->eventSources_, new_JavaUtilHashMap_initWithInt_(0));
  JreStrongAssignAndConsume(&self->sourceIdentifications_, new_JavaUtilHashMap_init());
}

SessionObject *new_SessionObject_init() {
  J2OBJC_NEW_IMPL(SessionObject, init)
}

SessionObject *create_SessionObject_init() {
  J2OBJC_CREATE_IMPL(SessionObject, init)
}

SessionObject *SessionObject_newSession() {
  SessionObject_initialize();
  return create_SessionObject_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SessionObject)
