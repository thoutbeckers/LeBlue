
#include "J2ObjC_source.h"
#include "LeDevice.h"

@interface LeDevice : NSObject

@end

@implementation LeDevice

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(addListenerWithLeDeviceListener:);
  methods[1].selector = @selector(removeListenerWithLeDeviceListener:);
  methods[2].selector = @selector(checkBleHardwareAvailable);
  methods[3].selector = @selector(isBtEnabled);
  methods[4].selector = @selector(startScanning);
  methods[5].selector = @selector(startScanningWithJavaUtilUUIDArray:);
  methods[6].selector = @selector(startScanningWithJavaUtilList:);
  methods[7].selector = @selector(stopScanning);
  methods[8].selector = @selector(setErrorLoggerWithErrorLogger:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeDeviceListener;", "removeListener", "startScanning", "[LJavaUtilUUID;", "LJavaUtilList;", "(Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", "setErrorLogger", "LErrorLogger;" };
  static const J2ObjcClassInfo _LeDevice = { "LeDevice", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 9, 0, -1, -1, -1, -1, -1 };
  return &_LeDevice;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeDevice)
