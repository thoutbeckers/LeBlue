
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeSessionInterceptor")
#ifdef RESTRICT_LeSessionInterceptor
#define INCLUDE_ALL_LeSessionInterceptor 0
#else
#define INCLUDE_ALL_LeSessionInterceptor 1
#endif
#undef RESTRICT_LeSessionInterceptor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeSessionInterceptor_) && (INCLUDE_ALL_LeSessionInterceptor || defined(INCLUDE_LeSessionInterceptor))
#define LeSessionInterceptor_

#define RESTRICT_LeInterceptor 1
#define INCLUDE_LeInterceptor 1
#include "LeInterceptor.h"

@class BaseIntercepting;
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
@class LeEventType;
@class LeFormat;
@class LeGattStatus;
@protocol EventSink;
@protocol JavaUtilList;
@protocol LeScanRecord;

@interface LeSessionInterceptor : LeInterceptor {
 @public
  id<EventSink> sink_;
}

#pragma mark Public

- (instancetype __nonnull)initWithEventSink:(id<EventSink>)sink;

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
                     withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                            withInt:(jint)rssi
                                   withLeScanRecord:(id<LeScanRecord>)leScanRecord;

- (void)deviceStateWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withLeDeviceState:(LeDeviceState *)leDeviceState;

- (void)disconnectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                  withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)disconnectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice;

- (void)enabledCharacteristicNotificationWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                      withJavaUtilUUID:(JavaUtilUUID *)characteristic
                                                           withBoolean:(jboolean)enabled;

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

- (void)servicesDiscoveredWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                        withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                                withLeGattStatus:(LeGattStatus *)status
                              withInterceptingLeGattServiceArray:(IOSObjectArray *)iLeGattServices;

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
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

#pragma mark Protected

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
             withBaseIntercepting:(BaseIntercepting *)secondSource
             withBaseIntercepting:(BaseIntercepting *)thirdSource
                withNSStringArray:(IOSObjectArray *)values;

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
             withBaseIntercepting:(BaseIntercepting *)secondSource
                withNSStringArray:(IOSObjectArray *)values;

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
                withNSStringArray:(IOSObjectArray *)values;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionInterceptor)

J2OBJC_FIELD_SETTER(LeSessionInterceptor, sink_, id<EventSink>)

FOUNDATION_EXPORT void LeSessionInterceptor_initWithEventSink_(LeSessionInterceptor *self, id<EventSink> sink);

FOUNDATION_EXPORT LeSessionInterceptor *new_LeSessionInterceptor_initWithEventSink_(id<EventSink> sink) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeSessionInterceptor *create_LeSessionInterceptor_initWithEventSink_(id<EventSink> sink);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionInterceptor)

@compatibility_alias HoutbeckeRsLeInterceptorLeSessionInterceptor LeSessionInterceptor;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeSessionInterceptor")
