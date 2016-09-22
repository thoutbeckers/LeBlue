
#include "EventSink.h"
#include "J2ObjC_source.h"

@interface EventSink : NSObject

@end

@implementation EventSink

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addEventWithEvent:", "addEvent", "V", 0x401, NULL, NULL },
    { "getEvents", NULL, "[Lhoutbecke.rs.le.session.Event;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _EventSink = { 2, "EventSink", "houtbecke.rs.le.session", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_EventSink;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EventSink)