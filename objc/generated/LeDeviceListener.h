
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDeviceListener")
#ifdef RESTRICT_LeDeviceListener
#define INCLUDE_ALL_LeDeviceListener 0
#else
#define INCLUDE_ALL_LeDeviceListener 1
#endif
#undef RESTRICT_LeDeviceListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeDeviceListener_) && (INCLUDE_ALL_LeDeviceListener || defined(INCLUDE_LeDeviceListener))
#define LeDeviceListener_

@class LeDeviceState;
@protocol LeDevice;
@protocol LeRemoteDevice;
@protocol LeScanRecord;

@protocol LeDeviceListener < JavaObject >

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDevice
               withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

@end

J2OBJC_EMPTY_STATIC_INIT(LeDeviceListener)

J2OBJC_TYPE_LITERAL_HEADER(LeDeviceListener)

#define HoutbeckeRsLeLeDeviceListener LeDeviceListener

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeDeviceListener")
