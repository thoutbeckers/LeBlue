
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattServiceMock")
#ifdef RESTRICT_LeGattServiceMock
#define INCLUDE_ALL_LeGattServiceMock 0
#else
#define INCLUDE_ALL_LeGattServiceMock 1
#endif
#undef RESTRICT_LeGattServiceMock

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattServiceMock_) && (INCLUDE_ALL_LeGattServiceMock || defined(INCLUDE_LeGattServiceMock))
#define LeGattServiceMock_

#define RESTRICT_LeGattService 1
#define INCLUDE_LeGattService 1
#include "LeGattService.h"

@class JavaLangInteger;
@class JavaUtilUUID;
@protocol LeGattCharacteristic;
@protocol LeMockController;

@interface LeGattServiceMock : NSObject < LeGattService > {
 @public
  id<LeMockController> mockController_;
  JavaLangInteger *key_;
}

#pragma mark Public

- (instancetype __nonnull)initWithJavaLangInteger:(JavaLangInteger *)key
                             withLeMockController:(id<LeMockController>)mockController;

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic;

- (jboolean)isEqual:(id)o;

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid;

- (JavaUtilUUID *)getUuid;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattServiceMock)

J2OBJC_FIELD_SETTER(LeGattServiceMock, mockController_, id<LeMockController>)
J2OBJC_FIELD_SETTER(LeGattServiceMock, key_, JavaLangInteger *)

FOUNDATION_EXPORT void LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(LeGattServiceMock *self, JavaLangInteger *key, id<LeMockController> mockController);

FOUNDATION_EXPORT LeGattServiceMock *new_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeGattServiceMock *create_LeGattServiceMock_initWithJavaLangInteger_withLeMockController_(JavaLangInteger *key, id<LeMockController> mockController);

J2OBJC_TYPE_LITERAL_HEADER(LeGattServiceMock)

@compatibility_alias HoutbeckeRsLeMockLeGattServiceMock LeGattServiceMock;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattServiceMock")
