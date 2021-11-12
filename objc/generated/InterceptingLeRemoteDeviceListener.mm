
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "InterceptingLeDevice.h"
#include "InterceptingLeGattService.h"
#include "InterceptingLeRemoteDevice.h"
#include "InterceptingLeRemoteDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeDevice.h"
#include "LeGattService.h"
#include "LeGattStatus.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$4(void);

@implementation InterceptingLeRemoteDeviceListener

- (instancetype)initWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)leRemoteDeviceListener
                             withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(self, leRemoteDeviceListener, leInterceptor);
  return self;
}

- (void)leDevicesConnectedWithLeDevice:(id<LeDevice>)leDevice
                    withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  [leInterceptor_ connectedWithInterceptingLeRemoteDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice];
  [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) leDevicesConnectedWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice];
}

- (void)leDevicesDisconnectedWithLeDevice:(id<LeDevice>)leDevice
                       withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  [leInterceptor_ disconnectedWithInterceptingLeRemoteDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice];
  [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) leDevicesDisconnectedWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice];
}

- (void)leDevicesClosedWithLeDevice:(id<LeDevice>)leDevice
                 withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  [leInterceptor_ closedWithInterceptingLeRemoteDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice];
  [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) leDevicesClosedWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice];
}

- (void)serviceDiscoveredWithLeDevice:(id<LeDevice>)leDevice
                   withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withLeGattStatus:(LeGattStatus *)status
               withLeGattServiceArray:(IOSObjectArray *)gatts {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  IOSObjectArray *iLeGattServices = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(gatts))->size_ type:InterceptingLeGattService_class_()];
  for (jint k = 0; k < gatts->size_; k++) {
    IOSObjectArray_Set(iLeGattServices, k, [leInterceptor_ getInterceptingLeGattServiceWithLeGattService:IOSObjectArray_Get(gatts, k)]);
  }
  [leInterceptor_ servicesDiscoveredWithInterceptingLeRemoteDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice withLeGattStatus:status withInterceptingLeGattServiceArray:iLeGattServices];
  [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) serviceDiscoveredWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice withLeGattStatus:status withLeGattServiceArray:iLeGattServices];
}

- (void)rssiReadWithLeDevice:(id<LeDevice>)leDevice
          withLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice
                     withInt:(jint)rssi {
  InterceptingLeDevice *iLeDevice = [((LeInterceptor *) nil_chk(leInterceptor_)) getInterceptingLeDeviceWithLeDevice:leDevice];
  InterceptingLeRemoteDevice *iLeRemoteDevice = [leInterceptor_ getInterceptingLeRemoteDeviceWithLeRemoteDevice:leRemoteDevice];
  [leInterceptor_ rssiReadWithInterceptingLeRemoteDeviceListener:self withInterceptingLeDevice:iLeDevice withInterceptingLeRemoteDevice:iLeRemoteDevice withInt:rssi];
  [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) rssiReadWithLeDevice:iLeDevice withLeRemoteDevice:iLeRemoteDevice withInt:rssi];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeRemoteDeviceListener class]]) o = ((InterceptingLeRemoteDeviceListener *) nil_chk(((InterceptingLeRemoteDeviceListener *) cast_chk(o, [InterceptingLeRemoteDeviceListener class]))))->leRemoteDeviceListener_;
  return [LeRemoteDeviceListener_class_() isInstance:o] && [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) isEqual:o];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeRemoteDeviceListener>) nil_chk(leRemoteDeviceListener_)) hash]);
}

- (void)dealloc {
  RELEASE_(leRemoteDeviceListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, 3 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, 5 },
    { NULL, "V", 0x1, 6, 2, -1, -1, -1, 7 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, 10 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, 13 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeRemoteDeviceListener:withLeInterceptor:);
  methods[1].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[4].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[5].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leRemoteDeviceListener_", "LLeRemoteDeviceListener;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeRemoteDeviceListener;LLeInterceptor;", "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", (void *)&InterceptingLeRemoteDeviceListener__Annotations$0, "leDevicesDisconnected", (void *)&InterceptingLeRemoteDeviceListener__Annotations$1, "leDevicesClosed", (void *)&InterceptingLeRemoteDeviceListener__Annotations$2, "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", (void *)&InterceptingLeRemoteDeviceListener__Annotations$3, "rssiRead", "LLeDevice;LLeRemoteDevice;I", (void *)&InterceptingLeRemoteDeviceListener__Annotations$4, "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeRemoteDeviceListener = { "InterceptingLeRemoteDeviceListener", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeRemoteDeviceListener;
}

@end

void InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(InterceptingLeRemoteDeviceListener *self, id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leRemoteDeviceListener_, leRemoteDeviceListener);
}

InterceptingLeRemoteDeviceListener *new_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeRemoteDeviceListener, initWithLeRemoteDeviceListener_withLeInterceptor_, leRemoteDeviceListener, leInterceptor)
}

InterceptingLeRemoteDeviceListener *create_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(id<LeRemoteDeviceListener> leRemoteDeviceListener, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeRemoteDeviceListener, initWithLeRemoteDeviceListener_withLeInterceptor_, leRemoteDeviceListener, leInterceptor)
}

IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *InterceptingLeRemoteDeviceListener__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeRemoteDeviceListener)

J2OBJC_NAME_MAPPING(InterceptingLeRemoteDeviceListener, "houtbecke.rs.le.interceptor", "")
