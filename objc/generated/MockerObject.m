
#include "Event.h"
#include "EventType.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeDeviceListener.h"
#include "LeEventType.h"
#include "LeMockController.h"
#include "LeRemoteDeviceListener.h"
#include "MockedResponse.h"
#include "MockedResponseObject.h"
#include "MockerObject.h"
#include "SessionObject.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

volatile_jint MockerObject_sourceCounter = 0;

@implementation MockerObject

- (jint)getDelay {
  return defaultDelay_ == -1 ? [((SessionObject *) nil_chk(sessionObject_)) getDefaultDelay] : defaultDelay_;
}

- (SessionObject *)end {
  return sessionObject_;
}

- (instancetype)initWithSessionObject:(SessionObject *)sessionObject
                              withInt:(jint)sessionSource {
  MockerObject_initWithSessionObject_withInt_(self, sessionObject, sessionSource);
  return self;
}

+ (MockerObject *)newMockerWithSessionObject:(SessionObject *)sessionObject
                                     withInt:(jint)defaultSource {
  return MockerObject_newMockerWithSessionObject_withInt_(sessionObject, defaultSource);
}

- (MockerObject *)withDelayWithInt:(jint)delay {
  self->defaultDelay_ = delay;
  return self;
}

- (id<JavaUtilMap>)getMocksWithInt:(jint)source {
  id<JavaUtilMap> ret = [((id<JavaUtilMap>) nil_chk(mocks_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
  if (ret == nil) {
    ret = new_JavaUtilHashMap_init();
    (void) [((id<JavaUtilMap>) nil_chk(mocks_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:ret];
  }
  return ret;
}

- (id<JavaUtilList>)getMocksListWithInt:(jint)source
                          withEventType:(id<EventType>)type {
  id<JavaUtilMap> mocksMap = [self getMocksWithInt:source];
  id<JavaUtilList> ret = [((id<JavaUtilMap>) nil_chk(mocksMap)) getWithId:type];
  if (ret == nil) {
    ret = new_JavaUtilArrayList_init();
    (void) [mocksMap putWithId:type withId:ret];
  }
  return ret;
}

- (id<MockedResponse>)mockWithLeMockController:(id<LeMockController>)controller
                               withLeEventType:(LeEventType *)type
                                       withInt:(jint)source
                             withNSStringArray:(IOSObjectArray *)arguments {
  jboolean mock = false;
  switch ([type ordinal]) {
    case LeEventType_Enum_deviceAddListener:
    mock |= mockDeviceListeners_;
    case LeEventType_Enum_remoteDeviceAddListener:
    mock |= mockRemoteDeviceListeners_;
    case LeEventType_Enum_remoteDeviceSetCharacteristicListener:
    mock |= mockCharacteristicsListeners_;
    if (mock) return new_MockedResponseObject_initWithNSStringArray_([IOSObjectArray newArrayWithObjects:(id[]){ [self addListenerWithInt:source] } count:1 type:NSString_class_()]);
    break;
  }
  if ([((id<JavaUtilMap>) nil_chk(mocks_)) getWithId:JavaLangInteger_valueOfWithInt_(source)] != nil) {
    id<JavaUtilList> responses = [((id<JavaUtilMap>) nil_chk([((id<JavaUtilMap>) nil_chk(mocks_)) getWithId:JavaLangInteger_valueOfWithInt_(source)])) getWithId:type];
    if (responses != nil) for (id<MockedResponse> __strong response in responses) {
      if ([((id<MockedResponse>) nil_chk(response)) isForArgumentsWithNSStringArray:arguments]) {
        if ([response isSelfDestroying]) [responses removeWithId:response];
        return response;
      }
    }
  }
  return nil;
}

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)type
                                    withNSStringArray:(IOSObjectArray *)values {
  return [self withSelfDestroyingMockWithInt:sessionSource_ withEventType:type withNSStringArray:values];
}

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)type
                              withNSStringArray:(IOSObjectArray *)values {
  MockedResponseObject *response = new_MockedResponseObject_initWithNSStringArray_(values);
  [response destroyAfterUse];
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:response];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                           withNSString:(NSString *)argument
                                withInt:(jint)argumentPos
                      withNSStringArray:(IOSObjectArray *)values {
  return [self withMockWithInt:sessionSource_ withEventType:type withNSString:argument withInt:argumentPos withNSStringArray:values];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                     withNSString:(NSString *)argument
                          withInt:(jint)argumentPos
                withNSStringArray:(IOSObjectArray *)values {
  MockedResponseObject *response = new_MockedResponseObject_initWithNSStringArray_(values);
  [response forArgumentsWithNSString:argument withInt:argumentPos];
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:response];
  return self;
}

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)type
                                         withNSString:(NSString *)argument
                                              withInt:(jint)argumentPos
                                    withNSStringArray:(IOSObjectArray *)values {
  return [self withSelfDestroyingMockWithInt:sessionSource_ withEventType:type withNSString:argument withInt:argumentPos withNSStringArray:values];
}

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)type
                                   withNSString:(NSString *)argument
                                        withInt:(jint)argumentPos
                              withNSStringArray:(IOSObjectArray *)values {
  MockedResponseObject *mockedResponse = new_MockedResponseObject_initWithNSStringArray_(values);
  [mockedResponse destroyAfterUse];
  [mockedResponse forArgumentsWithNSString:argument withInt:argumentPos];
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:mockedResponse];
  return self;
}

- (MockerObject *)withSelfDestroyingMockWithEventType:(id<EventType>)method
                             withMockedResponseObject:(MockedResponseObject *)response {
  return [self withSelfDestroyingMockWithInt:sessionSource_ withEventType:method withMockedResponseObject:response];
}

- (MockerObject *)withSelfDestroyingMockWithInt:(jint)source
                                  withEventType:(id<EventType>)method
                       withMockedResponseObject:(MockedResponseObject *)response {
  [((MockedResponseObject *) nil_chk(response)) destroyAfterUse];
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) addWithId:response];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                      withNSStringArray:(IOSObjectArray *)values {
  return [self withMockWithInt:sessionSource_ withEventType:type withNSStringArray:values];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                withNSStringArray:(IOSObjectArray *)values {
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:new_MockedResponseObject_initWithNSStringArray_(values)];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)type
                              withEvent:(Event *)event
                      withNSStringArray:(IOSObjectArray *)values {
  return [self withMockWithInt:sessionSource_ withEventType:type withEvent:event withNSStringArray:values];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)type
                        withEvent:(Event *)event
                withNSStringArray:(IOSObjectArray *)values {
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:new_MockedResponseObject_initWithEvent_withNSStringArray_(event, values)];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)method
                           withNSString:(NSString *)value {
  return [self withMockWithInt:sessionSource_ withEventType:method withNSString:value];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)method
                     withNSString:(NSString *)value {
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) addWithId:new_MockedResponseObject_initWithNSStringArray_([IOSObjectArray newArrayWithObjects:(id[]){ value } count:1 type:NSString_class_()])];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)method
                     withMockedResponse:(id<MockedResponse>)response {
  return [self withMockWithInt:sessionSource_ withEventType:method withMockedResponse:response];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)method
               withMockedResponse:(id<MockedResponse>)response {
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) addWithId:response];
  return self;
}

- (MockedResponseObject *)getFirstMockObjectWithEventType:(id<EventType>)method {
  return [self getFirstMockObjectWithInt:sessionSource_ withEventType:method];
}

- (MockedResponseObject *)getFirstMockObjectWithInt:(jint)source
                                      withEventType:(id<EventType>)method {
  if ([((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) size] == 0) return nil;
  id<MockedResponse> mr = [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) getWithInt:0];
  return [mr isKindOfClass:[MockedResponseObject class]] ? (MockedResponseObject *) cast_chk(mr, [MockedResponseObject class]) : nil;
}

- (id<JavaUtilCollection>)getListenersSetWithInt:(jint)source {
  id<JavaUtilSet> listenersForSource = [((id<JavaUtilMap>) nil_chk(listeners_)) getWithId:JavaLangInteger_valueOfWithInt_(source)];
  if (listenersForSource == nil) {
    listenersForSource = new_JavaUtilHashSet_init();
    (void) [((id<JavaUtilMap>) nil_chk(listeners_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:listenersForSource];
  }
  return listenersForSource;
}

- (NSString *)addListenerWithInt:(jint)source {
  jint id_ = ++MockerObject_sourceCounter;
  [((id<JavaUtilCollection>) nil_chk([self getListenersSetWithInt:source])) addWithId:JavaLangInteger_valueOfWithInt_(id_)];
  return JreStrcat("I", id_);
}

- (IOSObjectArray *)getDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                   withInt:(jint)device {
  id<JavaUtilCollection> deviceListeners = [self getListenersSetWithInt:device];
  IOSObjectArray *leDeviceListeners = [IOSObjectArray newArrayWithLength:[((id<JavaUtilCollection>) nil_chk(deviceListeners)) size] type:LeDeviceListener_class_()];
  jint k = 0;
  for (JavaLangInteger *boxed__ in deviceListeners) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    (void) IOSObjectArray_Set(leDeviceListeners, k, [((id<LeMockController>) nil_chk(controller)) getDeviceListenerWithInt:key]);
    k++;
  }
  return leDeviceListeners;
}

- (IOSObjectArray *)getRemoteDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                         withInt:(jint)remoteDevice {
  id<JavaUtilCollection> remoteDeviceListeners = [self getListenersSetWithInt:remoteDevice];
  id<JavaUtilList> ret = new_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(remoteDeviceListeners)) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    id<LeRemoteDeviceListener> listener = [((id<LeMockController>) nil_chk(controller)) getRemoteDeviceListenerWithInt:key];
    if (listener != nil) [ret addWithId:listener];
  }
  return [ret toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[ret size] type:LeRemoteDeviceListener_class_()]];
}

- (IOSObjectArray *)getCharacteristicListenersWithLeMockController:(id<LeMockController>)controller
                                                           withInt:(jint)characteristic {
  id<JavaUtilCollection> characteristicsListeners = [self getListenersSetWithInt:characteristic];
  id<JavaUtilList> ret = new_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(characteristicsListeners)) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    id<LeCharacteristicListener> listener = [((id<LeMockController>) nil_chk(controller)) getCharacteristicListenerWithInt:key];
    if (listener != nil) [ret addWithId:listener];
  }
  return [ret toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[ret size] type:LeCharacteristicListener_class_()]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDelay", NULL, "I", 0x0, NULL, NULL },
    { "end", NULL, "Lhoutbecke.rs.le.session.SessionObject;", 0x1, NULL, NULL },
    { "initWithSessionObject:withInt:", "MockerObject", NULL, 0x1, NULL, NULL },
    { "newMockerWithSessionObject:withInt:", "newMocker", "Lhoutbecke.rs.le.session.MockerObject;", 0x9, NULL, NULL },
    { "withDelayWithInt:", "withDelay", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "getMocksWithInt:", "getMocks", "Ljava.util.Map;", 0x0, NULL, "(I)Ljava/util/Map<Lhoutbecke/rs/le/session/EventType;Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;>;" },
    { "getMocksListWithInt:withEventType:", "getMocksList", "Ljava.util.List;", 0x0, NULL, "(ILhoutbecke/rs/le/session/EventType;)Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;" },
    { "mockWithLeMockController:withLeEventType:withInt:withNSStringArray:", "mock", "Lhoutbecke.rs.le.session.MockedResponse;", 0x81, NULL, NULL },
    { "withSelfDestroyingMockWithEventType:withNSStringArray:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withSelfDestroyingMockWithInt:withEventType:withNSStringArray:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithEventType:withNSString:withInt:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithInt:withEventType:withNSString:withInt:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withSelfDestroyingMockWithEventType:withNSString:withInt:withNSStringArray:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withSelfDestroyingMockWithInt:withEventType:withNSString:withInt:withNSStringArray:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withSelfDestroyingMockWithEventType:withMockedResponseObject:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "withSelfDestroyingMockWithInt:withEventType:withMockedResponseObject:", "withSelfDestroyingMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "withMockWithEventType:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithInt:withEventType:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithEventType:withEvent:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithInt:withEventType:withEvent:withNSStringArray:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x81, NULL, NULL },
    { "withMockWithEventType:withNSString:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "withMockWithInt:withEventType:withNSString:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "withMockWithEventType:withMockedResponse:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "withMockWithInt:withEventType:withMockedResponse:", "withMock", "Lhoutbecke.rs.le.session.MockerObject;", 0x1, NULL, NULL },
    { "getFirstMockObjectWithEventType:", "getFirstMockObject", "Lhoutbecke.rs.le.session.MockedResponseObject;", 0x1, NULL, NULL },
    { "getFirstMockObjectWithInt:withEventType:", "getFirstMockObject", "Lhoutbecke.rs.le.session.MockedResponseObject;", 0x1, NULL, NULL },
    { "getListenersSetWithInt:", "getListenersSet", "Ljava.util.Collection;", 0x0, NULL, "(I)Ljava/util/Collection<Ljava/lang/Integer;>;" },
    { "addListenerWithInt:", "addListener", "Ljava.lang.String;", 0x0, NULL, NULL },
    { "getDeviceListenersWithLeMockController:withInt:", "getDeviceListeners", "[Lhoutbecke.rs.le.LeDeviceListener;", 0x1, NULL, NULL },
    { "getRemoteDeviceListenersWithLeMockController:withInt:", "getRemoteDeviceListeners", "[Lhoutbecke.rs.le.LeRemoteDeviceListener;", 0x1, NULL, NULL },
    { "getCharacteristicListenersWithLeMockController:withInt:", "getCharacteristicListeners", "[Lhoutbecke.rs.le.LeCharacteristicListener;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mocks_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Lhoutbecke/rs/le/session/EventType;Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;>;>;", .constantValue.asLong = 0 },
    { "listeners_", NULL, 0x0, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;", .constantValue.asLong = 0 },
    { "sourceCounter", "sourceCounter", 0x48, "I", &MockerObject_sourceCounter, NULL, .constantValue.asLong = 0 },
    { "mockDeviceListeners_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mockRemoteDeviceListeners_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mockCharacteristicsListeners_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultDelay_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "sessionSource_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "sessionObject_", NULL, 0x0, "Lhoutbecke.rs.le.session.SessionObject;", NULL, NULL, .constantValue.asLong = 0 },
    { "and__", "and", 0x11, "Lhoutbecke.rs.le.session.SessionObject;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _MockerObject = { 2, "MockerObject", "houtbecke.rs.le.session", NULL, 0x1, 31, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_MockerObject;
}

@end

void MockerObject_initWithSessionObject_withInt_(MockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  NSObject_init(self);
  self->mocks_ = new_JavaUtilHashMap_init();
  self->listeners_ = new_JavaUtilHashMap_init();
  self->mockDeviceListeners_ = false;
  self->mockRemoteDeviceListeners_ = false;
  self->mockCharacteristicsListeners_ = false;
  self->defaultDelay_ = -1;
  self->sessionObject_ = sessionObject;
  self->sessionSource_ = sessionSource;
  self->and__ = sessionObject;
}

MockerObject *new_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(MockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

MockerObject *create_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(MockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

MockerObject *MockerObject_newMockerWithSessionObject_withInt_(SessionObject *sessionObject, jint defaultSource) {
  MockerObject_initialize();
  return new_MockerObject_initWithSessionObject_withInt_(sessionObject, defaultSource);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerObject)
