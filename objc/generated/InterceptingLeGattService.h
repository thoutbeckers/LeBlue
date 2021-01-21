
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeGattService")
#ifdef RESTRICT_InterceptingLeGattService
#define INCLUDE_ALL_InterceptingLeGattService 0
#else
#define INCLUDE_ALL_InterceptingLeGattService 1
#endif
#undef RESTRICT_InterceptingLeGattService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeGattService_) && (INCLUDE_ALL_InterceptingLeGattService || defined(INCLUDE_InterceptingLeGattService))
#define InterceptingLeGattService_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeGattService 1
#define INCLUDE_LeGattService 1
#include "LeGattService.h"

@class JavaUtilUUID;
@class LeInterceptor;
@protocol LeGattCharacteristic;

@interface InterceptingLeGattService : LeIntercepting < LeGattService > {
 @public
  id<LeGattService> leGattService_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeGattService:(id<LeGattService>)leGattService
                              withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic;

- (jboolean)isEqual:(id)o;

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid;

- (JavaUtilUUID *)getUuid;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeGattService)

J2OBJC_FIELD_SETTER(InterceptingLeGattService, leGattService_, id<LeGattService>)

FOUNDATION_EXPORT void InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(InterceptingLeGattService *self, id<LeGattService> leGattService, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeGattService *new_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeGattService *create_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeGattService)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeGattService InterceptingLeGattService;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeGattService")
