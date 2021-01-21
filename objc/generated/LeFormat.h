
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeFormat")
#ifdef RESTRICT_LeFormat
#define INCLUDE_ALL_LeFormat 0
#else
#define INCLUDE_ALL_LeFormat 1
#endif
#undef RESTRICT_LeFormat

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeFormat_) && (INCLUDE_ALL_LeFormat || defined(INCLUDE_LeFormat))
#define LeFormat_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, LeFormat_Enum) {
  LeFormat_Enum_FORMAT_UINT8 = 0,
  LeFormat_Enum_FORMAT_UINT16 = 1,
  LeFormat_Enum_FORMAT_UINT32 = 2,
  LeFormat_Enum_FORMAT_SINT8 = 3,
  LeFormat_Enum_FORMAT_SINT16 = 4,
  LeFormat_Enum_FORMAT_SINT32 = 5,
  LeFormat_Enum_FORMAT_SFLOAT = 6,
  LeFormat_Enum_FORMAT_FLOAT = 7,
};

@interface LeFormat : JavaLangEnum

@property (readonly, class, nonnull) LeFormat *FORMAT_UINT8 NS_SWIFT_NAME(FORMAT_UINT8);
@property (readonly, class, nonnull) LeFormat *FORMAT_UINT16 NS_SWIFT_NAME(FORMAT_UINT16);
@property (readonly, class, nonnull) LeFormat *FORMAT_UINT32 NS_SWIFT_NAME(FORMAT_UINT32);
@property (readonly, class, nonnull) LeFormat *FORMAT_SINT8 NS_SWIFT_NAME(FORMAT_SINT8);
@property (readonly, class, nonnull) LeFormat *FORMAT_SINT16 NS_SWIFT_NAME(FORMAT_SINT16);
@property (readonly, class, nonnull) LeFormat *FORMAT_SINT32 NS_SWIFT_NAME(FORMAT_SINT32);
@property (readonly, class, nonnull) LeFormat *FORMAT_SFLOAT NS_SWIFT_NAME(FORMAT_SFLOAT);
@property (readonly, class, nonnull) LeFormat *FORMAT_FLOAT NS_SWIFT_NAME(FORMAT_FLOAT);
+ (LeFormat * __nonnull)FORMAT_UINT8;

+ (LeFormat * __nonnull)FORMAT_UINT16;

+ (LeFormat * __nonnull)FORMAT_UINT32;

+ (LeFormat * __nonnull)FORMAT_SINT8;

+ (LeFormat * __nonnull)FORMAT_SINT16;

+ (LeFormat * __nonnull)FORMAT_SINT32;

+ (LeFormat * __nonnull)FORMAT_SFLOAT;

+ (LeFormat * __nonnull)FORMAT_FLOAT;

#pragma mark Public

- (jint)format;

+ (LeFormat *)fromStringWithNSString:(NSString *)status;

+ (LeFormat *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (LeFormat_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(LeFormat)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeFormat *LeFormat_values_[];

inline LeFormat *LeFormat_get_FORMAT_UINT8(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_UINT8)

inline LeFormat *LeFormat_get_FORMAT_UINT16(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_UINT16)

inline LeFormat *LeFormat_get_FORMAT_UINT32(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_UINT32)

inline LeFormat *LeFormat_get_FORMAT_SINT8(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_SINT8)

inline LeFormat *LeFormat_get_FORMAT_SINT16(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_SINT16)

inline LeFormat *LeFormat_get_FORMAT_SINT32(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_SINT32)

inline LeFormat *LeFormat_get_FORMAT_SFLOAT(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_SFLOAT)

inline LeFormat *LeFormat_get_FORMAT_FLOAT(void);
J2OBJC_ENUM_CONSTANT(LeFormat, FORMAT_FLOAT)

FOUNDATION_EXPORT LeFormat *LeFormat_fromStringWithNSString_(NSString *status);

FOUNDATION_EXPORT IOSObjectArray *LeFormat_values(void);

FOUNDATION_EXPORT LeFormat *LeFormat_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeFormat *LeFormat_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeFormat)

@compatibility_alias HoutbeckeRsLeLeFormat LeFormat;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeFormat")
