
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeScanRecord")
#ifdef RESTRICT_LeScanRecord
#define INCLUDE_ALL_LeScanRecord 0
#else
#define INCLUDE_ALL_LeScanRecord 1
#endif
#undef RESTRICT_LeScanRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeScanRecord_) && (INCLUDE_ALL_LeScanRecord || defined(INCLUDE_LeScanRecord))
#define LeScanRecord_

@class IOSByteArray;
@class IOSObjectArray;
@class JavaUtilUUID;

@protocol LeScanRecord < JavaObject >

- (IOSObjectArray * __nonnull)getServices;

- (jboolean)hasServiceWithJavaUtilUUID:(JavaUtilUUID * __nonnull)uuid;

- (NSString * __nullable)getLocalName;

- (IOSByteArray * __nullable)getManufacturerData;

- (IOSByteArray * __nullable)getServiceDataWithJavaUtilUUID:(JavaUtilUUID * __nonnull)serviceId;

@end

J2OBJC_EMPTY_STATIC_INIT(LeScanRecord)

J2OBJC_TYPE_LITERAL_HEADER(LeScanRecord)

#define HoutbeckeRsLeLeScanRecord LeScanRecord

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeScanRecord")
