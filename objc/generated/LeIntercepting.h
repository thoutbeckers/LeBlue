
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeIntercepting")
#ifdef RESTRICT_LeIntercepting
#define INCLUDE_ALL_LeIntercepting 0
#else
#define INCLUDE_ALL_LeIntercepting 1
#endif
#undef RESTRICT_LeIntercepting

#if !defined (LeIntercepting_) && (INCLUDE_ALL_LeIntercepting || defined(INCLUDE_LeIntercepting))
#define LeIntercepting_

#define RESTRICT_BaseIntercepting 1
#define INCLUDE_BaseIntercepting 1
#include "BaseIntercepting.h"

@class LeInterceptor;

@interface LeIntercepting : BaseIntercepting {
 @public
  LeInterceptor *leInterceptor_;
}

#pragma mark Public

- (instancetype)initWithLeInterceptor:(LeInterceptor *)leInterceptor;

@end

J2OBJC_EMPTY_STATIC_INIT(LeIntercepting)

J2OBJC_FIELD_SETTER(LeIntercepting, leInterceptor_, LeInterceptor *)

FOUNDATION_EXPORT void LeIntercepting_initWithLeInterceptor_(LeIntercepting *self, LeInterceptor *leInterceptor);

FOUNDATION_EXPORT LeIntercepting *new_LeIntercepting_initWithLeInterceptor_(LeInterceptor *leInterceptor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeIntercepting *create_LeIntercepting_initWithLeInterceptor_(LeInterceptor *leInterceptor);

J2OBJC_TYPE_LITERAL_HEADER(LeIntercepting)

@compatibility_alias HoutbeckeRsLeInterceptorLeIntercepting LeIntercepting;

#endif

#pragma pop_macro("INCLUDE_ALL_LeIntercepting")
