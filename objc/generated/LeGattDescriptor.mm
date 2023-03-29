
#include "J2ObjC_source.h"
#include "LeGattDescriptor.h"

@interface LeGattDescriptor : NSObject

@end

@implementation LeGattDescriptor

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(setValue);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _LeGattDescriptor = { "LeGattDescriptor", "houtbecke.rs.le", NULL, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_LeGattDescriptor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeGattDescriptor)

J2OBJC_NAME_MAPPING(LeGattDescriptor, "houtbecke.rs.le", "")
