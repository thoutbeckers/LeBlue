
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeScanRecordImpl")
#ifdef RESTRICT_LeScanRecordImpl
#define INCLUDE_ALL_LeScanRecordImpl 0
#else
#define INCLUDE_ALL_LeScanRecordImpl 1
#endif
#undef RESTRICT_LeScanRecordImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeScanRecordImpl_) && (INCLUDE_ALL_LeScanRecordImpl || defined(INCLUDE_LeScanRecordImpl))
#define LeScanRecordImpl_

#define RESTRICT_LeScanRecord 1
#define INCLUDE_LeScanRecord 1
#include "LeScanRecord.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilUUID;
@protocol JavaUtilCollection;

@interface LeScanRecordImpl : NSObject < LeScanRecord > {
 @public
  IOSByteArray *scanrecord_;
  id<JavaUtilCollection> records_;
}

#pragma mark Public

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)scanrecord;

- (NSString *)getLocalName;

- (IOSByteArray *)getRawData;

- (IOSObjectArray *)getRecords;

- (IOSObjectArray *)getRecordsWithIntArray:(IOSIntArray *)types;

- (IOSObjectArray *)getServices;

- (jboolean)hasServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid;

#pragma mark Package-Private

- (void)parse;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(LeScanRecordImpl)

J2OBJC_FIELD_SETTER(LeScanRecordImpl, scanrecord_, IOSByteArray *)
J2OBJC_FIELD_SETTER(LeScanRecordImpl, records_, id<JavaUtilCollection>)

FOUNDATION_EXPORT void LeScanRecordImpl_initWithByteArray_(LeScanRecordImpl *self, IOSByteArray *scanrecord);

FOUNDATION_EXPORT LeScanRecordImpl *new_LeScanRecordImpl_initWithByteArray_(IOSByteArray *scanrecord) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT LeScanRecordImpl *create_LeScanRecordImpl_initWithByteArray_(IOSByteArray *scanrecord);

J2OBJC_TYPE_LITERAL_HEADER(LeScanRecordImpl)

@compatibility_alias HoutbeckeRsLeLeScanRecordImpl LeScanRecordImpl;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeScanRecordImpl")
