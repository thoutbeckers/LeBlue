
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CharacteristicsMockerObject")
#ifdef RESTRICT_CharacteristicsMockerObject
#define INCLUDE_ALL_CharacteristicsMockerObject 0
#else
#define INCLUDE_ALL_CharacteristicsMockerObject 1
#endif
#undef RESTRICT_CharacteristicsMockerObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (CharacteristicsMockerObject_) && (INCLUDE_ALL_CharacteristicsMockerObject || defined(INCLUDE_CharacteristicsMockerObject))
#define CharacteristicsMockerObject_

#define RESTRICT_MockerObject 1
#define INCLUDE_MockerObject 1
#include "MockerObject.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilUUID;
@class SessionObject;

@interface CharacteristicsMockerObject : MockerObject

#pragma mark Public

- (instancetype __nonnull)initWithSessionObject:(SessionObject *)sessionObject
                                        withInt:(jint)sessionSource;

- (CharacteristicsMockerObject *)hasFixedValueWithByteArray:(IOSByteArray *)values;

- (CharacteristicsMockerObject *)hasFixedValueWithIntArray:(IOSIntArray *)values;

- (CharacteristicsMockerObject *)hasValueWithByteArray:(IOSByteArray *)values;

- (CharacteristicsMockerObject *)hasValueWithIntArray:(IOSIntArray *)values;

- (CharacteristicsMockerObject *)hasValuesWithByteArray2:(IOSObjectArray *)multipleValues;

- (CharacteristicsMockerObject *)mocksCharacteristic;

- (CharacteristicsMockerObject *)mocksCharacteristicWithNSString:(NSString *)uuid;

- (CharacteristicsMockerObject *)mocksCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid;

@end

J2OBJC_EMPTY_STATIC_INIT(CharacteristicsMockerObject)

FOUNDATION_EXPORT void CharacteristicsMockerObject_initWithSessionObject_withInt_(CharacteristicsMockerObject *self, SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT CharacteristicsMockerObject *new_CharacteristicsMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CharacteristicsMockerObject *create_CharacteristicsMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource);

J2OBJC_TYPE_LITERAL_HEADER(CharacteristicsMockerObject)

@compatibility_alias HoutbeckeRsLeSessionCharacteristicsMockerObject CharacteristicsMockerObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_CharacteristicsMockerObject")
