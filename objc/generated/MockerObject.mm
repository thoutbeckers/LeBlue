
#include "Event.h"
#include "EventType.h"
#include "IOSClass.h"
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

+ (jint)sourceCounter {
  return JreLoadVolatileInt(&MockerObject_sourceCounter);
}

+ (void)setSourceCounter:(jint)value {
  JreAssignVolatileInt(&MockerObject_sourceCounter, value);
}

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
    ret = create_JavaUtilHashMap_init();
    [((id<JavaUtilMap>) nil_chk(mocks_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:ret];
  }
  return ret;
}

- (id<JavaUtilList>)getMocksListWithInt:(jint)source
                          withEventType:(id<EventType>)type {
  id<JavaUtilMap> mocksMap = [self getMocksWithInt:source];
  id<JavaUtilList> ret = [((id<JavaUtilMap>) nil_chk(mocksMap)) getWithId:type];
  if (ret == nil) {
    ret = create_JavaUtilArrayList_init();
    [mocksMap putWithId:type withId:ret];
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
    if (mock) return create_MockedResponseObject_initWithNSStringArray_([IOSObjectArray arrayWithObjects:(id[]){ [self addListenerWithInt:source] } count:1 type:NSString_class_()]);
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
  MockedResponseObject *response = create_MockedResponseObject_initWithNSStringArray_(values);
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
  MockedResponseObject *response = create_MockedResponseObject_initWithNSStringArray_(values);
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
  MockedResponseObject *mockedResponse = create_MockedResponseObject_initWithNSStringArray_(values);
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
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:create_MockedResponseObject_initWithNSStringArray_(values)];
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
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:type])) addWithId:create_MockedResponseObject_initWithEvent_withNSStringArray_(event, values)];
  return self;
}

- (MockerObject *)withMockWithEventType:(id<EventType>)method
                           withNSString:(NSString *)value {
  return [self withMockWithInt:sessionSource_ withEventType:method withNSString:value];
}

- (MockerObject *)withMockWithInt:(jint)source
                    withEventType:(id<EventType>)method
                     withNSString:(NSString *)value {
  [((id<JavaUtilList>) nil_chk([self getMocksListWithInt:source withEventType:method])) addWithId:create_MockedResponseObject_initWithNSStringArray_([IOSObjectArray arrayWithObjects:(id[]){ value } count:1 type:NSString_class_()])];
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
    listenersForSource = create_JavaUtilHashSet_init();
    [((id<JavaUtilMap>) nil_chk(listeners_)) putWithId:JavaLangInteger_valueOfWithInt_(source) withId:listenersForSource];
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
  IOSObjectArray *leDeviceListeners = [IOSObjectArray arrayWithLength:[((id<JavaUtilCollection>) nil_chk(deviceListeners)) size] type:LeDeviceListener_class_()];
  jint k = 0;
  for (JavaLangInteger *boxed__ in deviceListeners) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    IOSObjectArray_Set(leDeviceListeners, k, [((id<LeMockController>) nil_chk(controller)) getDeviceListenerWithInt:key]);
    k++;
  }
  return leDeviceListeners;
}

- (IOSObjectArray *)getRemoteDeviceListenersWithLeMockController:(id<LeMockController>)controller
                                                         withInt:(jint)remoteDevice {
  id<JavaUtilCollection> remoteDeviceListeners = [self getListenersSetWithInt:remoteDevice];
  id<JavaUtilList> ret = create_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(remoteDeviceListeners)) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    id<LeRemoteDeviceListener> listener = [((id<LeMockController>) nil_chk(controller)) getRemoteDeviceListenerWithInt:key];
    if (listener != nil) [ret addWithId:listener];
  }
  return [ret toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[ret size] type:LeRemoteDeviceListener_class_()]];
}

- (IOSObjectArray *)getCharacteristicListenersWithLeMockController:(id<LeMockController>)controller
                                                           withInt:(jint)characteristic {
  id<JavaUtilCollection> characteristicsListeners = [self getListenersSetWithInt:characteristic];
  id<JavaUtilList> ret = create_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(characteristicsListeners)) {
    jint key = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    id<LeCharacteristicListener> listener = [((id<LeMockController>) nil_chk(controller)) getCharacteristicListenerWithInt:key];
    if (listener != nil) [ret addWithId:listener];
  }
  return [ret toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[ret size] type:LeCharacteristicListener_class_()]];
}

- (void)dealloc {
  RELEASE_(mocks_);
  RELEASE_(listeners_);
  RELEASE_(sessionObject_);
  RELEASE_(and__);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSessionObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x0, 4, 3, -1, 5, -1, -1 },
    { NULL, "LJavaUtilList;", 0x0, 6, 7, -1, 8, -1, -1 },
    { NULL, "LMockedResponse;", 0x81, 9, 10, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 11, 12, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 11, 13, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 15, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 16, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 11, 15, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 11, 16, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 11, 17, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 11, 18, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 12, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 13, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 19, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x81, 14, 20, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 14, 21, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 14, 22, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 14, 23, -1, -1, -1, -1 },
    { NULL, "LMockerObject;", 0x1, 14, 24, -1, -1, -1, -1 },
    { NULL, "LMockedResponseObject;", 0x1, 25, 26, -1, -1, -1, -1 },
    { NULL, "LMockedResponseObject;", 0x1, 25, 7, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x0, 27, 3, -1, 28, -1, -1 },
    { NULL, "LNSString;", 0x0, 29, 3, -1, -1, -1, -1 },
    { NULL, "[LLeDeviceListener;", 0x1, 30, 31, -1, -1, -1, -1 },
    { NULL, "[LLeRemoteDeviceListener;", 0x1, 32, 31, -1, -1, -1, -1 },
    { NULL, "[LLeCharacteristicListener;", 0x1, 33, 31, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getDelay);
  methods[1].selector = @selector(end);
  methods[2].selector = @selector(initWithSessionObject:withInt:);
  methods[3].selector = @selector(newMockerWithSessionObject:withInt:);
  methods[4].selector = @selector(withDelayWithInt:);
  methods[5].selector = @selector(getMocksWithInt:);
  methods[6].selector = @selector(getMocksListWithInt:withEventType:);
  methods[7].selector = @selector(mockWithLeMockController:withLeEventType:withInt:withNSStringArray:);
  methods[8].selector = @selector(withSelfDestroyingMockWithEventType:withNSStringArray:);
  methods[9].selector = @selector(withSelfDestroyingMockWithInt:withEventType:withNSStringArray:);
  methods[10].selector = @selector(withMockWithEventType:withNSString:withInt:withNSStringArray:);
  methods[11].selector = @selector(withMockWithInt:withEventType:withNSString:withInt:withNSStringArray:);
  methods[12].selector = @selector(withSelfDestroyingMockWithEventType:withNSString:withInt:withNSStringArray:);
  methods[13].selector = @selector(withSelfDestroyingMockWithInt:withEventType:withNSString:withInt:withNSStringArray:);
  methods[14].selector = @selector(withSelfDestroyingMockWithEventType:withMockedResponseObject:);
  methods[15].selector = @selector(withSelfDestroyingMockWithInt:withEventType:withMockedResponseObject:);
  methods[16].selector = @selector(withMockWithEventType:withNSStringArray:);
  methods[17].selector = @selector(withMockWithInt:withEventType:withNSStringArray:);
  methods[18].selector = @selector(withMockWithEventType:withEvent:withNSStringArray:);
  methods[19].selector = @selector(withMockWithInt:withEventType:withEvent:withNSStringArray:);
  methods[20].selector = @selector(withMockWithEventType:withNSString:);
  methods[21].selector = @selector(withMockWithInt:withEventType:withNSString:);
  methods[22].selector = @selector(withMockWithEventType:withMockedResponse:);
  methods[23].selector = @selector(withMockWithInt:withEventType:withMockedResponse:);
  methods[24].selector = @selector(getFirstMockObjectWithEventType:);
  methods[25].selector = @selector(getFirstMockObjectWithInt:withEventType:);
  methods[26].selector = @selector(getListenersSetWithInt:);
  methods[27].selector = @selector(addListenerWithInt:);
  methods[28].selector = @selector(getDeviceListenersWithLeMockController:withInt:);
  methods[29].selector = @selector(getRemoteDeviceListenersWithLeMockController:withInt:);
  methods[30].selector = @selector(getCharacteristicListenersWithLeMockController:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mocks_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 34, -1 },
    { "listeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 35, -1 },
    { "sourceCounter", "I", .constantValue.asLong = 0, 0x48, -1, 36, -1, -1 },
    { "mockDeviceListeners_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mockRemoteDeviceListeners_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mockCharacteristicsListeners_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "defaultDelay_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "sessionSource_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "sessionObject_", "LSessionObject;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "and__", "LSessionObject;", .constantValue.asLong = 0, 0x11, 37, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSessionObject;I", "newMocker", "withDelay", "I", "getMocks", "(I)Ljava/util/Map<Lhoutbecke/rs/le/session/EventType;Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;>;", "getMocksList", "ILEventType;", "(ILhoutbecke/rs/le/session/EventType;)Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;", "mock", "LLeMockController;LLeEventType;I[LNSString;", "withSelfDestroyingMock", "LEventType;[LNSString;", "ILEventType;[LNSString;", "withMock", "LEventType;LNSString;I[LNSString;", "ILEventType;LNSString;I[LNSString;", "LEventType;LMockedResponseObject;", "ILEventType;LMockedResponseObject;", "LEventType;LEvent;[LNSString;", "ILEventType;LEvent;[LNSString;", "LEventType;LNSString;", "ILEventType;LNSString;", "LEventType;LMockedResponse;", "ILEventType;LMockedResponse;", "getFirstMockObject", "LEventType;", "getListenersSet", "(I)Ljava/util/Collection<Ljava/lang/Integer;>;", "addListener", "getDeviceListeners", "LLeMockController;I", "getRemoteDeviceListeners", "getCharacteristicListeners", "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Lhoutbecke/rs/le/session/EventType;Ljava/util/List<Lhoutbecke/rs/le/session/MockedResponse;>;>;>;", "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;", &MockerObject_sourceCounter, "and" };
  static const J2ObjcClassInfo _MockerObject = { "MockerObject", "houtbecke.rs.le.session", ptrTable, methods, fields, 7, 0x1, 31, 10, -1, -1, -1, -1, -1 };
  return &_MockerObject;
}

@end

void MockerObject_initWithSessionObject_withInt_(MockerObject *self, SessionObject *sessionObject, jint sessionSource) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mocks_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->listeners_, new_JavaUtilHashMap_init());
  self->mockDeviceListeners_ = false;
  self->mockRemoteDeviceListeners_ = false;
  self->mockCharacteristicsListeners_ = false;
  self->defaultDelay_ = -1;
  JreStrongAssign(&self->sessionObject_, sessionObject);
  self->sessionSource_ = sessionSource;
  JreStrongAssign(&self->and__, sessionObject);
}

MockerObject *new_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_NEW_IMPL(MockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

MockerObject *create_MockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) {
  J2OBJC_CREATE_IMPL(MockerObject, initWithSessionObject_withInt_, sessionObject, sessionSource)
}

MockerObject *MockerObject_newMockerWithSessionObject_withInt_(SessionObject *sessionObject, jint defaultSource) {
  MockerObject_initialize();
  return create_MockerObject_initWithSessionObject_withInt_(sessionObject, defaultSource);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockerObject)

J2OBJC_NAME_MAPPING(MockerObject, "houtbecke.rs.le.session", "")
