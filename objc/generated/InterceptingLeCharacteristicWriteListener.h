
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeCharacteristicWriteListener")
#ifdef RESTRICT_InterceptingLeCharacteristicWriteListener
#define INCLUDE_ALL_InterceptingLeCharacteristicWriteListener 0
#else
#define INCLUDE_ALL_InterceptingLeCharacteristicWriteListener 1
#endif
#undef RESTRICT_InterceptingLeCharacteristicWriteListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (InterceptingLeCharacteristicWriteListener_) && (INCLUDE_ALL_InterceptingLeCharacteristicWriteListener || defined(INCLUDE_InterceptingLeCharacteristicWriteListener))
#define InterceptingLeCharacteristicWriteListener_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeCharacteristicWriteListener 1
#define INCLUDE_LeCharacteristicWriteListener 1
#include "LeCharacteristicWriteListener.h"

@class JavaUtilUUID;
@class LeInterceptor;
@protocol LeGattCharacteristic;
@protocol LeRemoteDevice;

@interface InterceptingLeCharacteristicWriteListener : LeIntercepting < LeCharacteristicWriteListener > {
 @public
  id<LeCharacteristicWriteListener> leCharacteristicWriteListener_;
}

#pragma mark Public

- (instancetype __nonnull)initWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)leCharacteristicWriteListener
                                              withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (void)leCharacteristicWrittenWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                    withBoolean:(jboolean)success;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithLeInterceptor:(LeInterceptor *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeCharacteristicWriteListener)

J2OBJC_FIELD_SETTER(InterceptingLeCharacteristicWriteListener, leCharacteristicWriteListener_, id<LeCharacteristicWriteListener>)

FOUNDATION_EXPORT void InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(InterceptingLeCharacteristicWriteListener *self, id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeCharacteristicWriteListener *new_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeCharacteristicWriteListener *create_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(id<LeCharacteristicWriteListener> leCharacteristicWriteListener, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeCharacteristicWriteListener)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeCharacteristicWriteListener InterceptingLeCharacteristicWriteListener;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_InterceptingLeCharacteristicWriteListener")
