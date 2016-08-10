
#include "J2ObjC_source.h"
#include "Mocker.h"

@interface Mocker : NSObject

@end

@implementation Mocker

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "mockWithLeMockController:withLeEventType:withInt:withNSStringArray:", "mock", "Lhoutbecke.rs.le.session.MockedResponse;", 0x481, NULL, NULL },
    { "getDeviceListenersWithLeMockController:withInt:", "getDeviceListeners", "[Lhoutbecke.rs.le.LeDeviceListener;", 0x401, NULL, NULL },
    { "getRemoteDeviceListenersWithLeMockController:withInt:", "getRemoteDeviceListeners", "[Lhoutbecke.rs.le.LeRemoteDeviceListener;", 0x401, NULL, NULL },
    { "getCharacteristicListenersWithLeMockController:withInt:", "getCharacteristicListeners", "[Lhoutbecke.rs.le.LeCharacteristicListener;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _Mocker = { 2, "Mocker", "houtbecke.rs.le.session", NULL, 0x609, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_Mocker;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Mocker)
