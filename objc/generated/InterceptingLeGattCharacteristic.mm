
#include "IOSPrimitiveArray.h"
#include "InterceptingLeGattCharacteristic.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeIntercepting.h"
#include "LeInterceptor.h"
#include "java/lang/Boolean.h"

@implementation InterceptingLeGattCharacteristic

- (instancetype)initWithLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic
                           withLeInterceptor:(LeInterceptor *)leInterceptor {
  InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(self, leGattCharacteristic, leInterceptor);
  return self;
}

- (IOSByteArray *)getValue {
  @synchronized(leInterceptor_) {
    IOSByteArray *value = [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) getValue];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotValueWithInterceptingLeGattCharacteristic:self withByteArray:value];
    return JreRetainedLocalValue(value);
  }
}

- (jint)getIntValueWithLeFormat:(LeFormat *)format
                        withInt:(jint)index {
  @synchronized(leInterceptor_) {
    jint value = [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) getIntValueWithLeFormat:format withInt:index];
    [((LeInterceptor *) nil_chk(leInterceptor_)) gotIntValueWithInterceptingLeGattCharacteristic:self withLeFormat:format withInt:value];
    return value;
  }
}

- (void)setValueWithByteArray:(IOSByteArray *)value {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) setValueWithByteArray:value];
    [((LeInterceptor *) nil_chk(leInterceptor_)) setValueWithInterceptingLeGattCharacteristic:self withByteArray:value];
  }
}

- (void)setValueWithByteArray:(IOSByteArray *)value
                  withBoolean:(jboolean)withResponse {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) setValueWithByteArray:value withBoolean:withResponse];
    [((LeInterceptor *) nil_chk(leInterceptor_)) setValueWithInterceptingLeGattCharacteristic:self withByteArray:value withJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_(withResponse)];
  }
}

- (void)read {
  @synchronized(leInterceptor_) {
    [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) read];
    [((LeInterceptor *) nil_chk(leInterceptor_)) readWithInterceptingLeGattCharacteristic:self];
  }
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  while ([o isKindOfClass:[InterceptingLeGattCharacteristic class]]) o = ((InterceptingLeGattCharacteristic *) nil_chk(((InterceptingLeGattCharacteristic *) cast_chk(o, [InterceptingLeGattCharacteristic class]))))->leGattCharacteristic_;
  return [LeCharacteristicListener_class_() isInstance:o] && [nil_chk(o) isEqual:leGattCharacteristic_];
}

- (NSUInteger)hash {
  return ((jint) [((id<LeGattCharacteristic>) nil_chk(leGattCharacteristic_)) hash]);
}

- (void)dealloc {
  RELEASE_(leGattCharacteristic_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLeGattCharacteristic:withLeInterceptor:);
  methods[1].selector = @selector(getValue);
  methods[2].selector = @selector(getIntValueWithLeFormat:withInt:);
  methods[3].selector = @selector(setValueWithByteArray:);
  methods[4].selector = @selector(setValueWithByteArray:withBoolean:);
  methods[5].selector = @selector(read);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "leGattCharacteristic_", "LLeGattCharacteristic;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LLeGattCharacteristic;LLeInterceptor;", "getIntValue", "LLeFormat;I", "setValue", "[B", "[BZ", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InterceptingLeGattCharacteristic = { "InterceptingLeGattCharacteristic", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_InterceptingLeGattCharacteristic;
}

@end

void InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(InterceptingLeGattCharacteristic *self, id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  LeIntercepting_initWithLeInterceptor_(self, leInterceptor);
  JreStrongAssign(&self->leGattCharacteristic_, leGattCharacteristic);
}

InterceptingLeGattCharacteristic *new_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  J2OBJC_NEW_IMPL(InterceptingLeGattCharacteristic, initWithLeGattCharacteristic_withLeInterceptor_, leGattCharacteristic, leInterceptor)
}

InterceptingLeGattCharacteristic *create_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(id<LeGattCharacteristic> leGattCharacteristic, LeInterceptor *leInterceptor) {
  J2OBJC_CREATE_IMPL(InterceptingLeGattCharacteristic, initWithLeGattCharacteristic_withLeInterceptor_, leGattCharacteristic, leInterceptor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InterceptingLeGattCharacteristic)

J2OBJC_NAME_MAPPING(InterceptingLeGattCharacteristic, "houtbecke.rs.le.interceptor", "")
