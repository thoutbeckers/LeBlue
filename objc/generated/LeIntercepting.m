
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLeInterceptor:", "LeIntercepting", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "leInterceptor_", NULL, 0x10, "Lhoutbecke.rs.le.interceptor.LeInterceptor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeIntercepting = { 2, "LeIntercepting", "houtbecke.rs.le.interceptor", NULL, 0x1, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
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
