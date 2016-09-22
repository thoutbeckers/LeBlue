
#include "J2ObjC_source.h"
#include "Session.h"

@interface Session : NSObject

@end

@implementation Session

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getGattCharacteristicMockerWithInt:", "getGattCharacteristicMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x401, NULL, NULL },
    { "getGattServiceMockerWithInt:", "getGattServiceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x401, NULL, NULL },
    { "getDeviceMockerWithInt:", "getDeviceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x401, NULL, NULL },
    { "getRemoteDeviceMockerWithInt:", "getRemoteDeviceMocker", "Lhoutbecke.rs.le.session.Mocker;", 0x401, NULL, NULL },
    { "getDefaultSource", NULL, "Lhoutbecke.rs.le.session.EventSource;", 0x401, NULL, NULL },
    { "getNamedEventSourceWithNSString:", "getNamedEventSource", "Lhoutbecke.rs.le.session.EventSource;", 0x401, NULL, NULL },
    { "getEventSourceNames", NULL, "[Ljava.lang.String;", 0x401, NULL, NULL },
    { "getSourceIdentificationWithInt:", "getSourceIdentification", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "setSourceIdentificationWithInt:withNSString:", "setSourceIdentification", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _Session = { 2, "Session", "houtbecke.rs.le.session", NULL, 0x609, 9, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_Session;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Session)