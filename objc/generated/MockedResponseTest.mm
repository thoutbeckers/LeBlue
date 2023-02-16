#include "MockedResponseObject.h"
#include "MockedResponseTest.h"
#include "java/lang/annotation/Annotation.h"
#include "org/junit/Test.h"

__attribute__((unused)) static IOSObjectArray *MockedResponseTest__Annotations$0(void);

@implementation MockedResponseTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  MockedResponseTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testMockedResponse {
  MockedResponseObject *mr = create_MockedResponseObject_initWithNSStringArray_([IOSObjectArray arrayWithLength:0 type:NSString_class_()]);
  JreAssert([mr isForArgumentsWithNSStringArray:nil], @"houtbecke/rs/le/MockedResponseTest.java:12 condition failed: assert mr.isForArguments(null);");
  JreAssert([mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]], @"houtbecke/rs/le/MockedResponseTest.java:13 condition failed: assert mr.isForArguments(new String[0]);");
  JreAssert(([mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"merp" } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:14 condition failed: assert mr.isForArguments(new String[]{\"merp\"});");
  [mr forArgumentsWithNSString:@"merp" withInt:0];
  JreAssert(([mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"merp" } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:18 condition failed: assert mr.isForArguments(new String[]{\"merp\"});");
  JreAssert((![mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"herp" } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:19 condition failed: assert !mr.isForArguments(new String[]{\"herp\"});");
  JreAssert((![mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ nil } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:20 condition failed: assert !mr.isForArguments(new String[]{null});");
  [mr forArgumentsWithNSString:nil withInt:0];
  JreAssert(([mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ nil } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:23 condition failed: assert mr.isForArguments(new String[]{null});");
  JreAssert((![mr isForArgumentsWithNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ @"merp" } count:1 type:NSString_class_()]]), @"houtbecke/rs/le/MockedResponseTest.java:24 condition failed: assert !mr.isForArguments(new String[]{\"merp\"});");
  [mr forArgumentsWithNSString:@"merp" withInt:1];
  IOSObjectArray *merp = [IOSObjectArray arrayWithObjects:(id[]){ @"merp" } count:1 type:NSString_class_()];
  IOSObjectArray *nullmerp = [IOSObjectArray arrayWithObjects:(id[]){ nil, @"merp" } count:2 type:NSString_class_()];
  JreAssert(![mr isForArgumentsWithNSStringArray:merp], @"houtbecke/rs/le/MockedResponseTest.java:31 condition failed: assert !mr.isForArguments(merp);");
  JreAssert([mr isForArgumentsWithNSStringArray:nullmerp], @"houtbecke/rs/le/MockedResponseTest.java:32 condition failed: assert mr.isForArguments(nullmerp);");
  [mr destroyAfterUse];
  JreAssert([mr isSelfDestroying], @"houtbecke/rs/le/MockedResponseTest.java:36 condition failed: assert mr.isSelfDestroying();");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 0, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testMockedResponse);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&MockedResponseTest__Annotations$0 };
  static const J2ObjcClassInfo _MockedResponseTest = { "MockedResponseTest", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_MockedResponseTest;
}

@end

void MockedResponseTest_init(MockedResponseTest *self) {
  NSObject_init(self);
}

MockedResponseTest *new_MockedResponseTest_init() {
  J2OBJC_NEW_IMPL(MockedResponseTest, init)
}

MockedResponseTest *create_MockedResponseTest_init() {
  J2OBJC_CREATE_IMPL(MockedResponseTest, init)
}

IOSObjectArray *MockedResponseTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MockedResponseTest)

J2OBJC_NAME_MAPPING(MockedResponseTest, "houtbecke.rs.le", "")
