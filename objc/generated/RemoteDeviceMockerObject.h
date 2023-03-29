
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RemoteDeviceMockerObject")
#ifdef RESTRICT_RemoteDeviceMockerObject
#define INCLUDE_ALL_RemoteDeviceMockerObject 0
#else
#define INCLUDE_ALL_RemoteDeviceMockerObject 1
#endif
#undef RESTRICT_RemoteDeviceMockerObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (RemoteDeviceMockerObject_) && (INCLUDE_ALL_RemoteDeviceMockerObject || defined(INCLUDE_RemoteDeviceMockerObject))
#define RemoteDeviceMockerObject_

#define RESTRICT_MockerObject 1
#define INCLUDE_MockerObject 1
#include "MockerObject.h"

@class IOSIntArray;
@class LeGattStatus;
@class SessionObject;

@interface RemoteDeviceMockerObject : MockerObject {
 @public
  jint mockedDeviceSource_;
}

#pragma mark Public

- (instancetype __nonnull)initWithSessionObject:(SessionObject *)sessionObject
                                        withInt:(jint)sessionSource;

- (RemoteDeviceMockerObject *)hasServicesWithIntArray:(IOSIntArray *)services;

- (RemoteDeviceMockerObject *)hasServicesWithLeGattStatus:(LeGattStatus *)status
                                             withIntArray:(IOSIntArray *)services;

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithInt:(jint)deviceId
                                          withNSString:(NSString *)address
                                          withNSString:(NSString *)name
                                           withBoolean:(jboolean)connects;

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithNSString:(NSString *)address
                                               withNSString:(NSString *)name;

- (RemoteDeviceMockerObject *)mocksRemoteDeviceWithNSString:(NSString *)address
                                               withNSString:(NSString *)name
                                                withBoolean:(jboolean)connects;

- (RemoteDeviceMockerObject *)withFakeCharacteristicsListeners;

- (RemoteDeviceMockerObject *)withFakeRemoteDeviceListeners;

@end

J2OBJC_EMPTY_STATIC_INIT(RemoteDeviceMockerObject)

FOUNDATION_EXPORT void RemoteDeviceMockerObject_initWithSessionObject_withInt_(RemoteDeviceMockerObject *self, SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT RemoteDeviceMockerObject *new_RemoteDeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RemoteDeviceMockerObject *create_RemoteDeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource);

J2OBJC_TYPE_LITERAL_HEADER(RemoteDeviceMockerObject)

@compatibility_alias HoutbeckeRsLeSessionRemoteDeviceMockerObject RemoteDeviceMockerObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_RemoteDeviceMockerObject")
