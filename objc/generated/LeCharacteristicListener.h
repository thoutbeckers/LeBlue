
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeCharacteristicListener")
#ifdef RESTRICT_LeCharacteristicListener
#define INCLUDE_ALL_LeCharacteristicListener 0
#else
#define INCLUDE_ALL_LeCharacteristicListener 1
#endif
#undef RESTRICT_LeCharacteristicListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeCharacteristicListener_) && (INCLUDE_ALL_LeCharacteristicListener || defined(INCLUDE_LeCharacteristicListener))
#define LeCharacteristicListener_

@class JavaUtilUUID;
@protocol LeGattCharacteristic;
@protocol LeRemoteDevice;

@protocol LeCharacteristicListener < JavaObject >

- (void)leCharacteristicChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                             withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                       withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic;

- (void)leCharacteristicNotificationChangedWithJavaUtilUUID:(JavaUtilUUID *)uuid
                                         withLeRemoteDevice:(id<LeRemoteDevice>)remoteDevice
                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic
                                                withBoolean:(jboolean)success;

@end

J2OBJC_EMPTY_STATIC_INIT(LeCharacteristicListener)

J2OBJC_TYPE_LITERAL_HEADER(LeCharacteristicListener)

#define HoutbeckeRsLeLeCharacteristicListener LeCharacteristicListener

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeCharacteristicListener")
