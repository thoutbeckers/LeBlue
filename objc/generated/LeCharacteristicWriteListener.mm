
#include "J2ObjC_source.h"
#include "LeCharacteristicWriteListener.h"

@interface LeCharacteristicWriteListener : NSObject

@end

@implementation LeCharacteristicWriteListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leCharacteristicWrittenWithJavaUtilUUID:withLeRemoteDevice:withLeGattCharacteristic:withBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leCharacteristicWritten", "LJavaUtilUUID;LLeRemoteDevice;LLeGattCharacteristic;Z" };
  static const J2ObjcClassInfo _LeCharacteristicWriteListener = { "LeCharacteristicWriteListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_LeCharacteristicWriteListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeCharacteristicWriteListener)

J2OBJC_NAME_MAPPING(LeCharacteristicWriteListener, "houtbecke.rs.le", "")
