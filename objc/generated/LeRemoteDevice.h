
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRemoteDevice")
#ifdef RESTRICT_LeRemoteDevice
#define INCLUDE_ALL_LeRemoteDevice 0
#else
#define INCLUDE_ALL_LeRemoteDevice 1
#endif
#undef RESTRICT_LeRemoteDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeRemoteDevice_) && (INCLUDE_ALL_LeRemoteDevice || defined(INCLUDE_LeRemoteDevice))
#define LeRemoteDevice_

@class IOSObjectArray;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeRemoteDeviceListener;

@protocol LeRemoteDevice < JavaObject >

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener> __nonnull)listener;

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener> __nonnull)listener;

- (NSString * __nonnull)getAddress;

- (void)connect;

- (void)disconnect;

- (void)close;

- (void)startServicesDiscovery;

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray * __nonnull)uuids;

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener> __nullable)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray * __nullable)uuids;

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener> __nullable)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray * __nullable)uuids;

- (NSString * __nullable)getName;

- (void)readRssi;

- (void)refreshDeviceCache;

- (void)unpair;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRemoteDevice)

J2OBJC_TYPE_LITERAL_HEADER(LeRemoteDevice)

#define HoutbeckeRsLeLeRemoteDevice LeRemoteDevice

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeRemoteDevice")
