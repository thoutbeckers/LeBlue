
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeCharacteristicWriteListener")
#ifdef RESTRICT_LeCharacteristicWriteListener
#define INCLUDE_ALL_LeCharacteristicWriteListener 0
#else
#define INCLUDE_ALL_LeCharacteristicWriteListener 1
#endif
#undef RESTRICT_LeCharacteristicWriteListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeCharacteristicWriteListener_) && (INCLUDE_ALL_LeCharacteristicWriteListener || defined(INCLUDE_LeCharacteristicWriteListener))
#define LeCharacteristicWriteListener_

@class JavaUtilUUID;
@protocol LeGattCharacteristic;
@protocol LeRemoteDevice;

@protocol LeCharacteristicWriteListener < JavaObject >

- (void)leCharacteristicWrittenWithJavaUtilUUID:(JavaUtilUUID * __nonnull)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice> __nonnull)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic> __nonnull)characteristic
                                    withBoolean:(jboolean)success;

@end

J2OBJC_EMPTY_STATIC_INIT(LeCharacteristicWriteListener)

J2OBJC_TYPE_LITERAL_HEADER(LeCharacteristicWriteListener)

#define HoutbeckeRsLeLeCharacteristicWriteListener LeCharacteristicWriteListener

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeCharacteristicWriteListener")
