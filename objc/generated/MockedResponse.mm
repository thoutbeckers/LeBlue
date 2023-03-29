
#include "J2ObjC_source.h"
#include "MockedResponse.h"

@interface MockedResponse : NSObject

@end

@implementation MockedResponse

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LEvent;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getMockedResultValues);
  methods[1].selector = @selector(getNextMockedEvents);
  methods[2].selector = @selector(isSelfDestroying);
  methods[3].selector = @selector(isForArgumentsWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "isForArguments", "[LNSString;" };
  static const J2ObjcClassInfo _MockedResponse = { "MockedResponse", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_MockedResponse;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(MockedResponse)

J2OBJC_NAME_MAPPING(MockedResponse, "houtbecke.rs.le.session", "")
