
#include "J2ObjC_source.h"
#include "Mocker.h"

@interface Mocker : NSObject

@end

@implementation Mocker

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LMockedResponse;", 0x481, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LLeDeviceListener;", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "[LLeRemoteDeviceListener;", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "[LLeCharacteristicListener;", 0x401, 5, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(mockWithLeMockController:withLeEventType:withInt:withNSStringArray:);
  methods[1].selector = @selector(getDeviceListenersWithLeMockController:withInt:);
  methods[2].selector = @selector(getRemoteDeviceListenersWithLeMockController:withInt:);
  methods[3].selector = @selector(getCharacteristicListenersWithLeMockController:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "mock", "LLeMockController;LLeEventType;I[LNSString;", "getDeviceListeners", "LLeMockController;I", "getRemoteDeviceListeners", "getCharacteristicListeners" };
  static const J2ObjcClassInfo _Mocker = { "Mocker", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_Mocker;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Mocker)
