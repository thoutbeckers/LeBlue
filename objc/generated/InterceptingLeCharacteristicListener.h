
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeCharacteristicListener")
#ifdef RESTRICT_InterceptingLeCharacteristicListener
#define INCLUDE_ALL_InterceptingLeCharacteristicListener 0
#else
#define INCLUDE_ALL_InterceptingLeCharacteristicListener 1
#endif
#undef RESTRICT_InterceptingLeCharacteristicListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeCharacteristicListener_) && (INCLUDE_ALL_InterceptingLeCharacteristicListener || defined(INCLUDE_InterceptingLeCharacteristicListener))
#define InterceptingLeCharacteristicListener_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeCharacteristicListener 1
#define INCLUDE_LeCharacteristicListener 1
#include "LeCharacteristicListener.h"

@class JavaUtilUUID;
@class LeInterceptor;
@protocol LeGattCharacteristic;
@protocol LeRemoteDevice;

@interface InterceptingLeCharacteristicListener : LeIntercepting < LeCharacteristicListener > {
 @public
  id<LeCharacteristicListener> leCharacteristicListener_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeCharacteristicListener:(id<LeCharacteristicListener>)leCharacteristicListener
                                         withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID * __nonnull)uuid
                               withJavaUtilUUID:(JavaUtilUUID * __nonnull)serviceUuid
                             withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic> __nonnull)characteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID * __nonnull)uuid
                                           withJavaUtilUUID:(JavaUtilUUID * __nonnull)serviceUuid
                                         withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic> __nonnull)characteristic
                                                withBoolean:(jboolean)success;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeCharacteristicListener)

J2OBJC_FIELD_SETTER(InterceptingLeCharacteristicListener, leCharacteristicListener_, id<LeCharacteristicListener>)

FOUNDATION_EXPORT void InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(InterceptingLeCharacteristicListener *self, id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeCharacteristicListener *new_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeCharacteristicListener *create_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(id<LeCharacteristicListener> leCharacteristicListener, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeCharacteristicListener)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeCharacteristicListener InterceptingLeCharacteristicListener;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeCharacteristicListener")
