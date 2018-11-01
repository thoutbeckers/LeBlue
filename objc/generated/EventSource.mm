
#include "EventSource.h"
#include "J2ObjC_source.h"

@interface EventSource : NSObject

@end

@implementation EventSource

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LEvent;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(nextEvent);
  methods[1].selector = @selector(hasMoreEvent);
  methods[2].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _EventSource = { "EventSource", "houtbecke.rs.le.session", NULL, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_EventSource;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EventSource)

J2OBJC_NAME_MAPPING(EventSource, "houtbecke.rs.le.session", "")
