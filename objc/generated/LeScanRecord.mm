
#include "J2ObjC_source.h"
#include "LeScanRecord.h"

@interface LeScanRecord : NSObject

@end

@implementation LeScanRecord

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LLeRecord;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LLeRecord;", 0x481, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LJavaUtilUUID;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getRecords);
  methods[1].selector = @selector(getRecordsWithIntArray:);
  methods[2].selector = @selector(getServices);
  methods[3].selector = @selector(hasServiceWithJavaUtilUUID:);
  methods[4].selector = @selector(getLocalName);
  methods[5].selector = @selector(getManufacturerData);
  methods[6].selector = @selector(getRawData);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getRecords", "[I", "hasService", "LJavaUtilUUID;" };
  static const J2ObjcClassInfo _LeScanRecord = { "LeScanRecord", "houtbecke.rs.le", ptrTable, methods, NULL, 7, 0x609, 7, 0, -1, -1, -1, -1, -1 };
  return &_LeScanRecord;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(LeScanRecord)
