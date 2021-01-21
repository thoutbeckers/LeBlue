
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"

@interface LeCharacteristicListener : NSObject

@end

@implementation LeCharacteristicListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:);
  methods[1].selector = @selector(leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leCharacteristicChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;", "leCharacteristicNotificationChanged", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z" };
  static const J2ObjcClassInfo _LeCharacteristicListener = { "LeCharacteristicListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_LeCharacteristicListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeCharacteristicListener)

J2OBJC_NAME_MAPPING(LeCharacteristicListener, "houtbecke.rs.le", "")
