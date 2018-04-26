
#include "J2ObjC_source.h"
#include "LeRecord.h"

@interface LeRecord : NSObject

@end

@implementation LeRecord

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getType);
  methods[1].selector = @selector(getRecordContent);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _LeRecord = { "LeRecord", "houtbecke.rs.le", NULL, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_LeRecord;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeRecord)
