
#include "J2ObjC_source.h"
#include "LeRemoteDeviceListener.h"

@interface LeRemoteDeviceListener : NSObject

@end

@implementation LeRemoteDeviceListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(leDevicesConnectedWithLeDevice:withLeRemoteDevice:);
  methods[1].selector = @selector(leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:);
  methods[2].selector = @selector(leDevicesClosedWithLeDevice:withLeRemoteDevice:);
  methods[3].selector = @selector(serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:);
  methods[4].selector = @selector(rssiReadWithLeDevice:withLeRemoteDevice:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "leDevicesConnected", "LLeDevice;LLeRemoteDevice;", "leDevicesDisconnected", "leDevicesClosed", "serviceDiscovered", "LLeDevice;LLeRemoteDevice;LLeGattStatus;[LLeGattService;", "rssiRead", "LLeDevice;LLeRemoteDevice;I" };
  static const J2ObjcClassInfo _LeRemoteDeviceListener = { "LeRemoteDeviceListener", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_LeRemoteDeviceListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRemoteDeviceListener)

J2OBJC_NAME_MAPPING(LeRemoteDeviceListener, "houtbecke.rs.le", "")
