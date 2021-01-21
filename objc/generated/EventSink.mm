
#include "EventSink.h"
#include "J2ObjC_source.h"

@interface EventSink : NSObject

@end

@implementation EventSink

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LEvent;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addEventWithEvent:);
  methods[1].selector = @selector(getEvents);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addEvent", "LEvent;" };
  static const J2ObjcClassInfo _EventSink = { "EventSink", "houtbecke.rs.le.session", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_EventSink;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EventSink)

J2OBJC_NAME_MAPPING(EventSink, "houtbecke.rs.le.session", "")
