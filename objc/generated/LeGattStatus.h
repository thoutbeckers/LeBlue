
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattStatus")
#ifdef RESTRICT_LeGattStatus
#define INCLUDE_ALL_LeGattStatus 0
#else
#define INCLUDE_ALL_LeGattStatus 1
#endif
#undef RESTRICT_LeGattStatus

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattStatus_) && (INCLUDE_ALL_LeGattStatus || defined(INCLUDE_LeGattStatus))
#define LeGattStatus_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, LeGattStatus_Enum) {
  LeGattStatus_Enum_SUCCESS = 0,
  LeGattStatus_Enum_READ_NOT_PERMITTED = 1,
  LeGattStatus_Enum_WRITE_NOT_PERMITTED = 2,
  LeGattStatus_Enum_INSUFFICIENT_AUTHENTICATION = 3,
  LeGattStatus_Enum_REQUEST_NOT_SUPPORTED = 4,
  LeGattStatus_Enum_INSUFFICIENT_ENCRYPTION = 5,
  LeGattStatus_Enum_INVALID_OFFSET = 6,
  LeGattStatus_Enum_INVALID_ATTRIBUTE_LENGTH = 7,
  LeGattStatus_Enum_FAILURE = 8,
};

@interface LeGattStatus : JavaLangEnum

@property (readonly, class, nonnull) LeGattStatus *SUCCESS NS_SWIFT_NAME(SUCCESS);
@property (readonly, class, nonnull) LeGattStatus *READ_NOT_PERMITTED NS_SWIFT_NAME(READ_NOT_PERMITTED);
@property (readonly, class, nonnull) LeGattStatus *WRITE_NOT_PERMITTED NS_SWIFT_NAME(WRITE_NOT_PERMITTED);
@property (readonly, class, nonnull) LeGattStatus *INSUFFICIENT_AUTHENTICATION NS_SWIFT_NAME(INSUFFICIENT_AUTHENTICATION);
@property (readonly, class, nonnull) LeGattStatus *REQUEST_NOT_SUPPORTED NS_SWIFT_NAME(REQUEST_NOT_SUPPORTED);
@property (readonly, class, nonnull) LeGattStatus *INSUFFICIENT_ENCRYPTION NS_SWIFT_NAME(INSUFFICIENT_ENCRYPTION);
@property (readonly, class, nonnull) LeGattStatus *INVALID_OFFSET NS_SWIFT_NAME(INVALID_OFFSET);
@property (readonly, class, nonnull) LeGattStatus *INVALID_ATTRIBUTE_LENGTH NS_SWIFT_NAME(INVALID_ATTRIBUTE_LENGTH);
@property (readonly, class, nonnull) LeGattStatus *FAILURE NS_SWIFT_NAME(FAILURE);
+ (LeGattStatus * __nonnull)SUCCESS;

+ (LeGattStatus * __nonnull)READ_NOT_PERMITTED;

+ (LeGattStatus * __nonnull)WRITE_NOT_PERMITTED;

+ (LeGattStatus * __nonnull)INSUFFICIENT_AUTHENTICATION;

+ (LeGattStatus * __nonnull)REQUEST_NOT_SUPPORTED;

+ (LeGattStatus * __nonnull)INSUFFICIENT_ENCRYPTION;

+ (LeGattStatus * __nonnull)INVALID_OFFSET;

+ (LeGattStatus * __nonnull)INVALID_ATTRIBUTE_LENGTH;

+ (LeGattStatus * __nonnull)FAILURE;

#pragma mark Public

+ (LeGattStatus * __nullable)fromStringWithNSString:(NSString * __nonnull)status;

+ (LeGattStatus *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (LeGattStatus_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(LeGattStatus)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeGattStatus *LeGattStatus_values_[];

inline LeGattStatus *LeGattStatus_get_SUCCESS(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, SUCCESS)

inline LeGattStatus *LeGattStatus_get_READ_NOT_PERMITTED(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, READ_NOT_PERMITTED)

inline LeGattStatus *LeGattStatus_get_WRITE_NOT_PERMITTED(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, WRITE_NOT_PERMITTED)

inline LeGattStatus *LeGattStatus_get_INSUFFICIENT_AUTHENTICATION(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, INSUFFICIENT_AUTHENTICATION)

inline LeGattStatus *LeGattStatus_get_REQUEST_NOT_SUPPORTED(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, REQUEST_NOT_SUPPORTED)

inline LeGattStatus *LeGattStatus_get_INSUFFICIENT_ENCRYPTION(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, INSUFFICIENT_ENCRYPTION)

inline LeGattStatus *LeGattStatus_get_INVALID_OFFSET(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, INVALID_OFFSET)

inline LeGattStatus *LeGattStatus_get_INVALID_ATTRIBUTE_LENGTH(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, INVALID_ATTRIBUTE_LENGTH)

inline LeGattStatus *LeGattStatus_get_FAILURE(void);
J2OBJC_ENUM_CONSTANT(LeGattStatus, FAILURE)

FOUNDATION_EXPORT LeGattStatus *LeGattStatus_fromStringWithNSString_(NSString *status);

FOUNDATION_EXPORT IOSObjectArray *LeGattStatus_values(void);

FOUNDATION_EXPORT LeGattStatus *LeGattStatus_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeGattStatus *LeGattStatus_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeGattStatus)

@compatibility_alias HoutbeckeRsLeLeGattStatus LeGattStatus;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattStatus")
