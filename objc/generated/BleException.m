
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaLangException:", "BleException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "BleException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _BleException = { 2, "BleException", "houtbecke.rs.le", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_BleException;
}

@end

void BleException_initWithNSString_withJavaLangException_(BleException *self, NSString *message, JavaLangException *e) {
  JavaLangException_initWithNSString_withNSException_(self, message, e);
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
