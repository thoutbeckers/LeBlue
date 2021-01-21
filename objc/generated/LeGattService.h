
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattService")
#ifdef RESTRICT_LeGattService
#define INCLUDE_ALL_LeGattService 0
#else
#define INCLUDE_ALL_LeGattService 1
#endif
#undef RESTRICT_LeGattService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattService_) && (INCLUDE_ALL_LeGattService || defined(INCLUDE_LeGattService))
#define LeGattService_

@class JavaUtilUUID;
@protocol LeGattCharacteristic;

@protocol LeGattService < JavaObject >

- (JavaUtilUUID *)getUuid;

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid;

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattService)

J2OBJC_TYPE_LITERAL_HEADER(LeGattService)

#define HoutbeckeRsLeLeGattService LeGattService

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattService")
