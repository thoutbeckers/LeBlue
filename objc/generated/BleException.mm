
#include "BleException.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"

@implementation BleException

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangException:(JavaLangException *)e {
  BleException_initWithNSString_withJavaLangException_(self, message, e);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message {
  BleException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withJavaLangException:);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LJavaLangException;", "LNSString;" };
  static const J2ObjcClassInfo _BleException = { "BleException", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_BleException;
}

@end

void BleException_initWithNSString_withJavaLangException_(BleException *self, NSString *message, JavaLangException *e) {
  JavaLangException_initWithNSString_withJavaLangThrowable_(self, message, e);
}

BleException *new_BleException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e) {
  J2OBJC_NEW_IMPL(BleException, initWithNSString_withJavaLangException_, message, e)
}

BleException *create_BleException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e) {
  J2OBJC_CREATE_IMPL(BleException, initWithNSString_withJavaLangException_, message, e)
}

void BleException_initWithNSString_(BleException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
}

BleException *new_BleException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(BleException, initWithNSString_, message)
}

BleException *create_BleException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(BleException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BleException)

J2OBJC_NAME_MAPPING(BleException, "houtbecke.rs.le", "")
