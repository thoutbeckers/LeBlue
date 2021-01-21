
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BaseIntercepting")
#ifdef RESTRICT_BaseIntercepting
#define INCLUDE_ALL_BaseIntercepting 0
#else
#define INCLUDE_ALL_BaseIntercepting 1
#endif
#undef RESTRICT_BaseIntercepting

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (BaseIntercepting_) && (INCLUDE_ALL_BaseIntercepting || defined(INCLUDE_BaseIntercepting))
#define BaseIntercepting_

@interface BaseIntercepting : NSObject {
 @public
  jint id__;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)id_;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(BaseIntercepting)

FOUNDATION_EXPORT void BaseIntercepting_initWithInt_(BaseIntercepting *self, jint id_);

J2OBJC_TYPE_LITERAL_HEADER(BaseIntercepting)

@compatibility_alias HoutbeckeRsLeInterceptorBaseIntercepting BaseIntercepting;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_BaseIntercepting")
