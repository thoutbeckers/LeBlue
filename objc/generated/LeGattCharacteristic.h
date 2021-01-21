
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattCharacteristic")
#ifdef RESTRICT_LeGattCharacteristic
#define INCLUDE_ALL_LeGattCharacteristic 0
#else
#define INCLUDE_ALL_LeGattCharacteristic 1
#endif
#undef RESTRICT_LeGattCharacteristic

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattCharacteristic_) && (INCLUDE_ALL_LeGattCharacteristic || defined(INCLUDE_LeGattCharacteristic))
#define LeGattCharacteristic_

@class IOSByteArray;
@class LeFormat;

@protocol LeGattCharacteristic < JavaObject >

- (IOSByteArray *)getValue;

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index;

- (void)setValueWithByteArray:(IOSByteArray *)value;

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse;

- (void)read;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattCharacteristic)

J2OBJC_TYPE_LITERAL_HEADER(LeGattCharacteristic)

#define HoutbeckeRsLeLeGattCharacteristic LeGattCharacteristic

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattCharacteristic")
