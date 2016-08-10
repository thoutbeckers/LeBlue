
#include "J2ObjC_source.h"
#include "LeGattService.h"

@interface LeGattService : NSObject

@end

@implementation LeGattService

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getUuid", NULL, "Ljava.util.UUID;", 0x401, NULL, NULL },
    { "getCharacteristicWithJavaUtilUUID:", "getCharacteristic", "Lhoutbecke.rs.le.LeGattCharacteristic;", 0x401, NULL, NULL },
    { "enableCharacteristicNotificationWithJavaUtilUUID:", "enableCharacteristicNotification", "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeGattService = { 2, "LeGattService", "houtbecke.rs.le", NULL, 0x609, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeGattService;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattService)
