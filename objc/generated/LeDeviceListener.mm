
#include "J2ObjC_source.h"
#include "LeDeviceListener.h"

@interface LeDeviceListener : NSObject

@end

@implementation LeDeviceListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(leDeviceFoundWithLeDevice:withLeRemoteDevice:withInt:withLeScanRecord:);
  methods[1].selector = @selector(leDeviceStateWithLeDevice:withLeDeviceState:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leDeviceFound", "LLeDevice;LLeRemoteDevice;ILLeScanRecord;", "leDeviceState", "LLeDevice;LLeDeviceState;" };
  static const J2ObjcClassInfo _LeDeviceListener = { "LeDeviceListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_LeDeviceListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeDeviceListener)
