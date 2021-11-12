
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeDevice")
#ifdef RESTRICT_InterceptingLeDevice
#define INCLUDE_ALL_InterceptingLeDevice 0
#else
#define INCLUDE_ALL_InterceptingLeDevice 1
#endif
#undef RESTRICT_InterceptingLeDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeDevice_) && (INCLUDE_ALL_InterceptingLeDevice || defined(INCLUDE_InterceptingLeDevice))
#define InterceptingLeDevice_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeDevice 1
#define INCLUDE_LeDevice 1
#include "LeDevice.h"

@class IOSObjectArray;
@class LeInterceptor;
@protocol ErrorLogger;
@protocol JavaUtilList;
@protocol LeDeviceListener;

@interface InterceptingLeDevice : LeIntercepting < LeDevice > {
 @public
  id<LeDevice> leDevice_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeDevice:(id<LeDevice>)leDevice
                         withLeInterceptor:(LeInterceptor *)leInterceptor;

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener> __nonnull)listener;

- (jboolean)checkBleHardwareAvailable;

- (void)disable;

- (void)enable;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)isBtEnabled;

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener> __nonnull)listener;

- (void)setErrorLoggerWithErrorLogger:(id<ErrorLogger>)errorLogger;

- (void)startScanning;

- (void)startScanningWithJavaUtilList:(id<JavaUtilList> __nonnull)filters;

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray * __nonnull)uuids;

- (void)stopScanning;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeDevice)

J2OBJC_FIELD_SETTER(InterceptingLeDevice, leDevice_, id<LeDevice>)

FOUNDATION_EXPORT void InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(InterceptingLeDevice *self, id<LeDevice> leDevice, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeDevice *new_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeDevice *create_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeDevice)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeDevice InterceptingLeDevice;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeDevice")
