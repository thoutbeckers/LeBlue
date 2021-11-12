
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRemoteDeviceListener")
#ifdef RESTRICT_LeRemoteDeviceListener
#define INCLUDE_ALL_LeRemoteDeviceListener 0
#else
#define INCLUDE_ALL_LeRemoteDeviceListener 1
#endif
#undef RESTRICT_LeRemoteDeviceListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeRemoteDeviceListener_) && (INCLUDE_ALL_LeRemoteDeviceListener || defined(INCLUDE_LeRemoteDeviceListener))
#define LeRemoteDeviceListener_

@class IOSObjectArray;
@class LeGattStatus;
@protocol LeDevice;
@protocol LeRemoteDevice;

@protocol LeRemoteDeviceListener < JavaObject >

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice> __nonnull)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)leRemoteDevice;

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice> __nonnull)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)leRemoteDevice;

- (void)leDevicesClosedWithLeDevice:(id<LeDevice> __nonnull)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)leRemoteDevice;

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice> __nonnull)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)leRemoteDevice
                     withLeGattStatus:(LeGattStatus * __nonnull)status
               withLeGattServiceArray:(IOSObjectArray * __nonnull)gatts;

- (void)rssiReadWithLeDevice:(id<LeDevice> __nonnull)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)leRemoteDevice
                     withInt:(jint)rssi;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRemoteDeviceListener)

J2OBJC_TYPE_LITERAL_HEADER(LeRemoteDeviceListener)

#define HoutbeckeRsLeLeRemoteDeviceListener LeRemoteDeviceListener

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeRemoteDeviceListener")
