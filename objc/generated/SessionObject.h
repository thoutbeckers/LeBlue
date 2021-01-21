
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SessionObject")
#ifdef RESTRICT_SessionObject
#define INCLUDE_ALL_SessionObject 0
#else
#define INCLUDE_ALL_SessionObject 1
#endif
#undef RESTRICT_SessionObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SessionObject_) && (INCLUDE_ALL_SessionObject || defined(INCLUDE_SessionObject))
#define SessionObject_

#define RESTRICT_Session 1
#define INCLUDE_Session 1
#include "Session.h"

@class CharacteristicsMockerObject;
@class DeviceMockerObject;
@class EventSinkFiller;
@class GattServiceMockerObject;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilUUID;
@class MockerObject;
@class RemoteDeviceMockerObject;
@protocol EventSource;
@protocol JavaUtilMap;
@protocol Mocker;

@interface SessionObject : NSObject < Session > {
 @public
  jint defaultDelay_;
  id<JavaUtilMap> devices_;
  id<JavaUtilMap> remoteDevices_;
  id<JavaUtilMap> gattServices_;
  id<JavaUtilMap> gattCharacteristics_;
  id<EventSource> defaultSource_;
  id<JavaUtilMap> eventSources_;
  id<JavaUtilMap> sourceIdentifications_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)getDefaultDelay;

- (id<EventSource>)getDefaultSource;

- (id<Mocker>)getDeviceMockerWithInt:(jint)id_;

- (IOSObjectArray *)getEventSourceNames;

- (id<Mocker>)getGattCharacteristicMockerWithInt:(jint)id_;

- (id<Mocker>)getGattServiceMockerWithInt:(jint)id_;

- (id<EventSource>)getNamedEventSourceWithNSString:(NSString *)source;

- (id<Mocker>)getRemoteDeviceMockerWithInt:(jint)device;

- (NSString *)getSourceIdentificationWithInt:(jint)source;

+ (SessionObject *)newSession OBJC_METHOD_FAMILY_NONE;

- (SessionObject *)setDefaultDelayWithInt:(jint)defaultDelay;

- (SessionObject *)setDefaultSourceWithEventSource:(id<EventSource>)defaultSource;

- (void)setSourceIdentificationWithInt:(jint)source
                          withNSString:(NSString *)identification;

- (SessionObject *)withDefaultEventSourceWithEventSource:(id<EventSource>)defaultSource;

- (EventSinkFiller *)withDefaultEventSourceFiller;

- (DeviceMockerObject *)withDeviceMocker;

- (DeviceMockerObject *)withDeviceMockerWithInt:(jint)id_;

- (SessionObject *)withDeviceMockerWithInt:(jint)id_
                                withMocker:(id<Mocker>)device;

- (SessionObject *)withDeviceMockerWithMocker:(id<Mocker>)device;

- (SessionObject *)withEndEvent;

- (DeviceMockerObject *)withFakeDeviceWithIntArray:(IOSIntArray *)remoteDevices;

- (DeviceMockerObject *)withFakeDevicesWithIntArray:(IOSIntArray *)remoteDevices
                                     withByteArray2:(IOSObjectArray *)scanRecords;

- (RemoteDeviceMockerObject *)withFakeRemoteDeviceWithInt:(jint)id_
                                             withNSString:(NSString *)address
                                             withNSString:(NSString *)name
                                              withBoolean:(jboolean)connects
                                             withIntArray:(IOSIntArray *)services;

- (GattServiceMockerObject *)withFakeServiceWithInt:(jint)id_
                                   withJavaUtilUUID:(JavaUtilUUID *)uuid;

- (CharacteristicsMockerObject *)withGattCharacteristicsMockerWithInt:(jint)id_;

- (SessionObject *)withGattCharacteristicsMockerWithInt:(jint)id_
                                             withMocker:(id<Mocker>)characteristic;

- (GattServiceMockerObject *)withGattServiceMockerWithInt:(jint)id_;

- (SessionObject *)withGattServiceMockerWithInt:(jint)id_
                                     withMocker:(id<Mocker>)service;

- (SessionObject *)withNamedEventSourceWithNSString:(NSString *)name
                                    withEventSource:(id<EventSource>)eventSource;

- (EventSinkFiller *)withNamedEventSourceFillerWithNSString:(NSString *)name;

- (MockerObject *)withObjectMockerWithInt:(jint)source;

- (RemoteDeviceMockerObject *)withRemoteDeviceMockerWithInt:(jint)id_;

- (SessionObject *)withRemoteDeviceMockerWithInt:(jint)id_
                                      withMocker:(id<Mocker>)remoteDevice;

@end

J2OBJC_EMPTY_STATIC_INIT(SessionObject)

J2OBJC_FIELD_SETTER(SessionObject, devices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(SessionObject, remoteDevices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(SessionObject, gattServices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(SessionObject, gattCharacteristics_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(SessionObject, defaultSource_, id<EventSource>)
J2OBJC_FIELD_SETTER(SessionObject, eventSources_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(SessionObject, sourceIdentifications_, id<JavaUtilMap>)

FOUNDATION_EXPORT void SessionObject_init(SessionObject *self);

FOUNDATION_EXPORT SessionObject *new_SessionObject_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SessionObject *create_SessionObject_init(void);

FOUNDATION_EXPORT SessionObject *SessionObject_newSession(void);

J2OBJC_TYPE_LITERAL_HEADER(SessionObject)

@compatibility_alias HoutbeckeRsLeSessionSessionObject SessionObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_SessionObject")
