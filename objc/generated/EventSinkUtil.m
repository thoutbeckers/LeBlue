
#include "EventSinkUtil.h"
#include "J2ObjC_source.h"

@interface EventSinkUtil : NSObject

@end

@implementation EventSinkUtil

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithEventSink:", "write", "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _EventSinkUtil = { 2, "EventSinkUtil", "houtbecke.rs.le.interceptor", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_EventSinkUtil;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EventSinkUtil)
