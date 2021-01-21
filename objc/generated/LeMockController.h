
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeMockController")
#ifdef RESTRICT_LeMockController
#define INCLUDE_ALL_LeMockController 0
#else
#define INCLUDE_ALL_LeMockController 1
#endif
#undef RESTRICT_LeMockController

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeMockController_) && (INCLUDE_ALL_LeMockController || defined(INCLUDE_LeMockController))
#define LeMockController_

@class IOSByteArray;
@class IOSObjectArray;
@class JavaLangBoolean;
@class JavaUtilUUID;
@class LeDeviceMock;
@class LeFormat;
@class LeGattCharacteristicMock;
@class LeGattServiceMock;
@class LeRemoteDeviceMock;
@protocol JavaUtilList;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeDeviceListener;
@protocol LeGattCharacteristic;
@protocol LeRemoteDeviceListener;

@protocol LeMockController < JavaObject >

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                      withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                           withJavaUtilList:(id<JavaUtilList>)filters;

- (void)deviceStopScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (void)remoteDeviceConnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)remoteDeviceCloseWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceDisconnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (jboolean)serviceEnableCharacteristicNotificationWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                        withJavaUtilUUID:(JavaUtilUUID *)characteristic;

- (void)deviceAddListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                     withLeDeviceListener:(id<LeDeviceListener>)listener;

- (void)deviceRemoveListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                        withLeDeviceListener:(id<LeDeviceListener>)listener;

- (jboolean)deviceCheckBleHardwareAvailableWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (jboolean)deviceIsBtEnabledWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (NSString *)remoteDeviceGetAddressWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (NSString *)remoteDeviceGetNameWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithInt:(jint)key;

- (void)remoteDeviceAddListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                           withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)remoteDeviceRemoveListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                              withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)addDeviceWithInt:(jint)key
        withLeDeviceMock:(LeDeviceMock *)mock;

- (id<LeDeviceListener>)getDeviceListenerWithInt:(jint)key;

- (id<LeGattCharacteristic>)serviceGetCharacteristicWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                         withJavaUtilUUID:(JavaUtilUUID *)uuid;

- (JavaUtilUUID *)serviceGetUuidWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock;

- (IOSByteArray *)characteristicGetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock;

- (jint)characteristicGetIntValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                                 withLeFormat:(LeFormat *)format
                                                      withInt:(jint)index;

- (id<LeCharacteristicListener>)getCharacteristicListenerWithInt:(jint)key;

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithInt:(jint)key;

- (void)remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                              withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                   withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value;

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value
                                       withJavaLangBoolean:(JavaLangBoolean *)withResponse;

- (void)remoteDeviceReadRssiWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)characteristicReadWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock;

@end

J2OBJC_EMPTY_STATIC_INIT(LeMockController)

J2OBJC_TYPE_LITERAL_HEADER(LeMockController)

#define HoutbeckeRsLeMockLeMockController LeMockController

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeMockController")
