
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeEventType")
#ifdef RESTRICT_LeEventType
#define INCLUDE_ALL_LeEventType 0
#else
#define INCLUDE_ALL_LeEventType 1
#endif
#undef RESTRICT_LeEventType

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeEventType_) && (INCLUDE_ALL_LeEventType || defined(INCLUDE_LeEventType))
#define LeEventType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

#define RESTRICT_EventType 1
#define INCLUDE_EventType 1
#include "EventType.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, LeEventType_Enum) {
  LeEventType_Enum_deviceStartScanning = 0,
  LeEventType_Enum_deviceStopScanning = 1,
  LeEventType_Enum_deviceRemoveListener = 2,
  LeEventType_Enum_deviceCheckBleHardwareAvailable = 3,
  LeEventType_Enum_deviceIsBtEnabled = 4,
  LeEventType_Enum_deviceAddListener = 5,
  LeEventType_Enum_remoteDeviceConnect = 6,
  LeEventType_Enum_remoteDeviceStartServiceDiscovery = 7,
  LeEventType_Enum_remoteDeviceClose = 8,
  LeEventType_Enum_remoteDeviceDisconnect = 9,
  LeEventType_Enum_serviceEnableCharacteristicNotification = 10,
  LeEventType_Enum_remoteDeviceGetAddress = 11,
  LeEventType_Enum_remoteDeviceAddListener = 12,
  LeEventType_Enum_remoteDeviceRemoveListener = 13,
  LeEventType_Enum_remoteDeviceSetCharacteristicListener = 14,
  LeEventType_Enum_remoteDeviceSetCharacteristicWriteListener = 15,
  LeEventType_Enum_remoteDeviceReadRssi = 16,
  LeEventType_Enum_serviceGetUUID = 17,
  LeEventType_Enum_characteristicGetValue = 18,
  LeEventType_Enum_characteristicGetIntValue = 19,
  LeEventType_Enum_remoteDeviceGetName = 20,
  LeEventType_Enum_serviceGetCharacteristic = 21,
  LeEventType_Enum_characteristicSetValue = 22,
  LeEventType_Enum_characteristicRead = 23,
  LeEventType_Enum_remoteDeviceFound = 24,
  LeEventType_Enum_deviceState = 25,
  LeEventType_Enum_mockRemoteDeviceFound = 26,
  LeEventType_Enum_remoteDeviceConnected = 27,
  LeEventType_Enum_mockRemoteDeviceConnected = 28,
  LeEventType_Enum_remoteDeviceDisconnected = 29,
  LeEventType_Enum_remoteDeviceClosed = 30,
  LeEventType_Enum_mockRemoteDeviceDisconnected = 31,
  LeEventType_Enum_mockRemoteDeviceClosed = 32,
  LeEventType_Enum_remoteDeviceServicesDiscovered = 33,
  LeEventType_Enum_remoteDeviceRssiRead = 34,
  LeEventType_Enum_mockRemoteDeviceServicesDiscovered = 35,
  LeEventType_Enum_deviceRemoteDeviceServicesDiscovered = 36,
  LeEventType_Enum_characteristicChanged = 37,
  LeEventType_Enum_characteristicNotificationChanged = 38,
  LeEventType_Enum_characteristicWritten = 39,
  LeEventType_Enum_mockCharacteristicChanged = 40,
  LeEventType_Enum_mockCharacteristicChangedWithMockedValue = 41,
  LeEventType_Enum_mockCharacteristicMockedValue = 42,
  LeEventType_Enum_mockCharacteristicClearMockedValue = 43,
  LeEventType_Enum_mockCharacteristicNotificationChanged = 44,
  LeEventType_Enum_mockWaitForPoint = 45,
  LeEventType_Enum_mockPointReached = 46,
};

@interface LeEventType : JavaLangEnum < EventType >

@property (readonly, class, nonnull) LeEventType *deviceStartScanning NS_SWIFT_NAME(deviceStartScanning);
@property (readonly, class, nonnull) LeEventType *deviceStopScanning NS_SWIFT_NAME(deviceStopScanning);
@property (readonly, class, nonnull) LeEventType *deviceRemoveListener NS_SWIFT_NAME(deviceRemoveListener);
@property (readonly, class, nonnull) LeEventType *deviceCheckBleHardwareAvailable NS_SWIFT_NAME(deviceCheckBleHardwareAvailable);
@property (readonly, class, nonnull) LeEventType *deviceIsBtEnabled NS_SWIFT_NAME(deviceIsBtEnabled);
@property (readonly, class, nonnull) LeEventType *deviceAddListener NS_SWIFT_NAME(deviceAddListener);
@property (readonly, class, nonnull) LeEventType *remoteDeviceConnect NS_SWIFT_NAME(remoteDeviceConnect);
@property (readonly, class, nonnull) LeEventType *remoteDeviceStartServiceDiscovery NS_SWIFT_NAME(remoteDeviceStartServiceDiscovery);
@property (readonly, class, nonnull) LeEventType *remoteDeviceClose NS_SWIFT_NAME(remoteDeviceClose);
@property (readonly, class, nonnull) LeEventType *remoteDeviceDisconnect NS_SWIFT_NAME(remoteDeviceDisconnect);
@property (readonly, class, nonnull) LeEventType *serviceEnableCharacteristicNotification NS_SWIFT_NAME(serviceEnableCharacteristicNotification);
@property (readonly, class, nonnull) LeEventType *remoteDeviceGetAddress NS_SWIFT_NAME(remoteDeviceGetAddress);
@property (readonly, class, nonnull) LeEventType *remoteDeviceAddListener NS_SWIFT_NAME(remoteDeviceAddListener);
@property (readonly, class, nonnull) LeEventType *remoteDeviceRemoveListener NS_SWIFT_NAME(remoteDeviceRemoveListener);
@property (readonly, class, nonnull) LeEventType *remoteDeviceSetCharacteristicListener NS_SWIFT_NAME(remoteDeviceSetCharacteristicListener);
@property (readonly, class, nonnull) LeEventType *remoteDeviceSetCharacteristicWriteListener NS_SWIFT_NAME(remoteDeviceSetCharacteristicWriteListener);
@property (readonly, class, nonnull) LeEventType *remoteDeviceReadRssi NS_SWIFT_NAME(remoteDeviceReadRssi);
@property (readonly, class, nonnull) LeEventType *serviceGetUUID NS_SWIFT_NAME(serviceGetUUID);
@property (readonly, class, nonnull) LeEventType *characteristicGetValue NS_SWIFT_NAME(characteristicGetValue);
@property (readonly, class, nonnull) LeEventType *characteristicGetIntValue NS_SWIFT_NAME(characteristicGetIntValue);
@property (readonly, class, nonnull) LeEventType *remoteDeviceGetName NS_SWIFT_NAME(remoteDeviceGetName);
@property (readonly, class, nonnull) LeEventType *serviceGetCharacteristic NS_SWIFT_NAME(serviceGetCharacteristic);
@property (readonly, class, nonnull) LeEventType *characteristicSetValue NS_SWIFT_NAME(characteristicSetValue);
@property (readonly, class, nonnull) LeEventType *characteristicRead NS_SWIFT_NAME(characteristicRead);
@property (readonly, class, nonnull) LeEventType *remoteDeviceFound NS_SWIFT_NAME(remoteDeviceFound);
@property (readonly, class, nonnull) LeEventType *deviceState NS_SWIFT_NAME(deviceState);
@property (readonly, class, nonnull) LeEventType *mockRemoteDeviceFound NS_SWIFT_NAME(mockRemoteDeviceFound);
@property (readonly, class, nonnull) LeEventType *remoteDeviceConnected NS_SWIFT_NAME(remoteDeviceConnected);
@property (readonly, class, nonnull) LeEventType *mockRemoteDeviceConnected NS_SWIFT_NAME(mockRemoteDeviceConnected);
@property (readonly, class, nonnull) LeEventType *remoteDeviceDisconnected NS_SWIFT_NAME(remoteDeviceDisconnected);
@property (readonly, class, nonnull) LeEventType *remoteDeviceClosed NS_SWIFT_NAME(remoteDeviceClosed);
@property (readonly, class, nonnull) LeEventType *mockRemoteDeviceDisconnected NS_SWIFT_NAME(mockRemoteDeviceDisconnected);
@property (readonly, class, nonnull) LeEventType *mockRemoteDeviceClosed NS_SWIFT_NAME(mockRemoteDeviceClosed);
@property (readonly, class, nonnull) LeEventType *remoteDeviceServicesDiscovered NS_SWIFT_NAME(remoteDeviceServicesDiscovered);
@property (readonly, class, nonnull) LeEventType *remoteDeviceRssiRead NS_SWIFT_NAME(remoteDeviceRssiRead);
@property (readonly, class, nonnull) LeEventType *mockRemoteDeviceServicesDiscovered NS_SWIFT_NAME(mockRemoteDeviceServicesDiscovered);
@property (readonly, class, nonnull) LeEventType *deviceRemoteDeviceServicesDiscovered NS_SWIFT_NAME(deviceRemoteDeviceServicesDiscovered);
@property (readonly, class, nonnull) LeEventType *characteristicChanged NS_SWIFT_NAME(characteristicChanged);
@property (readonly, class, nonnull) LeEventType *characteristicNotificationChanged NS_SWIFT_NAME(characteristicNotificationChanged);
@property (readonly, class, nonnull) LeEventType *characteristicWritten NS_SWIFT_NAME(characteristicWritten);
@property (readonly, class, nonnull) LeEventType *mockCharacteristicChanged NS_SWIFT_NAME(mockCharacteristicChanged);
@property (readonly, class, nonnull) LeEventType *mockCharacteristicChangedWithMockedValue NS_SWIFT_NAME(mockCharacteristicChangedWithMockedValue);
@property (readonly, class, nonnull) LeEventType *mockCharacteristicMockedValue NS_SWIFT_NAME(mockCharacteristicMockedValue);
@property (readonly, class, nonnull) LeEventType *mockCharacteristicClearMockedValue NS_SWIFT_NAME(mockCharacteristicClearMockedValue);
@property (readonly, class, nonnull) LeEventType *mockCharacteristicNotificationChanged NS_SWIFT_NAME(mockCharacteristicNotificationChanged);
@property (readonly, class, nonnull) LeEventType *mockWaitForPoint NS_SWIFT_NAME(mockWaitForPoint);
@property (readonly, class, nonnull) LeEventType *mockPointReached NS_SWIFT_NAME(mockPointReached);
+ (LeEventType * __nonnull)deviceStartScanning;

+ (LeEventType * __nonnull)deviceStopScanning;

+ (LeEventType * __nonnull)deviceRemoveListener;

+ (LeEventType * __nonnull)deviceCheckBleHardwareAvailable;

+ (LeEventType * __nonnull)deviceIsBtEnabled;

+ (LeEventType * __nonnull)deviceAddListener;

+ (LeEventType * __nonnull)remoteDeviceConnect;

+ (LeEventType * __nonnull)remoteDeviceStartServiceDiscovery;

+ (LeEventType * __nonnull)remoteDeviceClose;

+ (LeEventType * __nonnull)remoteDeviceDisconnect;

+ (LeEventType * __nonnull)serviceEnableCharacteristicNotification;

+ (LeEventType * __nonnull)remoteDeviceGetAddress;

+ (LeEventType * __nonnull)remoteDeviceAddListener;

+ (LeEventType * __nonnull)remoteDeviceRemoveListener;

+ (LeEventType * __nonnull)remoteDeviceSetCharacteristicListener;

+ (LeEventType * __nonnull)remoteDeviceSetCharacteristicWriteListener;

+ (LeEventType * __nonnull)remoteDeviceReadRssi;

+ (LeEventType * __nonnull)serviceGetUUID;

+ (LeEventType * __nonnull)characteristicGetValue;

+ (LeEventType * __nonnull)characteristicGetIntValue;

+ (LeEventType * __nonnull)remoteDeviceGetName;

+ (LeEventType * __nonnull)serviceGetCharacteristic;

+ (LeEventType * __nonnull)characteristicSetValue;

+ (LeEventType * __nonnull)characteristicRead;

+ (LeEventType * __nonnull)remoteDeviceFound;

+ (LeEventType * __nonnull)deviceState;

+ (LeEventType * __nonnull)mockRemoteDeviceFound;

+ (LeEventType * __nonnull)remoteDeviceConnected;

+ (LeEventType * __nonnull)mockRemoteDeviceConnected;

+ (LeEventType * __nonnull)remoteDeviceDisconnected;

+ (LeEventType * __nonnull)remoteDeviceClosed;

+ (LeEventType * __nonnull)mockRemoteDeviceDisconnected;

+ (LeEventType * __nonnull)mockRemoteDeviceClosed;

+ (LeEventType * __nonnull)remoteDeviceServicesDiscovered;

+ (LeEventType * __nonnull)remoteDeviceRssiRead;

+ (LeEventType * __nonnull)mockRemoteDeviceServicesDiscovered;

+ (LeEventType * __nonnull)deviceRemoteDeviceServicesDiscovered;

+ (LeEventType * __nonnull)characteristicChanged;

+ (LeEventType * __nonnull)characteristicNotificationChanged;

+ (LeEventType * __nonnull)characteristicWritten;

+ (LeEventType * __nonnull)mockCharacteristicChanged;

+ (LeEventType * __nonnull)mockCharacteristicChangedWithMockedValue;

+ (LeEventType * __nonnull)mockCharacteristicMockedValue;

+ (LeEventType * __nonnull)mockCharacteristicClearMockedValue;

+ (LeEventType * __nonnull)mockCharacteristicNotificationChanged;

+ (LeEventType * __nonnull)mockWaitForPoint;

+ (LeEventType * __nonnull)mockPointReached;

#pragma mark Public

+ (LeEventType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (LeEventType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(LeEventType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeEventType *LeEventType_values_[];

inline LeEventType *LeEventType_get_deviceStartScanning(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceStartScanning)

inline LeEventType *LeEventType_get_deviceStopScanning(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceStopScanning)

inline LeEventType *LeEventType_get_deviceRemoveListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceRemoveListener)

inline LeEventType *LeEventType_get_deviceCheckBleHardwareAvailable(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceCheckBleHardwareAvailable)

inline LeEventType *LeEventType_get_deviceIsBtEnabled(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceIsBtEnabled)

inline LeEventType *LeEventType_get_deviceAddListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceAddListener)

inline LeEventType *LeEventType_get_remoteDeviceConnect(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceConnect)

inline LeEventType *LeEventType_get_remoteDeviceStartServiceDiscovery(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceStartServiceDiscovery)

inline LeEventType *LeEventType_get_remoteDeviceClose(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceClose)

inline LeEventType *LeEventType_get_remoteDeviceDisconnect(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceDisconnect)

inline LeEventType *LeEventType_get_serviceEnableCharacteristicNotification(void);
J2OBJC_ENUM_CONSTANT(LeEventType, serviceEnableCharacteristicNotification)

inline LeEventType *LeEventType_get_remoteDeviceGetAddress(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceGetAddress)

inline LeEventType *LeEventType_get_remoteDeviceAddListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceAddListener)

inline LeEventType *LeEventType_get_remoteDeviceRemoveListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceRemoveListener)

inline LeEventType *LeEventType_get_remoteDeviceSetCharacteristicListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceSetCharacteristicListener)

inline LeEventType *LeEventType_get_remoteDeviceSetCharacteristicWriteListener(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceSetCharacteristicWriteListener)

inline LeEventType *LeEventType_get_remoteDeviceReadRssi(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceReadRssi)

inline LeEventType *LeEventType_get_serviceGetUUID(void);
J2OBJC_ENUM_CONSTANT(LeEventType, serviceGetUUID)

inline LeEventType *LeEventType_get_characteristicGetValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicGetValue)

inline LeEventType *LeEventType_get_characteristicGetIntValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicGetIntValue)

inline LeEventType *LeEventType_get_remoteDeviceGetName(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceGetName)

inline LeEventType *LeEventType_get_serviceGetCharacteristic(void);
J2OBJC_ENUM_CONSTANT(LeEventType, serviceGetCharacteristic)

inline LeEventType *LeEventType_get_characteristicSetValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicSetValue)

inline LeEventType *LeEventType_get_characteristicRead(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicRead)

inline LeEventType *LeEventType_get_remoteDeviceFound(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceFound)

inline LeEventType *LeEventType_get_deviceState(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceState)

inline LeEventType *LeEventType_get_mockRemoteDeviceFound(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockRemoteDeviceFound)

inline LeEventType *LeEventType_get_remoteDeviceConnected(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceConnected)

inline LeEventType *LeEventType_get_mockRemoteDeviceConnected(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockRemoteDeviceConnected)

inline LeEventType *LeEventType_get_remoteDeviceDisconnected(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceDisconnected)

inline LeEventType *LeEventType_get_remoteDeviceClosed(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceClosed)

inline LeEventType *LeEventType_get_mockRemoteDeviceDisconnected(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockRemoteDeviceDisconnected)

inline LeEventType *LeEventType_get_mockRemoteDeviceClosed(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockRemoteDeviceClosed)

inline LeEventType *LeEventType_get_remoteDeviceServicesDiscovered(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceServicesDiscovered)

inline LeEventType *LeEventType_get_remoteDeviceRssiRead(void);
J2OBJC_ENUM_CONSTANT(LeEventType, remoteDeviceRssiRead)

inline LeEventType *LeEventType_get_mockRemoteDeviceServicesDiscovered(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockRemoteDeviceServicesDiscovered)

inline LeEventType *LeEventType_get_deviceRemoteDeviceServicesDiscovered(void);
J2OBJC_ENUM_CONSTANT(LeEventType, deviceRemoteDeviceServicesDiscovered)

inline LeEventType *LeEventType_get_characteristicChanged(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicChanged)

inline LeEventType *LeEventType_get_characteristicNotificationChanged(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicNotificationChanged)

inline LeEventType *LeEventType_get_characteristicWritten(void);
J2OBJC_ENUM_CONSTANT(LeEventType, characteristicWritten)

inline LeEventType *LeEventType_get_mockCharacteristicChanged(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockCharacteristicChanged)

inline LeEventType *LeEventType_get_mockCharacteristicChangedWithMockedValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockCharacteristicChangedWithMockedValue)

inline LeEventType *LeEventType_get_mockCharacteristicMockedValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockCharacteristicMockedValue)

inline LeEventType *LeEventType_get_mockCharacteristicClearMockedValue(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockCharacteristicClearMockedValue)

inline LeEventType *LeEventType_get_mockCharacteristicNotificationChanged(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockCharacteristicNotificationChanged)

inline LeEventType *LeEventType_get_mockWaitForPoint(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockWaitForPoint)

inline LeEventType *LeEventType_get_mockPointReached(void);
J2OBJC_ENUM_CONSTANT(LeEventType, mockPointReached)

FOUNDATION_EXPORT IOSObjectArray *LeEventType_values(void);

FOUNDATION_EXPORT LeEventType *LeEventType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeEventType *LeEventType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeEventType)

@compatibility_alias HoutbeckeRsLeSessionLeEventType LeEventType;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeEventType")
