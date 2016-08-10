
#include "J2ObjC_source.h"
#include "LeRemoteDeviceListener.h"

@interface LeRemoteDeviceListener : NSObject

@end

@implementation LeRemoteDeviceListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "leDevicesConnectedWithLeDevice:withLeRemoteDevice:", "leDevicesConnected", "V", 0x401, NULL, NULL },
    { "leDevicesDisconnectedWithLeDevice:withLeRemoteDevice:", "leDevicesDisconnected", "V", 0x401, NULL, NULL },
    { "leDevicesClosedWithLeDevice:withLeRemoteDevice:", "leDevicesClosed", "V", 0x401, NULL, NULL },
    { "serviceDiscoveredWithLeDevice:withLeRemoteDevice:withLeGattStatus:withLeGattServiceArray:", "serviceDiscovered", "V", 0x401, NULL, NULL },
    { "rssiReadWithLeDevice:withLeRemoteDevice:withInt:", "rssiRead", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _LeRemoteDeviceListener = { 2, "LeRemoteDeviceListener", "houtbecke.rs.le", NULL, 0x609, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeRemoteDeviceListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRemoteDeviceListener)
