
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeGattService.h"
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/util/UUID.h"

@implementation InterceptingLeGattService

- (instancetype)initWithLeGattService:(id<LeGattService>)leGattService
                    withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(self, leGattService, leInterceptor);
  return self;
}

- (JavaUtilUUID *)getUuid {
  @synchronized(leInterceptor_) {
    JavaUtilUUID *uuid = [((id<LeGattService>) nil_chk(leGattService_)) getUuid];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotUUIDWithInterceptingLeGattService:self withJavaUtilUUID:uuid];
    return JreRetainedLocalValue(uuid);
  }
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  @synchronized(leInterceptor_) {
    id<LeGattCharacteristic> leGattCharacteristic = [((id<LeGattService>) nil_chk(leGattService_)) getCharacteristicWithJavaUtilUUID:uuid];
    if (leGattCharacteristic == nil) return JreRetainedLocalValue(nil);
    InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((LeInterceptor *) nil_chk(leInterceptor_)) serviceGotCharacteristicWithInterceptingLeGattService:self withLeGattCharacteristic:leGattCharacteristic];
    [leInterceptor_ gotCharacteristicWithInterceptingLeGattService:self withInterceptingLeGattCharacteristic:iLeGattCharacteristic];
    return JreRetainedLocalValue(iLeGattCharacteristic);
  }
}

- (jboolean)enableCharacteristicNotificationWithJavaUtilUUID:(JavaUtilUUID *)characteristic {
  @synchronized(leInterceptor_) {
    jboolean enabled = [((id<LeGattService>) nil_chk(leGattService_)) enableCharacteristicNotificationWithJavaUtilUUID:characteristic];
    [((LeInterceptor *) nil_chk(leInterceptor_)) enabledCharacteristicNotificationWithInterceptingLeGattService:self withJavaUtilUUID:characteristic withBoolean:enabled];
    return enabled;
  }
}

- (jboolean)isEqual:(id)o {
  if (o == nil) return false;
  if (o == self) return true;
  while ([o isKindOfClass:[InterceptingLeGattService class]]) o = ((InterceptingLeGattService *) nil_chk(((InterceptingLeGattService *) cast_chk(o, [InterceptingLeGattService class]))))->leGattService_;
  return ([LeGattService_class_() isInstance:o]) && [nil_chk(o) isEqual:leGattService_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeGattService>) nil_chk(leGattService_)) hash]);
}

- (void)dealloc {
  RELEASE_(leGattService_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilUUID;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeGattService:withLeInterceptor:);
  methods[1].selector = @selector(getUuid);
  methods[2].selector = @selector(getCharacteristicWithJavaUtilUUID:);
  methods[3].selector = @selector(enableCharacteristicNotificationWithJavaUtilUUID:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leGattService_", "LLeGattService;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeGattService;LLeInterceptor;", "getCharacteristic", "LJavaUtilUUID;", "enableCharacteristicNotification", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeGattService = { "InterceptingLeGattService", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeGattService;
}

@end

void InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(InterceptingLeGattService *self, id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leGattService_, leGattService);
}

InterceptingLeGattService *new_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

InterceptingLeGattService *create_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(id<LeGattService> leGattService, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeGattService, initWithLeGattService_withLeInterceptor_, leGattService, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeGattService)

J2OBJC_NAME_MAPPING(InterceptingLeGattService, "houtbecke.rs.le.interceptor", "")
