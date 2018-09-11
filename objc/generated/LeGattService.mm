
#include "J2ObjC_source.h"
#include "LeGattService.h"

@interface LeGattService : NSObject

@end

@implementation LeGattService

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilUUID;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LLeGattCharacteristic;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getUuid);
  methods[1].selector = @selector(getCharacteristicWithJavaUtilUUID:);
  methods[2].selector = @selector(enableCharacteristicNotificationWithJavaUtilUUID:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getCharacteristic", "LJavaUtilUUID;", "enableCharacteristicNotification" };
  static const J2ObjcClassInfo _LeGattService = { "LeGattService", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_LeGattService;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattService)

J2OBJC_NAME_MAPPING(LeGattService, "houtbecke.rs.le", "")
