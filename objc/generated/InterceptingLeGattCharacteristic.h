
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InterceptingLeGattCharacteristic")
#ifdef RESTRICT_InterceptingLeGattCharacteristic
#define INCLUDE_ALL_InterceptingLeGattCharacteristic 0
#else
#define INCLUDE_ALL_InterceptingLeGattCharacteristic 1
#endif
#undef RESTRICT_InterceptingLeGattCharacteristic

#if !defined (InterceptingLeGattCharacteristic_) && (INCLUDE_ALL_InterceptingLeGattCharacteristic || defined(INCLUDE_InterceptingLeGattCharacteristic))
#define InterceptingLeGattCharacteristic_

#define RESTRICT_LeIntercepting 1
#define INCLUDE_LeIntercepting 1
#include "LeIntercepting.h"

#define RESTRICT_LeGattCharacteristic 1
#define INCLUDE_LeGattCharacteristic 1
#include "LeGattCharacteristic.h"

@class IOSByteArray;
@class LeFormat;
@class LeInterceptor;

@interface InterceptingLeGattCharacteristic : LeIntercepting < LeGattCharacteristic > {
 @public
  id<LeGattCharacteristic> leGattCharacteristic_;
}

#pragma mark Public

- (instancetype)initWithLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic
                           withLeInterceptor:(LeInterceptor *)leInterceptor;

- (jboolean)isEqual:(id)o;

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index;

- (IOSByteArray *)getValue;

- (NSUInteger)hash;

- (void)read;

- (void)setValueWithByteArray:(IOSByteArray *)value;

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse;

@end

J2OBJC_EMPTY_STATIC_INIT(InterceptingLeGattCharacteristic)

J2OBJC_FIELD_SETTER(InterceptingLeGattCharacteristic, leGattCharacteristic_, id<LeGattCharacteristic>)

FOUNDATION_EXPORT void InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(InterceptingLeGattCharacteristic *self, id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT InterceptingLeGattCharacteristic *new_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InterceptingLeGattCharacteristic *create_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(InterceptingLeGattCharacteristic)

@compatibility_alias HoutbeckeRsLeInterceptorInterceptingLeGattCharacteristic InterceptingLeGattCharacteristic;

#endif

#pragma pop_macro("INCLUDE_ALL_InterceptingLeGattCharacteristic")
