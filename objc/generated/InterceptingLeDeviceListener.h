
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeDeviceListener")
#ifdef RESTRICT_InterceptingLeDeviceListener
#define INCLUDE_ALL_InterceptingLeDeviceListener 0
#else
#define INCLUDE_ALL_InterceptingLeDeviceListener 1
#endif
#undef RESTRICT_InterceptingLeDeviceListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeDeviceListener_) && (INCLUDE_ALL_InterceptingLeDeviceListener || defined(INCLUDE_InterceptingLeDeviceListener))
#define InterceptingLeDeviceListener_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeDeviceListener 1
#define INCLUDE_LeDeviceListener 1
#include "LeDeviceListener.h"

@class LeDeviceState;
@class LeInterceptor;
@protocol LeDevice;
@protocol LeRemoteDevice;
@protocol LeScanRecord;

@interface InterceptingLeDeviceListener : LeIntercepting < LeDeviceListener > {
 @public
  id<LeDeviceListener> leDeviceListener_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeDeviceListener:(id<LeDeviceListener>)leDeviceListener
                                 withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (void)leDeviceFoundWithLeDevice:(id<LeDevice>)leDevice
               withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                          withInt:(jint)rssi
                 withLeScanRecord:(id<LeScanRecord>)scanRecord;

- (void)leDeviceStateWithLeDevice:(id<LeDevice>)leDevice
                withLeDeviceState:(LeDeviceState *)leDeviceState;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeDeviceListener)

J2OBJC_FIELD_SETTER(InterceptingLeDeviceListener, leDeviceListener_, id<LeDeviceListener>)

FOUNDATION_EXPORT void InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(InterceptingLeDeviceListener *self, id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeDeviceListener *new_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeDeviceListener *create_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(id<LeDeviceListener> leDeviceListener, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeDeviceListener)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeDeviceListener InterceptingLeDeviceListener;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeDeviceListener")
