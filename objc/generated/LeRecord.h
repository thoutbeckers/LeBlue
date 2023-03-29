
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRecord")
#ifdef RESTRICT_LeRecord
#define INCLUDE_ALL_LeRecord 0
#else
#define INCLUDE_ALL_LeRecord 1
#endif
#undef RESTRICT_LeRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeRecord_) && (INCLUDE_ALL_LeRecord || defined(INCLUDE_LeRecord))
#define LeRecord_

@class IOSByteArray;

@protocol LeRecord < JavaObject >

- (jint)getType;

- (IOSByteArray * __nullable)getRecordContent;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRecord)

J2OBJC_TYPE_LITERAL_HEADER(LeRecord)

#define HoutbeckeRsLeLeRecord LeRecord

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeRecord")
