
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DeviceMockerObject")
#ifdef RESTRICT_DeviceMockerObject
#define INCLUDE_ALL_DeviceMockerObject 0
#else
#define INCLUDE_ALL_DeviceMockerObject 1
#endif
#undef RESTRICT_DeviceMockerObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (DeviceMockerObject_) && (INCLUDE_ALL_DeviceMockerObject || defined(INCLUDE_DeviceMockerObject))
#define DeviceMockerObject_

#define RESTRICT_MockerObject 1
#define INCLUDE_MockerObject 1
#include "MockerObject.h"

@class IOSByteArray;
@class IOSIntArray;
@class SessionObject;

@interface DeviceMockerObject : MockerObject

#pragma mark Public

- (instancetype __nonnull)initWithSessionObject:(SessionObject *)sessionObject
                                        withInt:(jint)sessionSource;

- (DeviceMockerObject *)hasRemoteDeviceWithByteArray:(IOSByteArray *)scanRecord
                                             withInt:(jint)remoteDevice;

- (DeviceMockerObject *)hasRemoteDevicesWithIntArray:(IOSIntArray *)remoteDevices;

- (DeviceMockerObject *)hasRemoteDevicesWithInt:(jint)rssi
                                  withByteArray:(IOSByteArray *)scanRecord
                                   withIntArray:(IOSIntArray *)remoteDevices;

- (DeviceMockerObject *)withFakeDeviceListeners;

@end

J2OBJC_EMPTY_STATIC_INIT(DeviceMockerObject)

FOUNDATION_EXPORT void DeviceMockerObject_initWithSessionObject_withInt_(DeviceMockerObject *self, SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT DeviceMockerObject *new_DeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT DeviceMockerObject *create_DeviceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource);

J2OBJC_TYPE_LITERAL_HEADER(DeviceMockerObject)

@compatibility_alias HoutbeckeRsLeSessionDeviceMockerObject DeviceMockerObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_DeviceMockerObject")
