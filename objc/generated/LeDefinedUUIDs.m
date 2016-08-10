
#include "J2ObjC_source.h"
#include "LeDefinedUUIDs.h"
#include "java/util/UUID.h"

@implementation LeDefinedUUIDs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LeDefinedUUIDs", NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lhoutbecke.rs.le.LeDefinedUUIDs$Service;", "Lhoutbecke.rs.le.LeDefinedUUIDs$Characteristic;", "Lhoutbecke.rs.le.LeDefinedUUIDs$Descriptor;"};
  static const J2ObjcClassInfo _LeDefinedUUIDs = { 2, "LeDefinedUUIDs", "houtbecke.rs.le", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_LeDefinedUUIDs;
}

@end

void LeDefinedUUIDs_init(LeDefinedUUIDs *self) {
  NSObject_init(self);
}

LeDefinedUUIDs *new_LeDefinedUUIDs_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs, init)
}

LeDefinedUUIDs *create_LeDefinedUUIDs_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Service)

JavaUtilUUID *LeDefinedUUIDs_Service_HEART_RATE;
JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_POWER;
JavaUtilUUID *LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE;
JavaUtilUUID *LeDefinedUUIDs_Service_BATTERY;
JavaUtilUUID *LeDefinedUUIDs_Service_DEVICE_INFORMATION;
JavaUtilUUID *LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE;

@implementation LeDefinedUUIDs_Service

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Service_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Service class]) {
    LeDefinedUUIDs_Service_HEART_RATE = JavaUtilUUID_fromStringWithNSString_(@"0000180d-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Service_CYCLING_POWER = JavaUtilUUID_fromStringWithNSString_(@"00001818-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE = JavaUtilUUID_fromStringWithNSString_(@"00001816-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Service_BATTERY = JavaUtilUUID_fromStringWithNSString_(@"0000180f-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Service_DEVICE_INFORMATION = JavaUtilUUID_fromStringWithNSString_(@"0000180a-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE = JavaUtilUUID_fromStringWithNSString_(@"00001801-0000-1000-8000-00805f9b34fb");
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Service)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Service", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEART_RATE", "HEART_RATE", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_HEART_RATE, NULL, .constantValue.asLong = 0 },
    { "CYCLING_POWER", "CYCLING_POWER", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_CYCLING_POWER, NULL, .constantValue.asLong = 0 },
    { "CYCLING_SPEED_AND_CADENCE", "CYCLING_SPEED_AND_CADENCE", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_CYCLING_SPEED_AND_CADENCE, NULL, .constantValue.asLong = 0 },
    { "BATTERY", "BATTERY", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_BATTERY, NULL, .constantValue.asLong = 0 },
    { "DEVICE_INFORMATION", "DEVICE_INFORMATION", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_DEVICE_INFORMATION, NULL, .constantValue.asLong = 0 },
    { "GENERIC_ATTRIBUTE", "GENERIC_ATTRIBUTE", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Service_GENERIC_ATTRIBUTE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Service = { 2, "Service", "houtbecke.rs.le", "LeDefinedUUIDs", 0x9, 1, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeDefinedUUIDs_Service;
}

@end

void LeDefinedUUIDs_Service_init(LeDefinedUUIDs_Service *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Service *new_LeDefinedUUIDs_Service_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Service, init)
}

LeDefinedUUIDs_Service *create_LeDefinedUUIDs_Service_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Service, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Service)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Characteristic)

JavaUtilUUID *LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_APPEARANCE;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_BATTERY_LEVEL;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT;
JavaUtilUUID *LeDefinedUUIDs_Characteristic_SERVICE_CHANGED;

@implementation LeDefinedUUIDs_Characteristic

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Characteristic_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Characteristic class]) {
    LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT = JavaUtilUUID_fromStringWithNSString_(@"00002a37-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING = JavaUtilUUID_fromStringWithNSString_(@"00002a29-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING = JavaUtilUUID_fromStringWithNSString_(@"00002a24-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING = JavaUtilUUID_fromStringWithNSString_(@"00002a25-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING = JavaUtilUUID_fromStringWithNSString_(@"00002a26-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING = JavaUtilUUID_fromStringWithNSString_(@"00002a27-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_APPEARANCE = JavaUtilUUID_fromStringWithNSString_(@"00002a01-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION = JavaUtilUUID_fromStringWithNSString_(@"00002a38-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_BATTERY_LEVEL = JavaUtilUUID_fromStringWithNSString_(@"00002a19-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT = JavaUtilUUID_fromStringWithNSString_(@"00002a63-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT = JavaUtilUUID_fromStringWithNSString_(@"00002a66-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT = JavaUtilUUID_fromStringWithNSString_(@"00002a5b-0000-1000-8000-00805f9b34fb");
    LeDefinedUUIDs_Characteristic_SERVICE_CHANGED = JavaUtilUUID_fromStringWithNSString_(@"00002a05-0000-1000-8000-00805f9b34fb");
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Characteristic)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Characteristic", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEART_RATE_MEASUREMENT", "HEART_RATE_MEASUREMENT", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_HEART_RATE_MEASUREMENT, NULL, .constantValue.asLong = 0 },
    { "MANUFACTURER_STRING", "MANUFACTURER_STRING", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_MANUFACTURER_STRING, NULL, .constantValue.asLong = 0 },
    { "MODEL_NUMBER_STRING", "MODEL_NUMBER_STRING", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_MODEL_NUMBER_STRING, NULL, .constantValue.asLong = 0 },
    { "SERIAL_NUMBER_STRING", "SERIAL_NUMBER_STRING", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_SERIAL_NUMBER_STRING, NULL, .constantValue.asLong = 0 },
    { "FIRMWARE_REVISION_STRING", "FIRMWARE_REVISION_STRING", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_FIRMWARE_REVISION_STRING, NULL, .constantValue.asLong = 0 },
    { "HARDWARE_REVISION_STRING", "HARDWARE_REVISION_STRING", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_HARDWARE_REVISION_STRING, NULL, .constantValue.asLong = 0 },
    { "APPEARANCE", "APPEARANCE", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_APPEARANCE, NULL, .constantValue.asLong = 0 },
    { "BODY_SENSOR_LOCATION", "BODY_SENSOR_LOCATION", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_BODY_SENSOR_LOCATION, NULL, .constantValue.asLong = 0 },
    { "BATTERY_LEVEL", "BATTERY_LEVEL", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_BATTERY_LEVEL, NULL, .constantValue.asLong = 0 },
    { "CYCLING_POWER_MEASUREMENT", "CYCLING_POWER_MEASUREMENT", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_CYCLING_POWER_MEASUREMENT, NULL, .constantValue.asLong = 0 },
    { "CYCLING_POWER_CONTROL_POINT", "CYCLING_POWER_CONTROL_POINT", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_CYCLING_POWER_CONTROL_POINT, NULL, .constantValue.asLong = 0 },
    { "CSC_MEASUREMENT", "CSC_MEASUREMENT", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_CSC_MEASUREMENT, NULL, .constantValue.asLong = 0 },
    { "SERVICE_CHANGED", "SERVICE_CHANGED", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Characteristic_SERVICE_CHANGED, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Characteristic = { 2, "Characteristic", "houtbecke.rs.le", "LeDefinedUUIDs", 0x9, 1, methods, 13, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeDefinedUUIDs_Characteristic;
}

@end

void LeDefinedUUIDs_Characteristic_init(LeDefinedUUIDs_Characteristic *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Characteristic *new_LeDefinedUUIDs_Characteristic_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Characteristic, init)
}

LeDefinedUUIDs_Characteristic *create_LeDefinedUUIDs_Characteristic_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Characteristic, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Characteristic)

J2OBJC_INITIALIZED_DEFN(LeDefinedUUIDs_Descriptor)

JavaUtilUUID *LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG;

@implementation LeDefinedUUIDs_Descriptor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeDefinedUUIDs_Descriptor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [LeDefinedUUIDs_Descriptor class]) {
    LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG = JavaUtilUUID_fromStringWithNSString_(@"00002902-0000-1000-8000-00805f9b34fb");
    J2OBJC_SET_INITIALIZED(LeDefinedUUIDs_Descriptor)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Descriptor", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CHAR_CLIENT_CONFIG", "CHAR_CLIENT_CONFIG", 0x19, "Ljava.util.UUID;", &LeDefinedUUIDs_Descriptor_CHAR_CLIENT_CONFIG, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeDefinedUUIDs_Descriptor = { 2, "Descriptor", "houtbecke.rs.le", "LeDefinedUUIDs", 0x9, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_LeDefinedUUIDs_Descriptor;
}

@end

void LeDefinedUUIDs_Descriptor_init(LeDefinedUUIDs_Descriptor *self) {
  NSObject_init(self);
}

LeDefinedUUIDs_Descriptor *new_LeDefinedUUIDs_Descriptor_init() {
  J2OBJC_NEW_IMPL(LeDefinedUUIDs_Descriptor, init)
}

LeDefinedUUIDs_Descriptor *create_LeDefinedUUIDs_Descriptor_init() {
  J2OBJC_CREATE_IMPL(LeDefinedUUIDs_Descriptor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeDefinedUUIDs_Descriptor)
