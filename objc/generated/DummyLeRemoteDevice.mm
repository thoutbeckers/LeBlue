
#include "DummyLeRemoteDevice.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeRemoteDeviceListener.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/Nullable.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$1(void);

@implementation HoutbeckeRsLeDummyDummyLeRemoteDevice

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HoutbeckeRsLeDummyDummyLeRemoteDevice_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
}

- (NSString *)getAddress {
  return nil;
}

- (void)connect {
}

- (void)disconnect {
}

- (void)close {
}

- (void)startServicesDiscovery {
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener
                                                  withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
}

- (NSString *)getName {
  return nil;
}

- (void)readRssi {
}

- (void)refreshDeviceCache {
}

- (void)unpair {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 3, 4, -1, -1, -1, 5 },
    { NULL, "V", 0x81, 6, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x81, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addListenerWithLeRemoteDeviceListener:);
  methods[2].selector = @selector(removeListenerWithLeRemoteDeviceListener:);
  methods[3].selector = @selector(getAddress);
  methods[4].selector = @selector(connect);
  methods[5].selector = @selector(disconnect);
  methods[6].selector = @selector(close);
  methods[7].selector = @selector(startServicesDiscovery);
  methods[8].selector = @selector(startServicesDiscoveryWithJavaUtilUUIDArray:);
  methods[9].selector = @selector(setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[10].selector = @selector(setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[11].selector = @selector(getName);
  methods[12].selector = @selector(readRssi);
  methods[13].selector = @selector(refreshDeviceCache);
  methods[14].selector = @selector(unpair);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeRemoteDeviceListener;", "removeListener", "startServicesDiscovery", "[LJavaUtilUUID;", (void *)&HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$0, "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", (void *)&HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$1, "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;" };
  static const J2ObjcClassInfo _HoutbeckeRsLeDummyDummyLeRemoteDevice = { "DummyLeRemoteDevice", "houtbecke.rs.le.dummy", ptrTable, methods, NULL, 7, 0x1, 15, 0, -1, -1, -1, -1, -1 };
  return &_HoutbeckeRsLeDummyDummyLeRemoteDevice;
}

@end

void HoutbeckeRsLeDummyDummyLeRemoteDevice_init(HoutbeckeRsLeDummyDummyLeRemoteDevice *self) {
  NSObject_init(self);
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *new_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_NEW_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

HoutbeckeRsLeDummyDummyLeRemoteDevice *create_HoutbeckeRsLeDummyDummyLeRemoteDevice_init() {
  J2OBJC_CREATE_IMPL(HoutbeckeRsLeDummyDummyLeRemoteDevice, init)
}

IOSObjectArray *HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *HoutbeckeRsLeDummyDummyLeRemoteDevice__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HoutbeckeRsLeDummyDummyLeRemoteDevice)
