
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeRecord")
#ifdef RESTRICT_LeRecord
#define INCLUDE_ALL_LeRecord 0
#else
#define INCLUDE_ALL_LeRecord 1
#endif
#undef RESTRICT_LeRecord

#if !defined (LeRecord_) && (INCLUDE_ALL_LeRecord || defined(INCLUDE_LeRecord))
#define LeRecord_

@class IOSByteArray;

@protocol LeRecord < NSObject, JavaObject >

- (jint)getType;

- (IOSByteArray *)getRecordContent;

@end

J2OBJC_EMPTY_STATIC_INIT(LeRecord)

J2OBJC_TYPE_LITERAL_HEADER(LeRecord)

#define HoutbeckeRsLeLeRecord LeRecord

#endif

#pragma pop_macro("INCLUDE_ALL_LeRecord")
