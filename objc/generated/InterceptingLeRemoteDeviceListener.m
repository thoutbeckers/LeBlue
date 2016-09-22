
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
  for (jint k = 0; k < gatts->size_; k++) IOSObjectArray_Set(iLeGattServices, k, [leInterceptor_ getInterceptingLeGattServiceWithLeGattService:IOSObjectArray_Get(gatts, k)]);
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeRemoteDeviceListener:withLeInterceptor:", "InterceptingLeRemoteDeviceListener", NULL, 0x1, NULL, NULL },
    { "leDevicesConnectedWithLeDevice:withLeRemoteDevice:", "leDevicesConnected", "V", 0x1, NULL, NULL },
    { "leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:", "leDevicesDisconnected", "V", 0x1, NULL, NULL },
    { "leDevicesClosedWithLeDevice:withLeRemoteDevice:", "leDevicesClosed", "V", 0x1, NULL, NULL },
    { "serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:", "serviceDiscovered", "V", 0x1, NULL, NULL },
    { "rssiReadWithLeDevice:withLeRemoteDevice:withInt:", "rssiRead", "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leRemoteDeviceListener_", NULL, 0x10, "Lhoutbecke.rs.le.LeRemoteDeviceListener;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _InterceptingLeRemoteDeviceListener = { 2, "InterceptingLeRemoteDeviceListener", "houtbecke.rs.le.interceptor", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
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

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeRemoteDeviceListener)
