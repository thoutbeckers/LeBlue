
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MockerObject")
#ifdef RESTRICT_MockerObject
#define INCLUDE_ALL_MockerObject 0
#else
#define INCLUDE_ALL_MockerObject 1
#endif
#undef RESTRICT_MockerObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (MockerObject_) && (INCLUDE_ALL_MockerObject || defined(INCLUDE_MockerObject))
#define MockerObject_

#define RESTRICT_Mocker 1
#define INCLUDE_Mocker 1
#include "Mocker.h"

@class Event;
@class IOSObjectArray;
@class LeEventType;
@class MockedResponseObject;
@class SessionObject;
@protocol EventType;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol LeMockController;
@protocol MockedResponse;

@interface MockerObject : NSObject < Mocker > {
 @public
  id<JavaUtilMap> mocks_;
  id<JavaUtilMap> listeners_;
  jboolean mockDeviceListeners_;
  jboolean mockRemoteDeviceListeners_;
  jboolean mockCharacteristicsListeners_;
  jint defaultDelay_;
  jint sessionSource_;
  SessionObject *sessionObject_;
  SessionObject *and__;
}
@property (class) jint sourceCounter NS_SWIFT_NAME(sourceCounter);

+ (jint)sourceCounter;

+ (void)setSourceCounter:(jint)value;

#pragma mark Public

- (instancetype __nonnull)initWithSessionObject:(SessionObject *)sessionObject
                                        withInt:(jint)sessionSource;

- (SessionObject *)end;

- (IOSObjectArray *)getCharacteristicListenersWithLeMockController:(id<LeMockController>)controller
                                                           withInt:(jint)characteristic;

- (IOSObjectArray *)getDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                   withInt:(jint)device;

- (MockedResponseObject *)getFirstMockObjectWithEventType:(id<EventType>)method;

- (MockedResponseObject *)getFirstMockObjectWithInt:(jint)source
                                      withEventType:(id<EventType>)method;

- (IOSObjectArray *)getRemoteDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                         withInt:(jint)remoteDevice;

- (id<MockedResponse>)mockWithLeMockController:(id<LeMockController>)controller
                               withLeEventType:(LeEventType *)type
                                       withInt:(jint)source
                             withNSStringArray:(IOSObjectArray *)arguments;

+ (MockerObject *)newMockerWithSessionObject:(SessionObject *)sessionObject
                                     withInt:(jint)defaultSource OBJC_METHOD_FAMILY_NONE;

- (MockerObject *)withDelayWithInt:(jint)delay;

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                              withEvent:(Event *)event
                      withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withMockWithEventType:(id<EventType>)method
                     withMockedResponse:(id<MockedResponse>)response;

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                      withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withMockWithEventType:(id<EventType>)method
                           withNSString:(NSString *)value;

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                           withNSString:(NSString *)argument
                                withInt:(jint)argumentPos
                      withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                        withEvent:(Event *)event
                withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)method
               withMockedResponse:(id<MockedResponse>)response;

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)method
                     withNSString:(NSString *)value;

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                     withNSString:(NSString *)argument
                          withInt:(jint)argumentPos
                withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)method
                             withMockedResponseObject:(MockedResponseObject *)response;

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)type
                                    withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)type
                                         withNSString:(NSString *)argument
                                              withInt:(jint)argumentPos
                                    withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)method
                       withMockedResponseObject:(MockedResponseObject *)response;

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)type
                              withNSStringArray:(IOSObjectArray *)values;

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)type
                                   withNSString:(NSString *)argument
                                        withInt:(jint)argumentPos
                              withNSStringArray:(IOSObjectArray *)values;

#pragma mark Package-Private

- (NSString *)addListenerWithInt:(jint)source;

- (jint)getDelay;

- (id<JavaUtilCollection>)getListenersSetWithInt:(jint)source;

- (id<JavaUtilMap>)getMocksWithInt:(jint)source;

- (id<JavaUtilList>)getMocksListWithInt:(jint)source
                          withEventType:(id<EventType>)type;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(MockerObject)

J2OBJC_FIELD_SETTER(MockerObject, mocks_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(MockerObject, listeners_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(MockerObject, sessionObject_, SessionObject *)
J2OBJC_FIELD_SETTER(MockerObject, and__, SessionObject *)

inline jint MockerObject_get_sourceCounter(void);
inline jint MockerObject_set_sourceCounter(jint value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT volatile_jint MockerObject_sourceCounter;
J2OBJC_STATIC_FIELD_PRIMITIVE_VOLATILE(MockerObject, sourceCounter, jint)

FOUNDATION_EXPORT void MockerObject_initWithSessionObject_withInt_(MockerObject *self, SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT MockerObject *new_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT MockerObject *create_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT MockerObject *MockerObject_newMockerWithSessionObject_withInt_(SessionObject *sessionObject, jint defaultSource);

J2OBJC_TYPE_LITERAL_HEADER(MockerObject)

@compatibility_alias HoutbeckeRsLeSessionMockerObject MockerObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_MockerObject")
