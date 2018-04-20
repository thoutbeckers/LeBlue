
#include "BaseIntercepting.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"

@implementation BaseIntercepting

- (instancetype __nonnull)initWithInt:(jint)id_ {
  BaseIntercepting_initWithInt_(self, id_);
  return self;
}

- (NSString *)description {
  return JreStrcat("$CI$", [((NSString *) nil_chk([[self java_getClass] getSimpleName])) java_replace:@"Intercepting" withSequence:@""], '[', id__, @"] ");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "I", .constantValue.asLong = 0, 0x11, 2, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "toString", "id" };
  static const J2ObjcClassInfo _BaseIntercepting = { "BaseIntercepting", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x401, 2, 1, -1, -1, -1, -1, -1 };
  return &_BaseIntercepting;
}

@end

void BaseIntercepting_initWithInt_(BaseIntercepting *self, jint id_) {
  NSObject_init(self);
  self->id__ = id_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BaseIntercepting)
