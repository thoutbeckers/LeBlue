
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattDescriptorValue")
#ifdef RESTRICT_LeGattDescriptorValue
#define INCLUDE_ALL_LeGattDescriptorValue 0
#else
#define INCLUDE_ALL_LeGattDescriptorValue 1
#endif
#undef RESTRICT_LeGattDescriptorValue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeGattDescriptorValue_) && (INCLUDE_ALL_LeGattDescriptorValue || defined(INCLUDE_LeGattDescriptorValue))
#define LeGattDescriptorValue_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

@interface LeGattDescriptorValue : JavaLangEnum

#pragma mark Public

+ (LeGattDescriptorValue *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattDescriptorValue)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeGattDescriptorValue *LeGattDescriptorValue_values_[];

FOUNDATION_EXPORT IOSObjectArray *LeGattDescriptorValue_values(void);

FOUNDATION_EXPORT LeGattDescriptorValue *LeGattDescriptorValue_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeGattDescriptorValue *LeGattDescriptorValue_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeGattDescriptorValue)

@compatibility_alias HoutbeckeRsLeLeGattDescriptorValue LeGattDescriptorValue;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeGattDescriptorValue")
