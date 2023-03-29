
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeDeviceState")
#ifdef RESTRICT_LeDeviceState
#define INCLUDE_ALL_LeDeviceState 0
#else
#define INCLUDE_ALL_LeDeviceState 1
#endif
#undef RESTRICT_LeDeviceState

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (LeDeviceState_) && (INCLUDE_ALL_LeDeviceState || defined(INCLUDE_LeDeviceState))
#define LeDeviceState_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, LeDeviceState_Enum) {
  LeDeviceState_Enum_OFF = 0,
  LeDeviceState_Enum_ON = 1,
};

@interface LeDeviceState : JavaLangEnum

@property (readonly, class, nonnull) LeDeviceState *OFF NS_SWIFT_NAME(OFF);
@property (readonly, class, nonnull) LeDeviceState *ON NS_SWIFT_NAME(ON);
+ (LeDeviceState * __nonnull)OFF;

+ (LeDeviceState * __nonnull)ON;

#pragma mark Public

+ (LeDeviceState *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (LeDeviceState_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(LeDeviceState)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT LeDeviceState *LeDeviceState_values_[];

inline LeDeviceState *LeDeviceState_get_OFF(void);
J2OBJC_ENUM_CONSTANT(LeDeviceState, OFF)

inline LeDeviceState *LeDeviceState_get_ON(void);
J2OBJC_ENUM_CONSTANT(LeDeviceState, ON)

FOUNDATION_EXPORT IOSObjectArray *LeDeviceState_values(void);

FOUNDATION_EXPORT LeDeviceState *LeDeviceState_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT LeDeviceState *LeDeviceState_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(LeDeviceState)

@compatibility_alias HoutbeckeRsLeLeDeviceState LeDeviceState;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LeDeviceState")
