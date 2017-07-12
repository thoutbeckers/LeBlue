
#include "ErrorLogger.h"
#include "J2ObjC_source.h"

@interface ErrorLogger : NSObject

@end

@implementation ErrorLogger

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(logWithInt:withNSString:withNSString:);
  methods[1].selector = @selector(logExceptionWithJavaLangException:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "log", "ILNSString;LNSString;", "logException", "LJavaLangException;" };
  static const J2ObjcClassInfo _ErrorLogger = { "ErrorLogger", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_ErrorLogger;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ErrorLogger)
