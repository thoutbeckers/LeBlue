
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GattServiceMockerObject")
#ifdef RESTRICT_GattServiceMockerObject
#define INCLUDE_ALL_GattServiceMockerObject 0
#else
#define INCLUDE_ALL_GattServiceMockerObject 1
#endif
#undef RESTRICT_GattServiceMockerObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GattServiceMockerObject_) && (INCLUDE_ALL_GattServiceMockerObject || defined(INCLUDE_GattServiceMockerObject))
#define GattServiceMockerObject_

#define RESTRICT_MockerObject 1
#define INCLUDE_MockerObject 1
#include "MockerObject.h"

@class JavaLangBoolean;
@class JavaUtilUUID;
@class SessionObject;

@interface GattServiceMockerObject : MockerObject

#pragma mark Public

- (instancetype __nonnull)initWithSessionObject:(SessionObject *)sessionObject
                                        withInt:(jint)sessionSource;

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristic
                                      withInt:(jint)remoteId
                          withJavaLangBoolean:(JavaLangBoolean *)enable;

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristicId
                                      withInt:(jint)remoteId
                                 withNSString:(NSString *)uuid
                                 withNSString:(NSString *)enable;

- (GattServiceMockerObject *)canNotifyWithInt:(jint)characteristic
                             withJavaUtilUUID:(JavaUtilUUID *)uuid
                                      withInt:(jint)remoteId
                          withJavaLangBoolean:(JavaLangBoolean *)enable;

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristic;

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristicId
                                         withNSString:(NSString *)uuid;

- (GattServiceMockerObject *)hasCharacteristicWithInt:(jint)characteristic
                                     withJavaUtilUUID:(JavaUtilUUID *)uuid;

- (GattServiceMockerObject *)mocksServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid;

@end

J2OBJC_EMPTY_STATIC_INIT(GattServiceMockerObject)

FOUNDATION_EXPORT void GattServiceMockerObject_initWithSessionObject_withInt_(GattServiceMockerObject *self, SessionObject *sessionObject, jint sessionSource);

FOUNDATION_EXPORT GattServiceMockerObject *new_GattServiceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GattServiceMockerObject *create_GattServiceMockerObject_initWithSessionObject_withInt_(SessionObject *sessionObject, jint sessionSource);

J2OBJC_TYPE_LITERAL_HEADER(GattServiceMockerObject)

@compatibility_alias HoutbeckeRsLeSessionGattServiceMockerObject GattServiceMockerObject;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_GattServiceMockerObject")
