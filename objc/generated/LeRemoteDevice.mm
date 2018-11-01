
#include "J2ObjC_source.h"
#include "LeRemoteDevice.h"

@interface LeRemoteDevice : NSObject

@end

@implementation LeRemoteDevice

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x481, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addListenerWithLeRemoteDeviceListener:);
  methods[1].selector = @selector(removeListenerWithLeRemoteDeviceListener:);
  methods[2].selector = @selector(getAddress);
  methods[3].selector = @selector(connect);
  methods[4].selector = @selector(disconnect);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(startServicesDiscovery);
  methods[7].selector = @selector(startServicesDiscoveryWithJavaUtilUUIDArray:);
  methods[8].selector = @selector(setCharacteristicWriteListenerWithLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[9].selector = @selector(setCharacteristicListenerWithLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[10].selector = @selector(getName);
  methods[11].selector = @selector(readRssi);
  methods[12].selector = @selector(refreshDeviceCache);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addListener", "LLeRemoteDeviceListener;", "removeListener", "startServicesDiscovery", "[LJavaUtilUUID;", "setCharacteristicWriteListener", "LLeCharacteristicWriteListener;[LJavaUtilUUID;", "setCharacteristicListener", "LLeCharacteristicListener;[LJavaUtilUUID;" };
  static const J2ObjcClassInfo _LeRemoteDevice = { "LeRemoteDevice", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 13, 0, -1, -1, -1, -1, -1 };
  return &_LeRemoteDevice;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRemoteDevice)

J2OBJC_NAME_MAPPING(LeRemoteDevice, "houtbecke.rs.le", "")
