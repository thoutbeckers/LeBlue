
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ErrorLogger")
#ifdef RESTRICT_ErrorLogger
#define INCLUDE_ALL_ErrorLogger 0
#else
#define INCLUDE_ALL_ErrorLogger 1
#endif
#undef RESTRICT_ErrorLogger

#if !defined (ErrorLogger_) && (INCLUDE_ALL_ErrorLogger || defined(INCLUDE_ErrorLogger))
#define ErrorLogger_

@class JavaLangException;

@protocol ErrorLogger < JavaObject >

- (void)logWithInt:(jint)priority
      withNSString:(NSString *)tag
      withNSString:(NSString *)msg;

- (void)logExceptionWithJavaLangException:(JavaLangException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(ErrorLogger)

J2OBJC_TYPE_LITERAL_HEADER(ErrorLogger)

#define HoutbeckeRsLeErrorLogger ErrorLogger

#endif

#pragma pop_macro("INCLUDE_ALL_ErrorLogger")
