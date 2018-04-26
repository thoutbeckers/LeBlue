
#include "EventSinkUtil.h"
#include "J2ObjC_source.h"

@interface EventSinkUtil : NSObject

@end

@implementation EventSinkUtil

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(writeWithEventSink:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "write", "LEventSink;" };
  static const J2ObjcClassInfo _EventSinkUtil = { "EventSinkUtil", "houtbecke.rs.le.interceptor", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_EventSinkUtil;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(EventSinkUtil)
