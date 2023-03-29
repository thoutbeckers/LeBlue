
#include "J2ObjC_source.h"
#include "Session.h"

@interface Session : NSObject

@end

@implementation Session

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LMocker;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x401, 3, 1, -1, -1, -1, -1 },
    { NULL, "LMocker;", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "LEventSource;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEventSource;", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 7, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getGattCharacteristicMockerWithInt:);
  methods[1].selector = @selector(getGattServiceMockerWithInt:);
  methods[2].selector = @selector(getDeviceMockerWithInt:);
  methods[3].selector = @selector(getRemoteDeviceMockerWithInt:);
  methods[4].selector = @selector(getDefaultSource);
  methods[5].selector = @selector(getNamedEventSourceWithNSString:);
  methods[6].selector = @selector(getEventSourceNames);
  methods[7].selector = @selector(getSourceIdentificationWithInt:);
  methods[8].selector = @selector(setSourceIdentificationWithInt:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getGattCharacteristicMocker", "I", "getGattServiceMocker", "getDeviceMocker", "getRemoteDeviceMocker", "getNamedEventSource", "LNSString;", "getSourceIdentification", "setSourceIdentification", "ILNSString;" };
  static const J2ObjcClassInfo _Session = { "Session", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x609, 9, 0, -1, -1, -1, -1, -1 };
  return &_Session;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Session)

J2OBJC_NAME_MAPPING(Session, "houtbecke.rs.le.session", "")
