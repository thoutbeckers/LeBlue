
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "InterceptingLeCharacteristicListener.h"
#include "InterceptingLeCharacteristicWriteListener.h"
#include "InterceptingLeDevice.h"
#include "InterceptingLeDeviceListener.h"
#include "InterceptingLeGattCharacteristic.h"
#include "InterceptingLeGattService.h"
#include "InterceptingLeRemoteDevice.h"
#include "InterceptingLeRemoteDeviceListener.h"
#include "J2ObjC_source.h"
#include "LeCharacteristicListener.h"
#include "LeCharacteristicWriteListener.h"
#include "LeDevice.h"
#include "LeDeviceListener.h"
#include "LeDeviceState.h"
#include "LeFormat.h"
#include "LeGattCharacteristic.h"
#include "LeGattService.h"
#include "LeGattStatus.h"
#include "LeInterceptor.h"
#include "LeRemoteDevice.h"
#include "LeRemoteDeviceListener.h"
#include "LeScanRecord.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/System.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/UUID.h"

@implementation LeInterceptor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  LeInterceptor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (InterceptingLeRemoteDevice *)getInterceptingLeRemoteDeviceWithLeRemoteDevice:(id<LeRemoteDevice>)leRemoteDevice {
  InterceptingLeRemoteDevice *iRemoteDevice = [((id<JavaUtilMap>) nil_chk(iRemoteDevices_)) getWithId:leRemoteDevice];
  if (iRemoteDevice == nil) {
    iRemoteDevice = create_InterceptingLeRemoteDevice_initWithLeRemoteDevice_withLeInterceptor_(leRemoteDevice, self);
    [((id<JavaUtilMap>) nil_chk(iRemoteDevices_)) putWithId:leRemoteDevice withId:iRemoteDevice];
  }
  return iRemoteDevice;
}

- (InterceptingLeDevice *)getInterceptingLeDeviceWithLeDevice:(id<LeDevice>)leDevice {
  InterceptingLeDevice *device = [((id<JavaUtilMap>) nil_chk(iDevices_)) getWithId:leDevice];
  if (device == nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Warning: unknown LeDevice"];
  }
  return device;
}

- (InterceptingLeDeviceListener *)getInterceptingLeDeviceListenerWithLeDeviceListener:(id<LeDeviceListener>)listener {
  InterceptingLeDeviceListener *iDeviceListener = [((id<JavaUtilMap>) nil_chk(iDeviceListeners_)) getWithId:listener];
  if (iDeviceListener == nil) {
    iDeviceListener = create_InterceptingLeDeviceListener_initWithLeDeviceListener_withLeInterceptor_(listener, self);
    [((id<JavaUtilMap>) nil_chk(iDeviceListeners_)) putWithId:listener withId:iDeviceListener];
  }
  return iDeviceListener;
}

- (InterceptingLeRemoteDeviceListener *)getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener {
  InterceptingLeRemoteDeviceListener *iRemoteDeviceListener = [((id<JavaUtilMap>) nil_chk(iRemoteDeviceListeners_)) getWithId:listener];
  if (iRemoteDeviceListener == nil) {
    iRemoteDeviceListener = create_InterceptingLeRemoteDeviceListener_initWithLeRemoteDeviceListener_withLeInterceptor_(listener, self);
    [((id<JavaUtilMap>) nil_chk(iRemoteDeviceListeners_)) putWithId:listener withId:iRemoteDeviceListener];
  }
  return iRemoteDeviceListener;
}

- (InterceptingLeGattService *)getInterceptingLeGattServiceWithLeGattService:(id<LeGattService>)leGattService {
  InterceptingLeGattService *iLeGattService = [((id<JavaUtilMap>) nil_chk(iGattServices_)) getWithId:leGattService];
  if (iLeGattService == nil) {
    iLeGattService = create_InterceptingLeGattService_initWithLeGattService_withLeInterceptor_(leGattService, self);
    [((id<JavaUtilMap>) nil_chk(iGattServices_)) putWithId:leGattService withId:iLeGattService];
  }
  return iLeGattService;
}

- (InterceptingLeGattCharacteristic *)serviceGotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                                   withLeGattCharacteristic:(id<LeGattCharacteristic>)leGattCharacteristic {
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) getWithId:leGattCharacteristic];
  if (iLeGattCharacteristic == nil) {
    iLeGattCharacteristic = create_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(leGattCharacteristic, self);
    [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) putWithId:leGattCharacteristic withId:iLeGattCharacteristic];
  }
  return iLeGattCharacteristic;
}

- (InterceptingLeCharacteristicListener *)getInterceptingCharacteristicsListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener {
  InterceptingLeCharacteristicListener *iLeCharacteristicListener = [((id<JavaUtilMap>) nil_chk(iCharacteristicListeners_)) getWithId:listener];
  if (iLeCharacteristicListener == nil) {
    iLeCharacteristicListener = create_InterceptingLeCharacteristicListener_initWithLeCharacteristicListener_withLeInterceptor_(listener, self);
    [((id<JavaUtilMap>) nil_chk(iCharacteristicListeners_)) putWithId:listener withId:iLeCharacteristicListener];
  }
  return iLeCharacteristicListener;
}

- (InterceptingLeCharacteristicWriteListener *)getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener {
  InterceptingLeCharacteristicWriteListener *iLeCharacteristicWriteListener = [((id<JavaUtilMap>) nil_chk(iCharacteristicWriteListeners_)) getWithId:listener];
  if (iLeCharacteristicWriteListener == nil) {
    iLeCharacteristicWriteListener = create_InterceptingLeCharacteristicWriteListener_initWithLeCharacteristicWriteListener_withLeInterceptor_(listener, self);
    [((id<JavaUtilMap>) nil_chk(iCharacteristicWriteListeners_)) putWithId:listener withId:iLeCharacteristicWriteListener];
  }
  return iLeCharacteristicWriteListener;
}

- (InterceptingLeGattCharacteristic *)getInterceptingLeGattCharacteristicWithLeGattCharacteristic:(id<LeGattCharacteristic>)characteristic {
  InterceptingLeGattCharacteristic *iLeGattCharacteristic = [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) getWithId:characteristic];
  if (iLeGattCharacteristic == nil) {
    iLeGattCharacteristic = create_InterceptingLeGattCharacteristic_initWithLeGattCharacteristic_withLeInterceptor_(characteristic, self);
    [((id<JavaUtilMap>) nil_chk(iGattCharacteristics_)) putWithId:characteristic withId:iLeGattCharacteristic];
  }
  return iLeGattCharacteristic;
}

- (void)listenerAddedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
             withInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)deviceFoundWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                     withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)ileRemoteDevice
                                            withInt:(jint)rssi
                                   withLeScanRecord:(id<LeScanRecord>)scanrecord {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)deviceStateWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withLeDeviceState:(LeDeviceState *)deviceState {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)connectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                               withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                         withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)disconnectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                  withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)closedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                            withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                      withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotUUIDWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                            withJavaUtilUUID:(JavaUtilUUID *)uuid {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)enabledCharacteristicNotificationWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                      withJavaUtilUUID:(JavaUtilUUID *)characteristic
                                                           withBoolean:(jboolean)enabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)servicesDiscoveredWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                        withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                                withLeGattStatus:(LeGattStatus *)status
                              withInterceptingLeGattServiceArray:(IOSObjectArray *)iLeGattServices {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)listenerRemovedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)checkedBleHardwareAvailableWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                                withBoolean:(jboolean)bleHardwareEnabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)wasBtEnabledWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                 withBoolean:(jboolean)btEnabled {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                               withJavaUtilList:(id<JavaUtilList>)filters {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)stoppedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotIntValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                           withLeFormat:(LeFormat *)format
                                                withInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)remoteListenerAddedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                   withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)remoteListenerRemovedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                     withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotAddressWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                    withNSString:(NSString *)address {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)connectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)disconnectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)closingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotRemoteDeviceNameWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                     withJavaUtilUUID:(JavaUtilUUID *)uuid
                                       withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                 withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicNotificationChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                                 withJavaUtilUUID:(JavaUtilUUID *)uuid
                                                   withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                              withJavaLangBoolean:(JavaLangBoolean *)success {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicWrittenWithInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iLeCharacteristicWriteListener
                                                          withJavaUtilUUID:(JavaUtilUUID *)uuid
                                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                      withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                       withJavaLangBoolean:(JavaLangBoolean *)success {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iCharacteristicsListener
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)characteristicWriteListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iCharacteristicsWriteListener
                                               withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value
                                 withJavaLangBoolean:(JavaLangBoolean *)withResponse {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)gotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                  withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)rssiReadWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                              withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                        withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                               withInt:(jint)rssi {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readRssiWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  RELEASE_(iDevices_);
  RELEASE_(iDeviceListeners_);
  RELEASE_(iRemoteDevices_);
  RELEASE_(iRemoteDeviceListeners_);
  RELEASE_(iGattServices_);
  RELEASE_(iGattCharacteristics_);
  RELEASE_(iCharacteristicListeners_);
  RELEASE_(iCharacteristicWriteListeners_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeRemoteDevice;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeDevice;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeDeviceListener;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeRemoteDeviceListener;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeGattService;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeGattCharacteristic;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeCharacteristicListener;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeCharacteristicWriteListener;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LInterceptingLeGattCharacteristic;", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 20, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 22, 23, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 24, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 26, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 27, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 28, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 30, 31, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 32, 33, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 36, 37, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 38, 37, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 39, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 39, 40, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 39, 41, -1, 42, -1, -1 },
    { NULL, "V", 0x401, 43, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 44, 45, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 46, 47, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 48, 49, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 50, 49, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 51, 52, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 53, 54, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 55, 54, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 56, 54, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 57, 54, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 57, 58, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 59, 52, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 60, 61, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 62, 63, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 64, 65, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 66, 67, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 68, 69, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 70, 45, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 70, 71, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 72, 73, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 74, 75, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 76, 54, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 77, 78, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInterceptingLeRemoteDeviceWithLeRemoteDevice:);
  methods[2].selector = @selector(getInterceptingLeDeviceWithLeDevice:);
  methods[3].selector = @selector(getInterceptingLeDeviceListenerWithLeDeviceListener:);
  methods[4].selector = @selector(getInterceptingLeRemoteDeviceListenerWithLeRemoteDeviceListener:);
  methods[5].selector = @selector(getInterceptingLeGattServiceWithLeGattService:);
  methods[6].selector = @selector(serviceGotCharacteristicWithInterceptingLeGattService:withLeGattCharacteristic:);
  methods[7].selector = @selector(getInterceptingCharacteristicsListenerWithLeCharacteristicListener:);
  methods[8].selector = @selector(getInterceptingCharacteristicsWriteListenerWithLeCharacteristicWriteListener:);
  methods[9].selector = @selector(getInterceptingLeGattCharacteristicWithLeGattCharacteristic:);
  methods[10].selector = @selector(listenerAddedWithInterceptingLeDevice:withInterceptingLeDeviceListener:);
  methods[11].selector = @selector(deviceFoundWithInterceptingLeDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:withLeScanRecord:);
  methods[12].selector = @selector(deviceStateWithInterceptingLeDeviceListener:withInterceptingLeDevice:withLeDeviceState:);
  methods[13].selector = @selector(connectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[14].selector = @selector(disconnectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[15].selector = @selector(closedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[16].selector = @selector(gotUUIDWithInterceptingLeGattService:withJavaUtilUUID:);
  methods[17].selector = @selector(enabledCharacteristicNotificationWithInterceptingLeGattService:withJavaUtilUUID:withBoolean:);
  methods[18].selector = @selector(servicesDiscoveredWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withLeGattStatus:withInterceptingLeGattServiceArray:);
  methods[19].selector = @selector(listenerRemovedWithInterceptingLeDevice:);
  methods[20].selector = @selector(checkedBleHardwareAvailableWithInterceptingLeDevice:withBoolean:);
  methods[21].selector = @selector(wasBtEnabledWithInterceptingLeDevice:withBoolean:);
  methods[22].selector = @selector(startedScanningWithInterceptingLeDevice:);
  methods[23].selector = @selector(startedScanningWithInterceptingLeDevice:withJavaUtilUUIDArray:);
  methods[24].selector = @selector(startedScanningWithInterceptingLeDevice:withJavaUtilList:);
  methods[25].selector = @selector(stoppedScanningWithInterceptingLeDevice:);
  methods[26].selector = @selector(gotValueWithInterceptingLeGattCharacteristic:withByteArray:);
  methods[27].selector = @selector(gotIntValueWithInterceptingLeGattCharacteristic:withLeFormat:withInt:);
  methods[28].selector = @selector(remoteListenerAddedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:);
  methods[29].selector = @selector(remoteListenerRemovedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:);
  methods[30].selector = @selector(gotAddressWithInterceptingLeRemoteDevice:withNSString:);
  methods[31].selector = @selector(connectingWithInterceptingLeRemoteDevice:);
  methods[32].selector = @selector(disconnectingWithInterceptingLeRemoteDevice:);
  methods[33].selector = @selector(closingWithInterceptingLeRemoteDevice:);
  methods[34].selector = @selector(serviceDiscoveryStartedWithInterceptingLeRemoteDevice:);
  methods[35].selector = @selector(serviceDiscoveryStartedWithInterceptingLeRemoteDevice:withJavaUtilUUIDArray:);
  methods[36].selector = @selector(gotRemoteDeviceNameWithInterceptingLeRemoteDevice:withNSString:);
  methods[37].selector = @selector(characteristicChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:);
  methods[38].selector = @selector(characteristicNotificationChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:);
  methods[39].selector = @selector(characteristicWrittenWithInterceptingLeCharacteristicWriteListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:);
  methods[40].selector = @selector(characteristicListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[41].selector = @selector(characteristicWriteListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[42].selector = @selector(setValueWithInterceptingLeGattCharacteristic:withByteArray:);
  methods[43].selector = @selector(setValueWithInterceptingLeGattCharacteristic:withByteArray:withJavaLangBoolean:);
  methods[44].selector = @selector(gotCharacteristicWithInterceptingLeGattService:withInterceptingLeGattCharacteristic:);
  methods[45].selector = @selector(rssiReadWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:);
  methods[46].selector = @selector(readRssiWithInterceptingLeRemoteDevice:);
  methods[47].selector = @selector(readWithInterceptingLeGattCharacteristic:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iDevices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 79, -1 },
    { "iDeviceListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 80, -1 },
    { "iRemoteDevices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 81, -1 },
    { "iRemoteDeviceListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 82, -1 },
    { "iGattServices_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 83, -1 },
    { "iGattCharacteristics_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 84, -1 },
    { "iCharacteristicListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 85, -1 },
    { "iCharacteristicWriteListeners_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1, -1, -1, 86, -1 },
    { "counter_", "I", .constantValue.asLong = 0, 0x41, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInterceptingLeRemoteDevice", "LLeRemoteDevice;", "getInterceptingLeDevice", "LLeDevice;", "getInterceptingLeDeviceListener", "LLeDeviceListener;", "getInterceptingLeRemoteDeviceListener", "LLeRemoteDeviceListener;", "getInterceptingLeGattService", "LLeGattService;", "serviceGotCharacteristic", "LInterceptingLeGattService;LLeGattCharacteristic;", "getInterceptingCharacteristicsListener", "LLeCharacteristicListener;", "getInterceptingCharacteristicsWriteListener", "LLeCharacteristicWriteListener;", "getInterceptingLeGattCharacteristic", "LLeGattCharacteristic;", "listenerAdded", "LInterceptingLeDevice;LInterceptingLeDeviceListener;", "deviceFound", "LInterceptingLeDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;ILLeScanRecord;", "deviceState", "LInterceptingLeDeviceListener;LInterceptingLeDevice;LLeDeviceState;", "connected", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;", "disconnected", "closed", "gotUUID", "LInterceptingLeGattService;LJavaUtilUUID;", "enabledCharacteristicNotification", "LInterceptingLeGattService;LJavaUtilUUID;Z", "servicesDiscovered", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;LLeGattStatus;[LInterceptingLeGattService;", "listenerRemoved", "LInterceptingLeDevice;", "checkedBleHardwareAvailable", "LInterceptingLeDevice;Z", "wasBtEnabled", "startedScanning", "LInterceptingLeDevice;[LJavaUtilUUID;", "LInterceptingLeDevice;LJavaUtilList;", "(Lhoutbecke/rs/le/interceptor/InterceptingLeDevice;Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", "stoppedScanning", "gotValue", "LInterceptingLeGattCharacteristic;[B", "gotIntValue", "LInterceptingLeGattCharacteristic;LLeFormat;I", "remoteListenerAdded", "LInterceptingLeRemoteDevice;LInterceptingLeRemoteDeviceListener;", "remoteListenerRemoved", "gotAddress", "LInterceptingLeRemoteDevice;LNSString;", "connecting", "LInterceptingLeRemoteDevice;", "disconnecting", "closing", "serviceDiscoveryStarted", "LInterceptingLeRemoteDevice;[LJavaUtilUUID;", "gotRemoteDeviceName", "characteristicChanged", "LInterceptingLeCharacteristicListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;", "characteristicNotificationChanged", "LInterceptingLeCharacteristicListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;LJavaLangBoolean;", "characteristicWritten", "LInterceptingLeCharacteristicWriteListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;LJavaLangBoolean;", "characteristicListenerSet", "LInterceptingLeRemoteDevice;LInterceptingLeCharacteristicListener;[LJavaUtilUUID;", "characteristicWriteListenerSet", "LInterceptingLeRemoteDevice;LInterceptingLeCharacteristicWriteListener;[LJavaUtilUUID;", "setValue", "LInterceptingLeGattCharacteristic;[BLJavaLangBoolean;", "gotCharacteristic", "LInterceptingLeGattService;LInterceptingLeGattCharacteristic;", "rssiRead", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;I", "readRssi", "read", "LInterceptingLeGattCharacteristic;", "Ljava/util/Map<Lhoutbecke/rs/le/LeDevice;Lhoutbecke/rs/le/interceptor/InterceptingLeDevice;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeDeviceListener;Lhoutbecke/rs/le/interceptor/InterceptingLeDeviceListener;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeRemoteDevice;Lhoutbecke/rs/le/interceptor/InterceptingLeRemoteDevice;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeRemoteDeviceListener;Lhoutbecke/rs/le/interceptor/InterceptingLeRemoteDeviceListener;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeGattService;Lhoutbecke/rs/le/interceptor/InterceptingLeGattService;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeGattCharacteristic;Lhoutbecke/rs/le/interceptor/InterceptingLeGattCharacteristic;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeCharacteristicListener;Lhoutbecke/rs/le/interceptor/InterceptingLeCharacteristicListener;>;", "Ljava/util/Map<Lhoutbecke/rs/le/LeCharacteristicWriteListener;Lhoutbecke/rs/le/interceptor/InterceptingLeCharacteristicWriteListener;>;" };
  static const J2ObjcClassInfo _LeInterceptor = { "LeInterceptor", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x401, 48, 9, -1, -1, -1, -1, -1 };
  return &_LeInterceptor;
}

@end

void LeInterceptor_init(LeInterceptor *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->iDevices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iDeviceListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iRemoteDevices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iRemoteDeviceListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iGattServices_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iGattCharacteristics_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iCharacteristicListeners_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->iCharacteristicWriteListeners_, new_JavaUtilHashMap_init());
  JreAssignVolatileInt(&self->counter_, 0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeInterceptor)

J2OBJC_NAME_MAPPING(LeInterceptor, "houtbecke.rs.le.interceptor", "")
