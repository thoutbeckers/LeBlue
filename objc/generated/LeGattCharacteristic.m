
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"

@interface LeGattCharacteristic : NSObject

@end

@implementation LeGattCharacteristic

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "[B", 0x401, NULL, NULL },
    { "getIntValueWithLeFormat:withInt:", "getIntValue", "I", 0x401, NULL, NULL },
    { "setValueWithByteArray:", "setValue", "V", 0x401, NULL, NULL },
    { "setValueWithByteArray:withBoolean:", "setValue", "V", 0x401, NULL, NULL },
    { "read", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeGattCharacteristic = { 2, "LeGattCharacteristic", "houtbecke.rs.le", NULL, 0x609, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeGattCharacteristic;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattCharacteristic)
