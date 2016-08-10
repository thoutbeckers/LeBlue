
#include "J2ObjC_source.h"
#include "MockedResponse.h"

@interface MockedResponse : NSObject

@end

@implementation MockedResponse

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getMockedResultValues", NULL, "[Ljava.lang.String;", 0x401, NULL, NULL },
    { "getNextMockedEvents", NULL, "[Lhoutbecke.rs.le.session.Event;", 0x401, NULL, NULL },
    { "isSelfDestroying", NULL, "Z", 0x401, NULL, NULL },
    { "isForArgumentsWithNSStringArray:", "isForArguments", "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _MockedResponse = { 2, "MockedResponse", "houtbecke.rs.le.session", NULL, 0x609, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_MockedResponse;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(MockedResponse)
