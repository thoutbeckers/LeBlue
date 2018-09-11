
#include "BaseIntercepting.h"
#include "Event.h"
#include "EventSink.h"
#include "IOSClass.h"
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
#include "LeDeviceState.h"
#include "LeEventType.h"
#include "LeFormat.h"
#include "LeGattStatus.h"
#include "LeInterceptor.h"
#include "LeScanRecord.h"
#include "LeSessionInterceptor.h"
#include "LeUtil.h"
#include "java/lang/Boolean.h"
#include "java/util/List.h"
#include "java/util/UUID.h"

@implementation LeSessionInterceptor

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
             withBaseIntercepting:(BaseIntercepting *)secondSource
             withBaseIntercepting:(BaseIntercepting *)thirdSource
                withNSStringArray:(IOSObjectArray *)values {
  values = LeUtil_extendWithNSStringArray_withIntArray_(values, [IOSIntArray arrayWithInts:(jint[]){ ((BaseIntercepting *) nil_chk(secondSource))->id__, ((BaseIntercepting *) nil_chk(thirdSource))->id__ } count:2]);
  [self drainEventWithLeEventType:type withBaseIntercepting:interceptor withNSStringArray:values];
}

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
             withBaseIntercepting:(BaseIntercepting *)secondSource
                withNSStringArray:(IOSObjectArray *)values {
  values = LeUtil_extendWithNSStringArray_withIntArray_(values, [IOSIntArray arrayWithInts:(jint[]){ ((BaseIntercepting *) nil_chk(secondSource))->id__ } count:1]);
  [self drainEventWithLeEventType:type withBaseIntercepting:interceptor withNSStringArray:values];
}

- (void)drainEventWithLeEventType:(LeEventType *)type
             withBaseIntercepting:(BaseIntercepting *)interceptor
                withNSStringArray:(IOSObjectArray *)values {
  [((id<EventSink>) nil_chk(sink_)) addEventWithEvent:create_Event_initWithEventType_withBaseIntercepting_withNSStringArray_(type, interceptor, values)];
}

- (instancetype)initWithEventSink:(id<EventSink>)sink {
  LeSessionInterceptor_initWithEventSink_(self, sink);
  return self;
}

- (void)listenerAddedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
             withInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iListener {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceAddListener) withBaseIntercepting:iLeDevice withBaseIntercepting:iListener withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)deviceFoundWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                     withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                            withInt:(jint)rssi
                                   withLeScanRecord:(id<LeScanRecord>)leScanRecord {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceFound) withBaseIntercepting:iLeDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", rssi), LeUtil_bytesToStringWithByteArray_([((id<LeScanRecord>) nil_chk(leScanRecord)) getRawData]) } count:2 type:NSString_class_()]];
}

- (void)deviceStateWithInterceptingLeDeviceListener:(InterceptingLeDeviceListener *)iLeDeviceListener
                           withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withLeDeviceState:(LeDeviceState *)leDeviceState {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceState) withBaseIntercepting:iLeDeviceListener withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((LeDeviceState *) nil_chk(leDeviceState)) description] } count:1 type:NSString_class_()]];
}

- (void)connectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                               withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                         withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnected) withBaseIntercepting:iLeRemoteDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)disconnectedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                  withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnected) withBaseIntercepting:iLeRemoteDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)closedWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                            withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                      withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClosed) withBaseIntercepting:iLeRemoteDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)gotUUIDWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                            withJavaUtilUUID:(JavaUtilUUID *)uuid {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetUUID) withBaseIntercepting:iLeGattService withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description] } count:1 type:NSString_class_()]];
}

- (void)gotCharacteristicWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                  withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, serviceGetCharacteristic) withBaseIntercepting:iLeGattService withBaseIntercepting:iLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)rssiReadWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                              withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                        withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                               withInt:(jint)rssi {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRssiRead) withBaseIntercepting:iLeRemoteDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", rssi) } count:1 type:NSString_class_()]];
}

- (void)readRssiWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceReadRssi) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)readWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicRead) withBaseIntercepting:interceptingLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)enabledCharacteristicNotificationWithInterceptingLeGattService:(InterceptingLeGattService *)iLeGattService
                                                      withJavaUtilUUID:(JavaUtilUUID *)characteristic
                                                           withBoolean:(jboolean)enabled {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, serviceEnableCharacteristicNotification) withBaseIntercepting:iLeGattService withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(characteristic)) description], JavaLangBoolean_toStringWithBoolean_(enabled) } count:2 type:NSString_class_()]];
}

- (void)servicesDiscoveredWithInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iLeRemoteDeviceListener
                                        withInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                  withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                                withLeGattStatus:(LeGattStatus *)status
                              withInterceptingLeGattServiceArray:(IOSObjectArray *)iLeGattServices {
  IOSObjectArray *params = [IOSObjectArray arrayWithLength:1 + ((IOSObjectArray *) nil_chk(iLeGattServices))->size_ type:NSString_class_()];
  IOSObjectArray_Set(params, 0, [((LeGattStatus *) nil_chk(status)) description]);
  for (jint k = 0; k < iLeGattServices->size_; k++) IOSObjectArray_Set(params, 1 + k, JreStrcat("I", ((InterceptingLeGattService *) nil_chk(IOSObjectArray_Get(iLeGattServices, k)))->id__));
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceServicesDiscovered) withBaseIntercepting:iLeRemoteDeviceListener withBaseIntercepting:iLeDevice withBaseIntercepting:iLeRemoteDevice withNSStringArray:params];
}

- (void)listenerRemovedWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceRemoveListener) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)checkedBleHardwareAvailableWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                                withBoolean:(jboolean)bleHardwareEnabled {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceCheckBleHardwareAvailable) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_toStringWithBoolean_(bleHardwareEnabled) } count:1 type:NSString_class_()]];
}

- (void)wasBtEnabledWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                                 withBoolean:(jboolean)btEnabled {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceIsBtEnabled) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_toStringWithBoolean_(btEnabled) } count:1 type:NSString_class_()]];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  IOSObjectArray *params = LeUtil_getStringsFromUUIDsWithJavaUtilUUIDArray_(uuids);
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withBaseIntercepting:iLeDevice withNSStringArray:params];
}

- (void)startedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice
                               withJavaUtilList:(id<JavaUtilList>)filters {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceStartScanning) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)stoppedScanningWithInterceptingLeDevice:(InterceptingLeDevice *)iLeDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, deviceStopScanning) withBaseIntercepting:iLeDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)gotValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetValue) withBaseIntercepting:iLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
}

- (void)gotIntValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                           withLeFormat:(LeFormat *)format
                                                withInt:(jint)value {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicGetIntValue) withBaseIntercepting:iLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((LeFormat *) nil_chk(format)) description], JreStrcat("I", value) } count:2 type:NSString_class_()]];
}

- (void)remoteListenerAddedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                   withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceAddListener) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", ((InterceptingLeRemoteDeviceListener *) nil_chk(iListener))->id__) } count:1 type:NSString_class_()]];
}

- (void)remoteListenerRemovedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                     withInterceptingLeRemoteDeviceListener:(InterceptingLeRemoteDeviceListener *)iListener {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceRemoveListener) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ JreStrcat("I", ((InterceptingLeRemoteDeviceListener *) nil_chk(iListener))->id__) } count:1 type:NSString_class_()]];
}

- (void)gotAddressWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                    withNSString:(NSString *)address {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetAddress) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ address } count:1 type:NSString_class_()]];
}

- (void)connectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceConnect) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)disconnectingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceDisconnect) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)closingWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceClose) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (void)serviceDiscoveryStartedWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  if (uuids != nil) {
    IOSObjectArray *args = [IOSObjectArray arrayWithLength:uuids->size_ type:NSString_class_()];
    LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(uuids, args, 0);
    [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withBaseIntercepting:iLeRemoteDevice withNSStringArray:args];
  }
  else {
    [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceStartServiceDiscovery) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
  }
}

- (void)gotRemoteDeviceNameWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withNSString:(NSString *)name {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceGetName) withBaseIntercepting:iLeRemoteDevice withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ name } count:1 type:NSString_class_()]];
}

- (void)characteristicChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                     withJavaUtilUUID:(JavaUtilUUID *)uuid
                                       withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                 withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicChanged) withBaseIntercepting:iLeCharacteristicListener withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description], JreStrcat("I", ((InterceptingLeRemoteDevice *) nil_chk(iLeRemoteDevice))->id__), JreStrcat("I", ((InterceptingLeGattCharacteristic *) nil_chk(iLeGattCharacteristic))->id__) } count:3 type:NSString_class_()]];
}

- (void)characteristicNotificationChangedWithInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iLeCharacteristicListener
                                                                 withJavaUtilUUID:(JavaUtilUUID *)uuid
                                                   withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                             withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                              withJavaLangBoolean:(JavaLangBoolean *)success {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicNotificationChanged) withBaseIntercepting:iLeCharacteristicListener withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description], JreStrcat("I", ((InterceptingLeRemoteDevice *) nil_chk(iLeRemoteDevice))->id__), JreStrcat("I", ((InterceptingLeGattCharacteristic *) nil_chk(iLeGattCharacteristic))->id__), [((JavaLangBoolean *) nil_chk(success)) description] } count:4 type:NSString_class_()]];
}

- (void)characteristicWrittenWithInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iLeCharacteristicWriteListener
                                                          withJavaUtilUUID:(JavaUtilUUID *)uuid
                                            withInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                                      withInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                                       withJavaLangBoolean:(JavaLangBoolean *)success {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicWritten) withBaseIntercepting:iLeCharacteristicWriteListener withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilUUID *) nil_chk(uuid)) description], JreStrcat("I", ((InterceptingLeRemoteDevice *) nil_chk(iLeRemoteDevice))->id__), JreStrcat("I", ((InterceptingLeGattCharacteristic *) nil_chk(iLeGattCharacteristic))->id__), [((JavaLangBoolean *) nil_chk(success)) description] } count:4 type:NSString_class_()]];
}

- (void)characteristicListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicListener:(InterceptingLeCharacteristicListener *)iCharacteristicsListener
                                          withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  IOSObjectArray *args = nil;
  NSString *characteristicsListenerId = @"";
  if (iCharacteristicsListener != nil) characteristicsListenerId = JreStrcat("I", iCharacteristicsListener->id__);
  if (uuids != nil) {
    args = [IOSObjectArray arrayWithLength:1 + uuids->size_ type:NSString_class_()];
    IOSObjectArray_Set(args, 0, characteristicsListenerId);
    LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(uuids, args, 1);
  }
  else {
    args = [IOSObjectArray arrayWithLength:1 type:NSString_class_()];
    IOSObjectArray_Set(args, 0, characteristicsListenerId);
  }
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicListener) withBaseIntercepting:iLeRemoteDevice withNSStringArray:args];
}

- (void)characteristicWriteListenerSetWithInterceptingLeRemoteDevice:(InterceptingLeRemoteDevice *)iLeRemoteDevice
                       withInterceptingLeCharacteristicWriteListener:(InterceptingLeCharacteristicWriteListener *)iCharacteristicsWriteListener
                                               withJavaUtilUUIDArray:(IOSObjectArray *)uuids {
  IOSObjectArray *args = nil;
  NSString *characteristicsWriteListener = @"";
  if (iCharacteristicsWriteListener != nil) characteristicsWriteListener = JreStrcat("I", iCharacteristicsWriteListener->id__);
  if (uuids != nil) {
    args = [IOSObjectArray arrayWithLength:1 + uuids->size_ type:NSString_class_()];
    IOSObjectArray_Set(args, 0, characteristicsWriteListener);
    LeUtil_putUUIDsInStringArrayWithJavaUtilUUIDArray_withNSStringArray_withInt_(uuids, args, 1);
  }
  else {
    args = [IOSObjectArray arrayWithLength:1 type:NSString_class_()];
    IOSObjectArray_Set(args, 0, characteristicsWriteListener);
  }
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, remoteDeviceSetCharacteristicWriteListener) withBaseIntercepting:iLeRemoteDevice withNSStringArray:args];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)iLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withBaseIntercepting:iLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value) } count:1 type:NSString_class_()]];
}

- (void)setValueWithInterceptingLeGattCharacteristic:(InterceptingLeGattCharacteristic *)interceptingLeGattCharacteristic
                                       withByteArray:(IOSByteArray *)value
                                 withJavaLangBoolean:(JavaLangBoolean *)withResponse {
  [self drainEventWithLeEventType:JreLoadEnum(LeEventType, characteristicSetValue) withBaseIntercepting:interceptingLeGattCharacteristic withNSStringArray:[IOSObjectArray arrayWithObjects:(id[]){ LeUtil_bytesToStringWithByteArray_(value), [((JavaLangBoolean *) nil_chk(withResponse)) description] } count:2 type:NSString_class_()]];
}

- (void)dealloc {
  RELEASE_(sink_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x84, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x84, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x84, 0, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 25, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 27, 28, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 29, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 32, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 33, 32, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 36, -1, 37, -1, -1 },
    { NULL, "V", 0x1, 38, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 39, 40, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 41, 42, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 44, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 45, 44, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 46, 47, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 48, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 49, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 50, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 51, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 51, 52, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 53, 47, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 54, 55, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 56, 57, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 58, 59, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 60, 61, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 62, 63, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 64, 40, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 64, 65, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(drainEventWithLeEventType:withBaseIntercepting:withBaseIntercepting:withBaseIntercepting:withNSStringArray:);
  methods[1].selector = @selector(drainEventWithLeEventType:withBaseIntercepting:withBaseIntercepting:withNSStringArray:);
  methods[2].selector = @selector(drainEventWithLeEventType:withBaseIntercepting:withNSStringArray:);
  methods[3].selector = @selector(initWithEventSink:);
  methods[4].selector = @selector(listenerAddedWithInterceptingLeDevice:withInterceptingLeDeviceListener:);
  methods[5].selector = @selector(deviceFoundWithInterceptingLeDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:withLeScanRecord:);
  methods[6].selector = @selector(deviceStateWithInterceptingLeDeviceListener:withInterceptingLeDevice:withLeDeviceState:);
  methods[7].selector = @selector(connectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[8].selector = @selector(disconnectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[9].selector = @selector(closedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:);
  methods[10].selector = @selector(gotUUIDWithInterceptingLeGattService:withJavaUtilUUID:);
  methods[11].selector = @selector(gotCharacteristicWithInterceptingLeGattService:withInterceptingLeGattCharacteristic:);
  methods[12].selector = @selector(rssiReadWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:);
  methods[13].selector = @selector(readRssiWithInterceptingLeRemoteDevice:);
  methods[14].selector = @selector(readWithInterceptingLeGattCharacteristic:);
  methods[15].selector = @selector(enabledCharacteristicNotificationWithInterceptingLeGattService:withJavaUtilUUID:withBoolean:);
  methods[16].selector = @selector(servicesDiscoveredWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withLeGattStatus:withInterceptingLeGattServiceArray:);
  methods[17].selector = @selector(listenerRemovedWithInterceptingLeDevice:);
  methods[18].selector = @selector(checkedBleHardwareAvailableWithInterceptingLeDevice:withBoolean:);
  methods[19].selector = @selector(wasBtEnabledWithInterceptingLeDevice:withBoolean:);
  methods[20].selector = @selector(startedScanningWithInterceptingLeDevice:);
  methods[21].selector = @selector(startedScanningWithInterceptingLeDevice:withJavaUtilUUIDArray:);
  methods[22].selector = @selector(startedScanningWithInterceptingLeDevice:withJavaUtilList:);
  methods[23].selector = @selector(stoppedScanningWithInterceptingLeDevice:);
  methods[24].selector = @selector(gotValueWithInterceptingLeGattCharacteristic:withByteArray:);
  methods[25].selector = @selector(gotIntValueWithInterceptingLeGattCharacteristic:withLeFormat:withInt:);
  methods[26].selector = @selector(remoteListenerAddedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:);
  methods[27].selector = @selector(remoteListenerRemovedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:);
  methods[28].selector = @selector(gotAddressWithInterceptingLeRemoteDevice:withNSString:);
  methods[29].selector = @selector(connectingWithInterceptingLeRemoteDevice:);
  methods[30].selector = @selector(disconnectingWithInterceptingLeRemoteDevice:);
  methods[31].selector = @selector(closingWithInterceptingLeRemoteDevice:);
  methods[32].selector = @selector(serviceDiscoveryStartedWithInterceptingLeRemoteDevice:);
  methods[33].selector = @selector(serviceDiscoveryStartedWithInterceptingLeRemoteDevice:withJavaUtilUUIDArray:);
  methods[34].selector = @selector(gotRemoteDeviceNameWithInterceptingLeRemoteDevice:withNSString:);
  methods[35].selector = @selector(characteristicChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:);
  methods[36].selector = @selector(characteristicNotificationChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:);
  methods[37].selector = @selector(characteristicWrittenWithInterceptingLeCharacteristicWriteListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:);
  methods[38].selector = @selector(characteristicListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicListener:withJavaUtilUUIDArray:);
  methods[39].selector = @selector(characteristicWriteListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicWriteListener:withJavaUtilUUIDArray:);
  methods[40].selector = @selector(setValueWithInterceptingLeGattCharacteristic:withByteArray:);
  methods[41].selector = @selector(setValueWithInterceptingLeGattCharacteristic:withByteArray:withJavaLangBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sink_", "LEventSink;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "drainEvent", "LLeEventType;LBaseIntercepting;LBaseIntercepting;LBaseIntercepting;[LNSString;", "LLeEventType;LBaseIntercepting;LBaseIntercepting;[LNSString;", "LLeEventType;LBaseIntercepting;[LNSString;", "LEventSink;", "listenerAdded", "LInterceptingLeDevice;LInterceptingLeDeviceListener;", "deviceFound", "LInterceptingLeDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;ILLeScanRecord;", "deviceState", "LInterceptingLeDeviceListener;LInterceptingLeDevice;LLeDeviceState;", "connected", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;", "disconnected", "closed", "gotUUID", "LInterceptingLeGattService;LJavaUtilUUID;", "gotCharacteristic", "LInterceptingLeGattService;LInterceptingLeGattCharacteristic;", "rssiRead", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;I", "readRssi", "LInterceptingLeRemoteDevice;", "read", "LInterceptingLeGattCharacteristic;", "enabledCharacteristicNotification", "LInterceptingLeGattService;LJavaUtilUUID;Z", "servicesDiscovered", "LInterceptingLeRemoteDeviceListener;LInterceptingLeDevice;LInterceptingLeRemoteDevice;LLeGattStatus;[LInterceptingLeGattService;", "listenerRemoved", "LInterceptingLeDevice;", "checkedBleHardwareAvailable", "LInterceptingLeDevice;Z", "wasBtEnabled", "startedScanning", "LInterceptingLeDevice;[LJavaUtilUUID;", "LInterceptingLeDevice;LJavaUtilList;", "(Lhoutbecke/rs/le/interceptor/InterceptingLeDevice;Ljava/util/List<Ljava/util/List<Ljava/util/UUID;>;>;)V", "stoppedScanning", "gotValue", "LInterceptingLeGattCharacteristic;[B", "gotIntValue", "LInterceptingLeGattCharacteristic;LLeFormat;I", "remoteListenerAdded", "LInterceptingLeRemoteDevice;LInterceptingLeRemoteDeviceListener;", "remoteListenerRemoved", "gotAddress", "LInterceptingLeRemoteDevice;LNSString;", "connecting", "disconnecting", "closing", "serviceDiscoveryStarted", "LInterceptingLeRemoteDevice;[LJavaUtilUUID;", "gotRemoteDeviceName", "characteristicChanged", "LInterceptingLeCharacteristicListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;", "characteristicNotificationChanged", "LInterceptingLeCharacteristicListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;LJavaLangBoolean;", "characteristicWritten", "LInterceptingLeCharacteristicWriteListener;LJavaUtilUUID;LInterceptingLeRemoteDevice;LInterceptingLeGattCharacteristic;LJavaLangBoolean;", "characteristicListenerSet", "LInterceptingLeRemoteDevice;LInterceptingLeCharacteristicListener;[LJavaUtilUUID;", "characteristicWriteListenerSet", "LInterceptingLeRemoteDevice;LInterceptingLeCharacteristicWriteListener;[LJavaUtilUUID;", "setValue", "LInterceptingLeGattCharacteristic;[BLJavaLangBoolean;" };
  static const J2ObjcClassInfo _LeSessionInterceptor = { "LeSessionInterceptor", "houtbecke.rs.le.interceptor", ptrTable, methods, fields, 7, 0x1, 42, 1, -1, -1, -1, -1, -1 };
  return &_LeSessionInterceptor;
}

@end

void LeSessionInterceptor_initWithEventSink_(LeSessionInterceptor *self, id<EventSink> sink) {
  LeInterceptor_init(self);
  JreStrongAssign(&self->sink_, sink);
}

LeSessionInterceptor *new_LeSessionInterceptor_initWithEventSink_(id<EventSink> sink) {
  J2OBJC_NEW_IMPL(LeSessionInterceptor, initWithEventSink_, sink)
}

LeSessionInterceptor *create_LeSessionInterceptor_initWithEventSink_(id<EventSink> sink) {
  J2OBJC_CREATE_IMPL(LeSessionInterceptor, initWithEventSink_, sink)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(LeSessionInterceptor)

J2OBJC_NAME_MAPPING(LeSessionInterceptor, "houtbecke.rs.le.interceptor", "")
