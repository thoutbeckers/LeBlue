
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LeRecord.h"
#include "LeScanRecordImpl.h"
#include "java/lang/Short.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/ByteOrder.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/UUID.h"

@interface LeScanRecordImpl_$1 : NSObject < LeRecord > {
 @public
  jint val$type_;
  IOSByteArray *val$record_;
}

- (jint)getType;

- (IOSByteArray *)getRecordContent;

- (instancetype)initWithInt:(jint)capture$0
              withByteArray:(IOSByteArray *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(LeScanRecordImpl_$1)

J2OBJC_FIELD_SETTER(LeScanRecordImpl_$1, val$record_, IOSByteArray *)

__attribute__((unused)) static void LeScanRecordImpl_$1_initWithInt_withByteArray_(LeScanRecordImpl_$1 *self, jint capture$0, IOSByteArray *capture$1);

__attribute__((unused)) static LeScanRecordImpl_$1 *new_LeScanRecordImpl_$1_initWithInt_withByteArray_(jint capture$0, IOSByteArray *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static LeScanRecordImpl_$1 *create_LeScanRecordImpl_$1_initWithInt_withByteArray_(jint capture$0, IOSByteArray *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(LeScanRecordImpl_$1)

@implementation LeScanRecordImpl

- (instancetype)initWithByteArray:(IOSByteArray *)scanrecord {
  LeScanRecordImpl_initWithByteArray_(self, scanrecord);
  return self;
}

- (IOSObjectArray *)getRecords {
  IOSObjectArray *ret = [IOSObjectArray arrayWithLength:[((id<JavaUtilCollection>) nil_chk(records_)) size] type:LeRecord_class_()];
  return [records_ toArrayWithNSObjectArray:ret];
}

- (IOSObjectArray *)getRecordsWithIntArray:(IOSIntArray *)types {
  jint len = 0;
  for (id<LeRecord> __strong record in nil_chk(records_)) {
    IOSIntArray *a__ = types;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint type = *b__++;
      len += [((id<LeRecord>) nil_chk(record)) getType] == type ? 1 : 0;
    }
  }
  IOSObjectArray *ret = [IOSObjectArray arrayWithLength:len type:LeRecord_class_()];
  jint count = 0;
  for (id<LeRecord> __strong record in records_) {
    IOSIntArray *a__ = types;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint type = *b__++;
      if ([((id<LeRecord>) nil_chk(record)) getType] == type) {
        IOSObjectArray_Set(ret, count, record);
        count++;
      }
    }
  }
  return ret;
}

- (IOSObjectArray *)getServices {
  IOSObjectArray *uuids16 = [self getRecordsWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 2, 3 } count:2]];
  IOSObjectArray *uuids128 = [self getRecordsWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 6, 7 } count:2]];
  id<JavaUtilList> uuidList = create_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = uuids16;
    id<LeRecord> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeRecord> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeRecord> record = *b__++;
      JavaNioByteBuffer *buffer = [((JavaNioByteBuffer *) nil_chk(JavaNioByteBuffer_wrapWithByteArray_([((id<LeRecord>) nil_chk(record)) getRecordContent]))) orderWithJavaNioByteOrder:JreLoadStatic(JavaNioByteOrder, LITTLE_ENDIAN)];
      while ([((JavaNioByteBuffer *) nil_chk(buffer)) remaining] >= 2) [uuidList addWithId:JavaUtilUUID_fromStringWithNSString_(NSString_formatWithNSString_withNSObjectArray_(@"%08x-0000-1000-8000-00805f9b34fb", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangShort_valueOfWithShort_([buffer getShort]) } count:1 type:NSObject_class_()]))];
    }
  }
  {
    IOSObjectArray *a__ = uuids128;
    id<LeRecord> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<LeRecord> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<LeRecord> record = *b__++;
      JavaNioByteBuffer *buffer = [((JavaNioByteBuffer *) nil_chk(JavaNioByteBuffer_wrapWithByteArray_([((id<LeRecord>) nil_chk(record)) getRecordContent]))) orderWithJavaNioByteOrder:JreLoadStatic(JavaNioByteOrder, LITTLE_ENDIAN)];
      while ([((JavaNioByteBuffer *) nil_chk(buffer)) remaining] >= 16) {
        jlong lsb = [buffer getLong];
        jlong msb = [buffer getLong];
        [uuidList addWithId:create_JavaUtilUUID_initWithLong_withLong_(msb, lsb)];
      }
    }
  }
  IOSObjectArray *uuids = [IOSObjectArray arrayWithLength:[uuidList size] type:JavaUtilUUID_class_()];
  return [uuidList toArrayWithNSObjectArray:uuids];
}

- (jboolean)hasServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid {
  IOSObjectArray *uuids = [self getServices];
  {
    IOSObjectArray *a__ = uuids;
    JavaUtilUUID * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaUtilUUID * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaUtilUUID *u = *b__++;
      if ([((JavaUtilUUID *) nil_chk(u)) isEqual:uuid]) return true;
    }
  }
  return false;
}

- (NSString *)getLocalName {
  IOSObjectArray *localName = [self getRecordsWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ 9 } count:1]];
  if (((IOSObjectArray *) nil_chk(localName))->size_ > 0) return [NSString stringWithBytes:[((id<LeRecord>) nil_chk(IOSObjectArray_Get(localName, 0))) getRecordContent]];
  else return nil;
}

- (IOSByteArray *)getRawData {
  return scanrecord_;
}

- (void)parse {
  jint recordLength, recordPos = 0;
  while (recordPos < ((IOSByteArray *) nil_chk(scanrecord_))->size_ && ((recordLength = IOSByteArray_Get(scanrecord_, recordPos++) & (jint) 0xFF) != 0)) {
    jint type = IOSByteArray_Get(scanrecord_, recordPos++) & (jint) 0xFF;
    IOSByteArray *record = JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(scanrecord_, recordPos, recordPos + recordLength - 1);
    if (type != 0) {
      [((id<JavaUtilCollection>) nil_chk(records_)) addWithId:create_LeScanRecordImpl_$1_initWithInt_withByteArray_(type, record)];
    }
    recordPos += recordLength - 1;
  }
}

- (void)dealloc {
  RELEASE_(scanrecord_);
  RELEASE_(records_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "LeScanRecordImpl", NULL, 0x1, NULL, NULL },
    { "getRecords", NULL, "[Lhoutbecke.rs.le.LeRecord;", 0x1, NULL, NULL },
    { "getRecordsWithIntArray:", "getRecords", "[Lhoutbecke.rs.le.LeRecord;", 0x81, NULL, NULL },
    { "getServices", NULL, "[Ljava.util.UUID;", 0x1, NULL, NULL },
    { "hasServiceWithJavaUtilUUID:", "hasService", "Z", 0x1, NULL, NULL },
    { "getLocalName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getRawData", NULL, "[B", 0x1, NULL, NULL },
    { "parse", NULL, "V", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scanrecord_", NULL, 0x10, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "records_", NULL, 0x10, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<Lhoutbecke/rs/le/LeRecord;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeScanRecordImpl = { 2, "LeScanRecordImpl", "houtbecke.rs.le", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeScanRecordImpl;
}

@end

void LeScanRecordImpl_initWithByteArray_(LeScanRecordImpl *self, IOSByteArray *scanrecord) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->records_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->scanrecord_, scanrecord);
  [self parse];
}

LeScanRecordImpl *new_LeScanRecordImpl_initWithByteArray_(IOSByteArray *scanrecord) {
  J2OBJC_NEW_IMPL(LeScanRecordImpl, initWithByteArray_, scanrecord)
}

LeScanRecordImpl *create_LeScanRecordImpl_initWithByteArray_(IOSByteArray *scanrecord) {
  J2OBJC_CREATE_IMPL(LeScanRecordImpl, initWithByteArray_, scanrecord)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeScanRecordImpl)

@implementation LeScanRecordImpl_$1

- (jint)getType {
  return val$type_;
}

- (IOSByteArray *)getRecordContent {
  return val$record_;
}

- (instancetype)initWithInt:(jint)capture$0
              withByteArray:(IOSByteArray *)capture$1 {
  LeScanRecordImpl_$1_initWithInt_withByteArray_(self, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$record_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getType", NULL, "I", 0x1, NULL, NULL },
    { "getRecordContent", NULL, "[B", 0x1, NULL, NULL },
    { "initWithInt:withByteArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$type_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$record_", NULL, 0x1012, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "LeScanRecordImpl", "parse" };
  static const J2ObjcClassInfo _LeScanRecordImpl_$1 = { 2, "", "houtbecke.rs.le", "LeScanRecordImpl", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_LeScanRecordImpl_$1;
}

@end

void LeScanRecordImpl_$1_initWithInt_withByteArray_(LeScanRecordImpl_$1 *self, jint capture$0, IOSByteArray *capture$1) {
  self->val$type_ = capture$0;
  JreStrongAssign(&self->val$record_, capture$1);
  NSObject_init(self);
}

LeScanRecordImpl_$1 *new_LeScanRecordImpl_$1_initWithInt_withByteArray_(jint capture$0, IOSByteArray *capture$1) {
  J2OBJC_NEW_IMPL(LeScanRecordImpl_$1, initWithInt_withByteArray_, capture$0, capture$1)
}

LeScanRecordImpl_$1 *create_LeScanRecordImpl_$1_initWithInt_withByteArray_(jint capture$0, IOSByteArray *capture$1) {
  J2OBJC_CREATE_IMPL(LeScanRecordImpl_$1, initWithInt_withByteArray_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeScanRecordImpl_$1)
