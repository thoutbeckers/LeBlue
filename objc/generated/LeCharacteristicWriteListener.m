
#include "J2ObjC_source.h"
#include "LeCharacteristicWriteListener.h"

@interface LeCharacteristicWriteListener : NSObject

@end

@implementation LeCharacteristicWriteListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leCharacteristicWrittenWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:", "leCharacteristicWritten", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeCharacteristicWriteListener = { 2, "LeCharacteristicWriteListener", "houtbecke.rs.le", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeCharacteristicWriteListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeCharacteristicWriteListener)
