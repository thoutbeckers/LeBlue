
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRemoteDeviceMock")
#ifdef RESTRICT_LeRemoteDeviceMock
#define INCLUDE_ALL_LeRemoteDeviceMock 0
#else
#define INCLUDE_ALL_LeRemoteDeviceMock 1
#endif
#undef RESTRICT_LeRemoteDeviceMock

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeRemoteDeviceMock_) && (INCLUDE_ALL_LeRemoteDeviceMock || defined(INCLUDE_LeRemoteDeviceMock))
#define LeRemoteDeviceMock_

#define RESTRICT_LeRemoteDevice 1
#define INCLUDE_LeRemoteDevice 1
#include "LeRemoteDevice.h"

@class IOSObjectArray;
@class JavaLangInteger;
@class LeDeviceMock;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeMockController;
@protocol LeRemoteDeviceListener;

@interface LeRemoteDeviceMock : NSObject < LeRemoteDevice > {
 @public
  id<LeMockController> mockController_;
  LeDeviceMock *leDeviceMock_;
  JavaLangInteger *key_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)key
                 withLeMockController:(id<LeMockController>)mockController
                     withLeDeviceMock:(LeDeviceMock *)leDeviceMock;

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
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)startServicesDiscovery;

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)unpair;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRemoteDeviceMock)

J2OBJC_FIELD_SETTER(LeRemoteDeviceMock, mockController_, id<LeMockController>)
J2OBJC_FIELD_SETTER(LeRemoteDeviceMock, leDeviceMock_, LeDeviceMock *)
J2OBJC_FIELD_SETTER(LeRemoteDeviceMock, key_, JavaLangInteger *)

FOUNDATION_EXPORT void LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(LeRemoteDeviceMock *self, jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock);

FOUNDATION_EXPORT LeRemoteDeviceMock *new_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeRemoteDeviceMock *create_LeRemoteDeviceMock_initWithInt_withLeMockController_withLeDeviceMock_(jint key, id<LeMockController> mockController, LeDeviceMock *leDeviceMock);

J2OBJC_TYPE_LITERAL_HEADER(LeRemoteDeviceMock)

@compatibility_alias HoutbeckeRsLeMockLeRemoteDeviceMock LeRemoteDeviceMock;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeRemoteDeviceMock")
