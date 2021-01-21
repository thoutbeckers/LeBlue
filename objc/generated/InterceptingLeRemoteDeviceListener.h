
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeRemoteDeviceListener")
#ifdef RESTRICT_InterceptingLeRemoteDeviceListener
#define INCLUDE_ALL_InterceptingLeRemoteDeviceListener 0
#else
#define INCLUDE_ALL_InterceptingLeRemoteDeviceListener 1
#endif
#undef RESTRICT_InterceptingLeRemoteDeviceListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeRemoteDeviceListener_) && (INCLUDE_ALL_InterceptingLeRemoteDeviceListener || defined(INCLUDE_InterceptingLeRemoteDeviceListener))
#define InterceptingLeRemoteDeviceListener_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeRemoteDeviceListener 1
#define INCLUDE_LeRemoteDeviceListener 1
#include "LeRemoteDeviceListener.h"

@class IOSObjectArray;
@class LeGattStatus;
@class LeInterceptor;
@protocol LeDevice;
@protocol LeRemoteDevice;

@interface InterceptingLeRemoteDeviceListener : LeIntercepting < LeRemoteDeviceListener > {
 @public
  id<LeRemoteDeviceListener> leRemoteDeviceListener_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)leRemoteDeviceListener
                                       withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi;

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeRemoteDeviceListener)

J2OBJC_FIELD_SETTER(InterceptingLeRemoteDeviceListener, leRemoteDeviceListener_, id<LeRemoteDeviceListener>)

FOUNDATION_EXPORT void InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(InterceptingLeRemoteDeviceListener *self, id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeRemoteDeviceListener *new_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeRemoteDeviceListener *create_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeRemoteDeviceListener)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeRemoteDeviceListener InterceptingLeRemoteDeviceListener;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeRemoteDeviceListener")
