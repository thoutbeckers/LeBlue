
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDeviceMock")
#ifdef RESTRICT_LeDeviceMock
#define INCLUDE_ALL_LeDeviceMock 0
#else
#define INCLUDE_ALL_LeDeviceMock 1
#endif
#undef RESTRICT_LeDeviceMock

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeDeviceMock_) && (INCLUDE_ALL_LeDeviceMock || defined(INCLUDE_LeDeviceMock))
#define LeDeviceMock_

#define RESTRICT_LeDevice 1
#define INCLUDE_LeDevice 1
#include "LeDevice.h"

@class IOSObjectArray;
@protocol ErrorLogger;
@protocol JavaUtilList;
@protocol LeDeviceListener;
@protocol LeMockController;

@interface LeDeviceMock : NSObject < LeDevice > {
 @public
  id<LeMockController> controller_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)key
                 withLeMockController:(id<LeMockController>)leMockController;

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener>)listener;

- (jboolean)checkBleHardwareAvailable;

- (void)disable;

- (void)enable;

- (jboolean)isBtEnabled;

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener>)listener;

- (void)setErrorLoggerWithErrorLogger:(id<ErrorLogger>)errorLogger;

- (void)startScanning;

- (void)startScanningWithJavaUtilList:(id<JavaUtilList>)filters;

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)stopScanning;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeDeviceMock)

J2OBJC_FIELD_SETTER(LeDeviceMock, controller_, id<LeMockController>)

FOUNDATION_EXPORT void LeDeviceMock_initWithInt_withLeMockController_(LeDeviceMock *self, jint key, id<LeMockController> leMockController);

FOUNDATION_EXPORT LeDeviceMock *new_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeDeviceMock *create_LeDeviceMock_initWithInt_withLeMockController_(jint key, id<LeMockController> leMockController);

J2OBJC_TYPE_LITERAL_HEADER(LeDeviceMock)

@compatibility_alias HoutbeckeRsLeMockLeDeviceMock LeDeviceMock;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeDeviceMock")
