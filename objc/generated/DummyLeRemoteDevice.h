
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DummyLeRemoteDevice")
#ifdef RESTRICT_DummyLeRemoteDevice
#define INCLUDE_ALL_DummyLeRemoteDevice 0
#else
#define INCLUDE_ALL_DummyLeRemoteDevice 1
#endif
#undef RESTRICT_DummyLeRemoteDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (HoutbeckeRsLeDummyDummyLeRemoteDevice_) && (INCLUDE_ALL_DummyLeRemoteDevice || defined(INCLUDE_HoutbeckeRsLeDummyDummyLeRemoteDevice))
#define HoutbeckeRsLeDummyDummyLeRemoteDevice_

#define RESTRICT_LeRemoteDevice 1
#define INCLUDE_LeRemoteDevice 1
#include "LeRemoteDevice.h"

@class IOSObjectArray;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeRemoteDeviceListener;

@interface HoutbeckeRsLeDummyDummyLeRemoteDevice : NSObject < LeRemoteDevice >

#pragma mark Public

- (instancetype __nonnull)init;

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)close;

- (void)connect;

- (void)disconnect;

- (NSString *)getAddress;

- (NSString *)getName;

- (void)readRssi;

- (void)refreshDeviceCache;

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray * __nullable)uuids;

- (void)startServicesDiscovery;

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray * __nonnull)uuids;

- (void)unpair;

@end

J2OBJC_EMPTY_STATIC_INIT(HoutbeckeRsLeDummyDummyLeRemoteDevice)

FOUNDATION_EXPORT void HoutbeckeRsLeDummyDummyLeRemoteDevice_init(HoutbeckeRsLeDummyDummyLeRemoteDevice *self);

FOUNDATION_EXPORT HoutbeckeRsLeDummyDummyLeRemoteDevice *new_HoutbeckeRsLeDummyDummyLeRemoteDevice_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT HoutbeckeRsLeDummyDummyLeRemoteDevice *create_HoutbeckeRsLeDummyDummyLeRemoteDevice_init(void);

J2OBJC_TYPE_LITERAL_HEADER(HoutbeckeRsLeDummyDummyLeRemoteDevice)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_DummyLeRemoteDevice")
