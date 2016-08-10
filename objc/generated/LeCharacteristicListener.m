
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"

@interface LeCharacteristicListener : NSObject

@end

@implementation LeCharacteristicListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leCharacteristicChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:", "leCharacteristicChanged", "V", 0x401, NULL, NULL },
    { "leCharacteristicNotificationChangedWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicNotificationChanged", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeCharacteristicListener = { 2, "LeCharacteristicListener", "houtbecke.rs.le", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeCharacteristicListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeCharacteristicListener)
