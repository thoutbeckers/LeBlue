
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeRemoteDevice")
#ifdef RESTRICT_InterceptingLeRemoteDevice
#define INCLUDE_ALL_InterceptingLeRemoteDevice 0
#else
#define INCLUDE_ALL_InterceptingLeRemoteDevice 1
#endif
#undef RESTRICT_InterceptingLeRemoteDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeRemoteDevice_) && (INCLUDE_ALL_InterceptingLeRemoteDevice || defined(INCLUDE_InterceptingLeRemoteDevice))
#define InterceptingLeRemoteDevice_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeRemoteDevice 1
#define INCLUDE_LeRemoteDevice 1
#include "LeRemoteDevice.h"

@class IOSObjectArray;
@class LeInterceptor;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeRemoteDeviceListener;

@interface InterceptingLeRemoteDevice : LeIntercepting < LeRemoteDevice > {
 @public
  id<LeRemoteDevice> leRemoteDevice_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                               withLeInterceptor:(LeInterceptor *)leInterceptor;

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)close;

- (void)connect;

- (void)disconnect;

- (jboolean)isEqual:(id)o;

- (NSString *)getAddress;

- (NSString *)getName;

- (NSUInteger)hash;

- (void)readRssi;

- (void)refreshDeviceCache;

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray * __nullable)uuids;

- (void)startServicesDiscovery;

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray * __nonnull)uuids;

- (NSString *)description;

- (void)unpair;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeRemoteDevice)

J2OBJC_FIELD_SETTER(InterceptingLeRemoteDevice, leRemoteDevice_, id<LeRemoteDevice>)

FOUNDATION_EXPORT void InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(InterceptingLeRemoteDevice *self, id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeRemoteDevice *new_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeRemoteDevice *create_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(id<LeRemoteDevice> leRemoteDevice, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeRemoteDevice)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeRemoteDevice InterceptingLeRemoteDevice;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeRemoteDevice")
