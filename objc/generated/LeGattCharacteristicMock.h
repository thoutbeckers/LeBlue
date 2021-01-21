
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattCharacteristicMock")
#ifdef RESTRICT_LeGattCharacteristicMock
#define INCLUDE_ALL_LeGattCharacteristicMock 0
#else
#define INCLUDE_ALL_LeGattCharacteristicMock 1
#endif
#undef RESTRICT_LeGattCharacteristicMock

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattCharacteristicMock_) && (INCLUDE_ALL_LeGattCharacteristicMock || defined(INCLUDE_LeGattCharacteristicMock))
#define LeGattCharacteristicMock_

#define RESTRICT_LeGattCharacteristic 1
#define INCLUDE_LeGattCharacteristic 1
#include "LeGattCharacteristic.h"

@class IOSByteArray;
@class LeFormat;
@protocol LeMockController;

@interface LeGattCharacteristicMock : NSObject < LeGattCharacteristic > {
 @public
  id<LeMockController> mockController_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeMockController:(id<LeMockController>)mockController;

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index;

- (IOSByteArray *)getValue;

- (void)read;

- (void)setValueWithByteArray:(IOSByteArray *)value;

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattCharacteristicMock)

J2OBJC_FIELD_SETTER(LeGattCharacteristicMock, mockController_, id<LeMockController>)

FOUNDATION_EXPORT void LeGattCharacteristicMock_initWithLeMockController_(LeGattCharacteristicMock *self, id<LeMockController> mockController);

FOUNDATION_EXPORT LeGattCharacteristicMock *new_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeGattCharacteristicMock *create_LeGattCharacteristicMock_initWithLeMockController_(id<LeMockController> mockController);

J2OBJC_TYPE_LITERAL_HEADER(LeGattCharacteristicMock)

@compatibility_alias HoutbeckeRsLeMockLeGattCharacteristicMock LeGattCharacteristicMock;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattCharacteristicMock")
