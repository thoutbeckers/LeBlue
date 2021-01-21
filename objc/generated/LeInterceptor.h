
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeInterceptor")
#ifdef RESTRICT_LeInterceptor
#define INCLUDE_ALL_LeInterceptor 0
#else
#define INCLUDE_ALL_LeInterceptor 1
#endif
#undef RESTRICT_LeInterceptor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeInterceptor_) && (INCLUDE_ALL_LeInterceptor || defined(INCLUDE_LeInterceptor))
#define LeInterceptor_

@class IOSByteArray;
@class IOSObjectArray;
@class InterceptingLeCharacteristicListener;
@class InterceptingLeCharacteristicWriteListener;
@class InterceptingLeDevice;
@class InterceptingLeDeviceListener;
@class InterceptingLeGattCharacteristic;
@class InterceptingLeGattService;
@class InterceptingLeRemoteDevice;
@class InterceptingLeRemoteDeviceListener;
@class JavaLangBoolean;
@class JavaUtilUUID;
@class LeDeviceState;
@class LeFormat;
@class LeGattStatus;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeDevice;
@protocol LeDeviceListener;
@protocol LeGattCharacteristic;
@protocol LeGattService;
@protocol LeRemoteDevice;
@protocol LeRemoteDeviceListener;
@protocol LeScanRecord;

@interface LeInterceptor : NSObject {
 @public
  id<JavaUtilMap> iDevices_;
  id<JavaUtilMap> iDeviceListeners_;
  id<JavaUtilMap> iRemoteDevices_;
  id<JavaUtilMap> iRemoteDeviceListeners_;
  id<JavaUtilMap> iGattServices_;
  id<JavaUtilMap> iGattCharacteristics_;
  id<JavaUtilMap> iCharacteristicListeners_;
  id<JavaUtilMap> iCharacteristicWriteListeners_;
  volatile_jint counter_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (void)characteristicChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                     withJavaUtilUUID:(JavaUtilUUID *)uuid
                                       withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                 withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic;

- (void)characteristicListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iCharacteristicsListener
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)characteristicNotificationChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                                 withJavaUtilUUID:(JavaUtilUUID *)uuid
                                                   withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                              withJavaLangBoolean:(JavaLangBoolean *)success;

- (void)characteristicWriteListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iCharacteristicsWriteListener
                                               withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)characteristicWrittenWithInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iLeCharacteristicWriteListener
                                                          withJavaUtilUUID:(JavaUtilUUID *)uuid
                                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                      withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                       withJavaLangBoolean:(JavaLangBoolean *)success;

- (void)checkedBleHardwareAvailableWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                                withBoolean:(jboolean)bleHardwareEnabled;

- (void)closedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                            withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                      withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)closingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)connectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                               withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                         withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)connectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)deviceFoundWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                     withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)ileRemoteDevice
                                            withInt:(jint)rssi
                                   withLeScanRecord:(id<LeScanRecord>)scanrecord;

- (void)deviceStateWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withLeDeviceState:(LeDeviceState *)deviceState;

- (void)disconnectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                  withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)disconnectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)enabledCharacteristicNotificationWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                      withJavaUtilUUID:(JavaUtilUUID *)characteristic
                                                           withBoolean:(jboolean)enabled;

- (InterceptingLeCharacteristicListener *)getInterceptingCharacteristicsListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener;

- (InterceptingLeCharacteristicWriteListener *)getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener;

- (InterceptingLeDevice *)getInterceptingLeDeviceWithLeDevice:(id<LeDevice>)leDevice;

- (InterceptingLeDeviceListener *)getInterceptingLeDeviceListenerWithLeDeviceListener:(id<LeDeviceListener>)listener;

- (InterceptingLeGattCharacteristic *)getInterceptingLeGattCharacteristicWithLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic;

- (InterceptingLeGattService *)getInterceptingLeGattServiceWithLeGattService:(id<LeGattService>)leGattService;

- (InterceptingLeRemoteDevice *)getInterceptingLeRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice;

- (InterceptingLeRemoteDeviceListener *)getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)gotAddressWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                    withNSString:(NSString *)address;

- (void)gotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                  withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic;

- (void)gotIntValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                           withLeFormat:(LeFormat *)format
                                                withInt:(jint)value;

- (void)gotRemoteDeviceNameWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withNSString:(NSString *)name;

- (void)gotUUIDWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                            withJavaUtilUUID:(JavaUtilUUID *)uuid;

- (void)gotValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value;

- (void)listenerAddedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
             withInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iListener;

- (void)listenerRemovedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice;

- (void)readWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic;

- (void)readRssiWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)remoteListenerAddedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                   withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener;

- (void)remoteListenerRemovedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                     withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener;

- (void)rssiReadWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                              withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                        withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                               withInt:(jint)rssi;

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (InterceptingLeGattCharacteristic *)serviceGotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic;

- (void)servicesDiscoveredWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                        withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                                withLeGattStatus:(LeGattStatus *)status
                              withInterceptingLeGattServiceArray:(IOSObjectArray *)iLeGattServices;

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value;

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value
                                 withJavaLangBoolean:(JavaLangBoolean *)withResponse;

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice;

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                               withJavaUtilList:(id<JavaUtilList>)filters;

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)stoppedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice;

- (void)wasBtEnabledWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                 withBoolean:(jboolean)btEnabled;

@end

J2OBJC_EMPTY_STATIC_INIT(LeInterceptor)

J2OBJC_FIELD_SETTER(LeInterceptor, iDevices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iDeviceListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iRemoteDevices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iRemoteDeviceListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iGattServices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iGattCharacteristics_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iCharacteristicListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeInterceptor, iCharacteristicWriteListeners_, id<JavaUtilMap>)

FOUNDATION_EXPORT void LeInterceptor_init(LeInterceptor *self);

J2OBJC_TYPE_LITERAL_HEADER(LeInterceptor)

@compatibility_alias HoutbeckeRsLeInterceptorLeInterceptor LeInterceptor;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeInterceptor")
