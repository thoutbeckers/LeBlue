
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeSessionController")
#ifdef RESTRICT_LeSessionController
#define INCLUDE_ALL_LeSessionController 0
#else
#define INCLUDE_ALL_LeSessionController 1
#endif
#undef RESTRICT_LeSessionController

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeSessionController_) && (INCLUDE_ALL_LeSessionController || defined(INCLUDE_LeSessionController))
#define LeSessionController_

#define RESTRICT_LeMockController 1
#define INCLUDE_LeMockController 1
#include "LeMockController.h"

@class Event;
@class IOSByteArray;
@class IOSObjectArray;
@class JavaLangBoolean;
@class JavaLangException;
@class JavaUtilConcurrentLocksReentrantLock;
@class JavaUtilUUID;
@class LeDeviceMock;
@class LeEventType;
@class LeFormat;
@class LeGattCharacteristicMock;
@class LeGattServiceMock;
@class LeRemoteDeviceMock;
@class LeSessionController_SourceType;
@protocol JavaLangRunnable;
@protocol JavaUtilConcurrentLocksCondition;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol LeCharacteristicListener;
@protocol LeCharacteristicWriteListener;
@protocol LeDeviceListener;
@protocol LeGattCharacteristic;
@protocol LeRemoteDeviceListener;
@protocol Session;

@interface LeSessionController : NSObject < LeMockController > {
 @public
  jint counter_;
  jboolean strict_;
  JavaUtilConcurrentLocksReentrantLock *lock_;
  id<JavaUtilConcurrentLocksCondition> condition_;
  jint source_;
  IOSObjectArray *values_;
  Event *currentEvent_;
  jboolean waitingForEvent_;
  NSString *sessionName_;
  id<Session> session_;
  volatile_id mockedEvents_;
  volatile_id stackedEvent_;
  jboolean sessionIsRunning_;
  jboolean stopSession_;
  jlong executeNextEventAfter_;
  id<JavaUtilMap> characteristicsValues_;
  JavaLangException *sessionException_;
  id<JavaUtilMap> characteristicListeners_;
  id<JavaUtilMap> characteristicWriteListeners_;
  id<JavaUtilMap> devices_;
  id<JavaUtilMap> deviceKeys_;
  id<JavaUtilMap> remoteDevices_;
  id<JavaUtilMap> remoteDeviceKeys_;
  id<JavaUtilMap> gattServices_;
  id<JavaUtilMap> gattServicesKeys_;
  id<JavaUtilMap> deviceListeners_;
  id<JavaUtilMap> deviceListenerKeys_;
  id<JavaUtilMap> characteristics_;
  id<JavaUtilMap> characteristicsKeys_;
  id<JavaUtilMap> remoteDeviceListeners_;
}
@property (readonly, copy, class) NSString *TAG NS_SWIFT_NAME(TAG);

+ (NSString *)TAG;

#pragma mark Public

- (instancetype __nonnull)initWithSession:(id<Session>)session;

- (instancetype __nonnull)initWithSession:(id<Session>)session
                              withBoolean:(jboolean)strict;

- (void)addDeviceWithInt:(jint)key
        withLeDeviceMock:(LeDeviceMock *)mock;

- (jint)characteristicGetIntValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                                 withLeFormat:(LeFormat *)format
                                                      withInt:(jint)index;

- (IOSByteArray *)characteristicGetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock;

- (void)characteristicReadWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock;

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value;

- (void)characteristicSetValueWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)leGattCharacteristicMock
                                             withByteArray:(IOSByteArray *)value
                                       withJavaLangBoolean:(JavaLangBoolean *)withResponse;

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                     withLeDeviceMock:(LeDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments;

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
         withLeGattCharacteristicMock:(LeGattCharacteristicMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments;

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
                withLeGattServiceMock:(LeGattServiceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments;

- (jboolean)checkEventWithLeEventType:(LeEventType *)event
               withLeRemoteDeviceMock:(LeRemoteDeviceMock *)source
                    withNSStringArray:(IOSObjectArray *)arguments;

- (jboolean)checkEventWithSourceIdWithLeEventType:(LeEventType *)eventType
               withLeSessionController_SourceType:(LeSessionController_SourceType *)sourceType
                                          withInt:(jint)source
                                withNSStringArray:(IOSObjectArray *)arguments;

- (void)deviceAddListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                     withLeDeviceListener:(id<LeDeviceListener>)listener;

- (jboolean)deviceCheckBleHardwareAvailableWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (jboolean)deviceIsBtEnabledWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (void)deviceRemoveListenerWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                        withLeDeviceListener:(id<LeDeviceListener>)listener;

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                           withJavaUtilList:(id<JavaUtilList>)filters;

- (void)deviceStartScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock
                      withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)deviceStopScanningWithLeDeviceMock:(LeDeviceMock *)leDeviceMock;

- (id<LeCharacteristicListener>)getCharacteristicListenerWithInt:(jint)key;

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithInt:(jint)key;

- (id<LeDeviceListener>)getDeviceListenerWithInt:(jint)key;

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithInt:(jint)key;

- (id<Session>)getSession;

- (JavaLangException *)getSessionException;

- (void)pointReachedWithNSString:(NSString *)point;

- (void)remoteDeviceAddListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                           withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)remoteDeviceCloseWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceConnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceDisconnectWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (NSString *)remoteDeviceGetAddressWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (NSString *)remoteDeviceGetNameWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceReadRssiWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceRemoveListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                              withLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener;

- (void)remoteDeviceSetCharacteristicListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                              withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)remoteDeviceSetCharacteristicWriteListenerWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                       withLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                   withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (void)remoteDeviceStartServiceDiscoveryWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids;

- (jboolean)serviceEnableCharacteristicNotificationWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                        withJavaUtilUUID:(JavaUtilUUID *)characteristic;

- (id<LeGattCharacteristic>)serviceGetCharacteristicWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock
                                                         withJavaUtilUUID:(JavaUtilUUID *)uuid;

- (JavaUtilUUID *)serviceGetUuidWithLeGattServiceMock:(LeGattServiceMock *)leGattServiceMock;

- (void)startDefaultSession;

- (void)startSessionWithNSString:(NSString *)sessionName;

- (void)stopSession;

- (void)waitForEventWithEvent:(Event *)event;

- (void)waitForFinishedSession;

- (void)waitForPointWithNSString:(NSString *)point;

- (jboolean)waitTillSessionStarted;

#pragma mark Protected

- (void)addDeviceListenerWithInt:(jint)key
            withLeDeviceListener:(id<LeDeviceListener>)listener;

- (void)checkPause;

- (LeGattServiceMock *)createGattServiceWithInt:(jint)key;

- (LeGattServiceMock *)createGattServiceWithNSString:(NSString *)key;

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithInt:(jint)key;

- (LeGattCharacteristicMock *)createOrReturnCharacteristicWithNSString:(NSString *)key;

- (LeRemoteDeviceMock *)createOrReturnRemoteDeviceWithInt:(jint)key
                                         withLeDeviceMock:(LeDeviceMock *)deviceMock;

- (LeRemoteDeviceMock *)createRemoteDeviceWithInt:(jint)key
                                 withLeDeviceMock:(LeDeviceMock *)deviceMock;

- (jboolean)eventBooleanValue;

- (jboolean)eventBooleanValueWithInt:(jint)seq;

- (jint)eventIntValue;

- (NSString *)eventValue;

- (NSString *)eventValueWithInt:(jint)seq;

- (LeGattCharacteristicMock *)getCharacteristicWithInt:(jint)key;

- (LeGattCharacteristicMock *)getCharacteristicWithNSString:(NSString *)key;

- (jint)getCharacteristicKeyWithLeGattCharacteristicMock:(LeGattCharacteristicMock *)characteristic;

- (id<LeCharacteristicListener>)getCharacteristicListenerWithNSString:(NSString *)key;

- (id<LeCharacteristicWriteListener>)getCharacteristicWriteListenerWithNSString:(NSString *)key;

- (LeDeviceMock *)getDeviceWithInt:(jint)key;

- (LeDeviceMock *)getDeviceWithNSString:(NSString *)key;

- (jint)getDeviceKeyWithLeDeviceMock:(LeDeviceMock *)device;

- (id<LeDeviceListener>)getDeviceListenerWithNSString:(NSString *)key;

- (jint)getDeviceListenerKeyWithLeDeviceListener:(id<LeDeviceListener>)deviceListener;

- (jint)getGattServiceKeyWithLeGattServiceMock:(LeGattServiceMock *)LeGattServiceMock;

- (LeRemoteDeviceMock *)getRemoteDeviceWithInt:(jint)key;

- (LeRemoteDeviceMock *)getRemoteDeviceWithNSString:(NSString *)key;

- (jint)getRemoteDeviceKeyWithLeRemoteDeviceMock:(LeRemoteDeviceMock *)leRemoteDeviceMock;

- (id<LeRemoteDeviceListener>)getRemoteDeviceListenerWithNSString:(NSString *)key;

- (void)startSessionInThread;

- (void)updateCurrentEventWithEvent:(Event *)newCurrentEvent;

- (void)waitForPointOrEventWithNSString:(NSString *)point;

- (void)workOnEventWithEvent:(Event *)event;

#pragma mark Package-Private

- (void)runCurrentEventOnUiThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (jboolean)shouldLog;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeSessionController)

J2OBJC_FIELD_SETTER(LeSessionController, lock_, JavaUtilConcurrentLocksReentrantLock *)
J2OBJC_FIELD_SETTER(LeSessionController, condition_, id<JavaUtilConcurrentLocksCondition>)
J2OBJC_FIELD_SETTER(LeSessionController, values_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(LeSessionController, currentEvent_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController, sessionName_, NSString *)
J2OBJC_FIELD_SETTER(LeSessionController, session_, id<Session>)
J2OBJC_VOLATILE_FIELD_SETTER(LeSessionController, mockedEvents_, id<JavaUtilList>)
J2OBJC_VOLATILE_FIELD_SETTER(LeSessionController, stackedEvent_, Event *)
J2OBJC_FIELD_SETTER(LeSessionController, characteristicsValues_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, sessionException_, JavaLangException *)
J2OBJC_FIELD_SETTER(LeSessionController, characteristicListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, characteristicWriteListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, devices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, deviceKeys_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, remoteDevices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, remoteDeviceKeys_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, gattServices_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, gattServicesKeys_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, deviceListeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, deviceListenerKeys_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, characteristics_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, characteristicsKeys_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(LeSessionController, remoteDeviceListeners_, id<JavaUtilMap>)

inline NSString *LeSessionController_get_TAG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *LeSessionController_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(LeSessionController, TAG, NSString *)

FOUNDATION_EXPORT void LeSessionController_initWithSession_(LeSessionController *self, id<Session> session);

FOUNDATION_EXPORT LeSessionController *new_LeSessionController_initWithSession_(id<Session> session) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeSessionController *create_LeSessionController_initWithSession_(id<Session> session);

FOUNDATION_EXPORT void LeSessionController_initWithSession_withBoolean_(LeSessionController *self, id<Session> session, jboolean strict);

FOUNDATION_EXPORT LeSessionController *new_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeSessionController *create_LeSessionController_initWithSession_withBoolean_(id<Session> session, jboolean strict);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController)

@compatibility_alias HoutbeckeRsLeMockLeSessionController LeSessionController;

#endif

#if !defined (LeSessionController_SourceType_) && (INCLUDE_ALL_LeSessionController || defined(INCLUDE_LeSessionController_SourceType))
#define LeSessionController_SourceType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, LeSessionController_SourceType_Enum) {
  LeSessionController_SourceType_Enum_device = 0,
  LeSessionController_SourceType_Enum_remoteDevice = 1,
  LeSessionController_SourceType_Enum_gattService = 2,
  LeSessionController_SourceType_Enum_gattCharacteristic = 3,
};

@interface LeSessionController_SourceType : JavaLangEnum

@property (readonly, class, nonnull) LeSessionController_SourceType *device NS_SWIFT_NAME(device);
@property (readonly, class, nonnull) LeSessionController_SourceType *remoteDevice NS_SWIFT_NAME(remoteDevice);
@property (readonly, class, nonnull) LeSessionController_SourceType *gattService NS_SWIFT_NAME(gattService);
@property (readonly, class, nonnull) LeSessionController_SourceType *gattCharacteristic NS_SWIFT_NAME(gattCharacteristic);
+ (LeSessionController_SourceType * __nonnull)device;

+ (LeSessionController_SourceType * __nonnull)remoteDevice;

+ (LeSessionController_SourceType * __nonnull)gattService;

+ (LeSessionController_SourceType * __nonnull)gattCharacteristic;

#pragma mark Public

+ (LeSessionController_SourceType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (LeSessionController_SourceType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(LeSessionController_SourceType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeSessionController_SourceType *LeSessionController_SourceType_values_[];

inline LeSessionController_SourceType *LeSessionController_SourceType_get_device(void);
J2OBJC_ENUM_CONSTANT(LeSessionController_SourceType, device)

inline LeSessionController_SourceType *LeSessionController_SourceType_get_remoteDevice(void);
J2OBJC_ENUM_CONSTANT(LeSessionController_SourceType, remoteDevice)

inline LeSessionController_SourceType *LeSessionController_SourceType_get_gattService(void);
J2OBJC_ENUM_CONSTANT(LeSessionController_SourceType, gattService)

inline LeSessionController_SourceType *LeSessionController_SourceType_get_gattCharacteristic(void);
J2OBJC_ENUM_CONSTANT(LeSessionController_SourceType, gattCharacteristic)

FOUNDATION_EXPORT IOSObjectArray *LeSessionController_SourceType_values(void);

FOUNDATION_EXPORT LeSessionController_SourceType *LeSessionController_SourceType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeSessionController_SourceType *LeSessionController_SourceType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeSessionController_SourceType)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeSessionController")
