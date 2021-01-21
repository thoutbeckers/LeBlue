
#include "J2ObjC_source.h"
#include "LeGattCharacteristic.h"

@interface LeGattCharacteristic : NSObject

@end

@implementation LeGattCharacteristic

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getValue);
  methods[1].selector = @selector(getIntValueWithLeFormat:withInt:);
  methods[2].selector = @selector(setValueWithByteArray:);
  methods[3].selector = @selector(setValueWithByteArray:withBoolean:);
  methods[4].selector = @selector(read);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getIntValue", "LLeFormat;I", "setValue", "[B", "[BZ" };
  static const J2ObjcClassInfo _LeGattCharacteristic = { "LeGattCharacteristic", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_LeGattCharacteristic;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattCharacteristic)

J2OBJC_NAME_MAPPING(LeGattCharacteristic, "houtbecke.rs.le", "")
