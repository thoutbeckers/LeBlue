
#include "ErrorLogger.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

@interface ErrorLogger : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ErrorLogger__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *ErrorLogger__Annotations$1(void);

@implementation ErrorLogger

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, 5 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(logWithInt:withNSString:withNSString:);
  methods[1].selector = @selector(logExceptionWithJavaLangException:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "log", "ILNSString;LNSString;", (void *)&ErrorLogger__Annotations$0, "logException", "LJavaLangException;", (void *)&ErrorLogger__Annotations$1 };
  static const J2ObjcClassInfo _ErrorLogger = { "ErrorLogger", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_ErrorLogger;
}

@end

IOSObjectArray *ErrorLogger__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ErrorLogger__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ErrorLogger)

J2OBJC_NAME_MAPPING(ErrorLogger, "houtbecke.rs.le", "")
