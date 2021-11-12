
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDevice")
#ifdef RESTRICT_LeDevice
#define INCLUDE_ALL_LeDevice 0
#else
#define INCLUDE_ALL_LeDevice 1
#endif
#undef RESTRICT_LeDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeDevice_) && (INCLUDE_ALL_LeDevice || defined(INCLUDE_LeDevice))
#define LeDevice_

@class IOSObjectArray;
@protocol ErrorLogger;
@protocol JavaUtilList;
@protocol LeDeviceListener;

@protocol LeDevice < JavaObject >

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener> __nonnull)listener;

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener> __nonnull)listener;

- (jboolean)checkBleHardwareAvailable;

- (jboolean)isBtEnabled;

- (void)startScanning;

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray * __nonnull)uuids;

- (void)startScanningWithJavaUtilList:(id<JavaUtilList> __nonnull)filters;

- (void)stopScanning;

- (void)setErrorLoggerWithErrorLogger:(id<ErrorLogger> __nonnull)errorLogger;

- (void)disable;

- (void)enable;

@end

J2OBJC_EMPTY_STATIC_INIT(LeDevice)

J2OBJC_TYPE_LITERAL_HEADER(LeDevice)

#define HoutbeckeRsLeLeDevice LeDevice

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeDevice")
