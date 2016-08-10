
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRemoteDevice")
#ifdef RESTRICT_LeRemoteDevice
#define INCLUDE_ALL_LeRemoteDevice 0
#else
#define INCLUDE_ALL_LeRemoteDevice 1
#endif
#undef RESTRICT_LeRemoteDevice

#if !defined (LeRemoteDevice_) && (INCLUDE_ALL_LeRemoteDevice || defined(INCLUDE_LeRemoteDevice))
#define LeRemoteDevice_

@class IOSObjectArray;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeRemoteDeviceListener;

@protocol LeRemoteDevice < NSObject, JavaObject >

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (NSString *)getAddress;

- (void)connect;

- (void)disconnect;

- (void)close;

- (void)startServicesDiscovery;

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (NSString *)getName;

- (void)readRssi;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRemoteDevice)

J2OBJC_TYPE_LITERAL_HEADER(LeRemoteDevice)

#define HoutbeckeRsLeLeRemoteDevice LeRemoteDevice

#endif

#pragma pop_macro("INCLUDE_ALL_LeRemoteDevice")
