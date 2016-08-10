
#include "BaseIntercepting.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"

@implementation BaseIntercepting

- (instancetype)initWithInt:(jint)id_ {
  BaseIntercepting_initWithInt_(self, id_);
  return self;
}

- (NSString *)description {
  return JreStrcat("$CI$", [((NSString *) nil_chk([[self getClass] getSimpleName])) replace:@"Intercepting" withSequence:@""], '[', id__, @"] ");
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "BaseIntercepting", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _BaseIntercepting = { 2, "BaseIntercepting", "houtbecke.rs.le.interceptor", NULL, 0x401, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_BaseIntercepting;
}

@end

void BaseIntercepting_initWithInt_(BaseIntercepting *self, jint id_) {
  NSObject_init(self);
  self->id__ = id_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BaseIntercepting)
