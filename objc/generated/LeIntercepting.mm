
#include "BaseIntercepting.h"
#include "J2ObjC_source.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"

@implementation LeIntercepting

- (instancetype)initWithLeInterceptor:(LeInterceptor *)leInterceptor {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  return self;
}

- (void)dealloc {
  RELEASE_(leInterceptor_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLeInterceptor:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leInterceptor_", "LLeInterceptor;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeInterceptor;" };
  static const J2ObjcClassInfo _LeIntercepting = { "LeIntercepting", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 1, 1, -1, -1, -1, -1, -1 };
  return &_LeIntercepting;
}

@end

void LeIntercepting_initWithLeInterceptor_(LeIntercepting *self, LeInterceptor *leInterceptor) {
  BaseIntercepting_initWithInt_(self, ((LeInterceptor *) nil_chk(leInterceptor))->counter_++);
  JreStrongAssign(&self->leInterceptor_, leInterceptor);
}

LeIntercepting *new_LeIntercepting_initWithLeInterceptor_(LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(LeIntercepting, initWithLeInterceptor_, leInterceptor)
}

LeIntercepting *create_LeIntercepting_initWithLeInterceptor_(LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(LeIntercepting, initWithLeInterceptor_, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeIntercepting)
