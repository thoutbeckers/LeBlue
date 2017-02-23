
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeScanRecord")
#ifdef RESTRICT_LeScanRecord
#define INCLUDE_ALL_LeScanRecord 0
#else
#define INCLUDE_ALL_LeScanRecord 1
#endif
#undef RESTRICT_LeScanRecord

#if !defined (LeScanRecord_) && (INCLUDE_ALL_LeScanRecord || defined(INCLUDE_LeScanRecord))
#define LeScanRecord_

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilUUID;

@protocol LeScanRecord < JavaObject >

- (IOSObjectArray *)getRecords;

- (IOSObjectArray *)getRecordsWithIntArray:(IOSIntArray *)types;

- (IOSObjectArray *)getServices;

- (jboolean)hasServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid;

- (NSString *)getLocalName;

- (IOSByteArray *)getRawData;

@end

J2OBJC_EMPTY_STATIC_INIT(LeScanRecord)

J2OBJC_TYPE_LITERAL_HEADER(LeScanRecord)

#define HoutbeckeRsLeLeScanRecord LeScanRecord

#endif

#pragma pop_macro("INCLUDE_ALL_LeScanRecord")
