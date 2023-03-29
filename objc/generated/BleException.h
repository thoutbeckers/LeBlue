
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BleException")
#ifdef RESTRICT_BleException
#define INCLUDE_ALL_BleException 0
#else
#define INCLUDE_ALL_BleException 1
#endif
#undef RESTRICT_BleException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (BleException_) && (INCLUDE_ALL_BleException || defined(INCLUDE_BleException))
#define BleException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

@interface BleException : JavaLangException

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangException:(JavaLangException *)e;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(BleException)

FOUNDATION_EXPORT void BleException_initWithNSString_withJavaLangException_(BleException *self, NSString *message, JavaLangException *e);

FOUNDATION_EXPORT BleException *new_BleException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BleException *create_BleException_initWithNSString_withJavaLangException_(NSString *message, JavaLangException *e);

FOUNDATION_EXPORT void BleException_initWithNSString_(BleException *self, NSString *message);

FOUNDATION_EXPORT BleException *new_BleException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT BleException *create_BleException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(BleException)

@compatibility_alias HoutbeckeRsLeBleException BleException;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_BleException")
