
#include "ErrorLogger.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "InterceptingLeDevice.h"
#include "InterceptingLeDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *InterceptingLeDevice__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeDevice__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeDevice__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeDevice__Annotations$3(void);

@implementation InterceptingLeDevice

- (instancetype)initWithLeDevice:(id<LeDevice>)leDevice
               withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(self, leDevice, leInterceptor);
  return self;
}

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      InterceptingLeDeviceListener *iListener = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceListenerWithLeDeviceListener:listener];
      [((id<LeDevice>) nil_chk(leDevice_)) addListenerWithLeDeviceListener:iListener];
      [leInterceptor_ listenerAddedWithInterceptingLeDevice:self withInterceptingLeDeviceListener:iListener];
    }
  }
}

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((id<LeDevice>) nil_chk(leDevice_)) removeListenerWithLeDeviceListener:[((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceListenerWithLeDeviceListener:listener]];
      [leInterceptor_ listenerRemovedWithInterceptingLeDevice:self];
    }
  }
}

- (jboolean)checkBleHardwareAvailable {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      jboolean bleHardwareEnabled = [((id<LeDevice>) nil_chk(leDevice_)) checkBleHardwareAvailable];
      [((LeInterceptor *) nil_chk(leInterceptor_)) checkedBleHardwareAvailableWithInterceptingLeDevice:self withBoolean:bleHardwareEnabled];
      return bleHardwareEnabled;
    }
  }
}

- (jboolean)isBtEnabled {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      jboolean btEnabled = [((id<LeDevice>) nil_chk(leDevice_)) isBtEnabled];
      [((LeInterceptor *) nil_chk(leInterceptor_)) wasBtEnabledWithInterceptingLeDevice:self withBoolean:btEnabled];
      return btEnabled;
    }
  }
}

- (void)startScanning {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) startedScanningWithInterceptingLeDevice:self];
      [((id<LeDevice>) nil_chk(leDevice_)) startScanning];
    }
  }
}

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) startedScanningWithInterceptingLeDevice:self withJavaUtilUUIDArray:uuids];
      [((id<LeDevice>) nil_chk(leDevice_)) startScanningWithJavaUtilUUIDArray:uuids];
    }
  }
}

- (void)startScanningWithJavaUtilList:(id<JavaUtilList>)filters {
  @synchronized(leInterceptor_) {
    [((LeInterceptor *) nil_chk(leInterceptor_)) startedScanningWithInterceptingLeDevice:self withJavaUtilList:filters];
    [((id<LeDevice>) nil_chk(leDevice_)) startScanningWithJavaUtilList:filters];
  }
}

- (void)stopScanning {
  @synchronized(self) {
    @synchronized(leInterceptor_) {
      [((LeInterceptor *) nil_chk(leInterceptor_)) stoppedScanningWithInterceptingLeDevice:self];
      [((id<LeDevice>) nil_chk(leDevice_)) stopScanning];
    }
  }
}

- (void)setErrorLoggerWithErrorLogger:(id<ErrorLogger>)errorLogger {
  [((id<LeDevice>) nil_chk(leDevice_)) setErrorLoggerWithErrorLogger:errorLogger];
}

- (void)disable {
}

- (void)enable {
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeDevice class]]) {
    o = ((InterceptingLeDevice *) nil_chk(((InterceptingLeDevice *) cast_chk(o, [InterceptingLeDevice class]))))->leDevice_;
  }
  return [LeDevice_class_() isInstance:o] && [nil_chk(o) isEqual:leDevice_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeDevice>) nil_chk(leDevice_)) hash]);
}

- (void)dealloc {
  RELEASE_(leDevice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 1, 2, -1, -1, -1, 3 },
    { NULL, "V", 0x21, 4, 2, -1, -1, -1, 5 },
    { NULL, "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa1, 6, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x1, 6, 9, -1, 10, -1, 11 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeDevice:withLeInterceptor:);
  methods[1].selector = @selector(addListenerWithLeDeviceListener:);
  methods[2].selector = @selector(removeListenerWithLeDeviceListener:);
  methods[3].selector = @selector(checkBleHardwareAvailable);
  methods[4].selector = @selector(isBtEnabled);
  methods[5].selector = @selector(startScanning);
  methods[6].selector = @selector(startScanningWithJavaUtilUUIDArray:);
  methods[7].selector = @selector(startScanningWithJavaUtilList:);
  methods[8].selector = @selector(stopScanning);
  methods[9].selector = @selector(setErrorLoggerWithErrorLogger:);
  methods[10].selector = @selector(disable);
  methods[11].selector = @selector(enable);
  methods[12].selector = @selector(isEqual:);
  methods[13].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leDevice_", "LLeDevice;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeDevice;LLeInterceptor;", "addListener", "LLeDeviceListener;", (void *)&InterceptingLeDevice__Annotations$0, "removeListener", (void *)&InterceptingLeDevice__Annotations$1, "startScanning", "[LJavaUtilUUID;", (void *)&InterceptingLeDevice__Annotations$2, "LJavaUtilList;", "(Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", (void *)&InterceptingLeDevice__Annotations$3, "setErrorLogger", "LErrorLogger;", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeDevice = { "InterceptingLeDevice", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 14, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeDevice;
}

@end

void InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(InterceptingLeDevice *self, id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leDevice_, leDevice);
  [((id<JavaUtilMap>) nil_chk(((LeInterceptor *) nil_chk(leInterceptor))->iDevices_)) putWithId:leDevice withId:self];
}

InterceptingLeDevice *new_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeDevice, initWithLeDevice_withLeInterceptor_, leDevice, leInterceptor)
}

InterceptingLeDevice *create_InterceptingLeDevice_initWithLeDevice_withLeInterceptor_(id<LeDevice> leDevice, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeDevice, initWithLeDevice_withLeInterceptor_, leDevice, leInterceptor)
}

IOSObjectArray *InterceptingLeDevice__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeDevice__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeDevice__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeDevice__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeDevice)

J2OBJC_NAME_MAPPING(InterceptingLeDevice, "houtbecke.rs.le.interceptor", "")
