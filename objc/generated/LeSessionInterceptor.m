
#include "BaseIntercepting.h"
#include "Event.h"
#include "EventSink.h"
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
  static const J2ObjcMethodInfo methods[] = {
    { "drainEventWithLeEventType:withBaseIntercepting:withBaseIntercepting:withBaseIntercepting:withNSStringArray:", "drainEvent", "V", 0x84, NULL, NULL },
    { "drainEventWithLeEventType:withBaseIntercepting:withBaseIntercepting:withNSStringArray:", "drainEvent", "V", 0x84, NULL, NULL },
    { "drainEventWithLeEventType:withBaseIntercepting:withNSStringArray:", "drainEvent", "V", 0x84, NULL, NULL },
    { "initWithEventSink:", "LeSessionInterceptor", NULL, 0x1, NULL, NULL },
    { "listenerAddedWithInterceptingLeDevice:withInterceptingLeDeviceListener:", "listenerAdded", "V", 0x1, NULL, NULL },
    { "deviceFoundWithInterceptingLeDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:withLeScanRecord:", "deviceFound", "V", 0x1, NULL, NULL },
    { "deviceStateWithInterceptingLeDeviceListener:withInterceptingLeDevice:withLeDeviceState:", "deviceState", "V", 0x1, NULL, NULL },
    { "connectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "connected", "V", 0x1, NULL, NULL },
    { "disconnectedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "disconnected", "V", 0x1, NULL, NULL },
    { "closedWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:", "closed", "V", 0x1, NULL, NULL },
    { "gotUUIDWithInterceptingLeGattService:withJavaUtilUUID:", "gotUUID", "V", 0x1, NULL, NULL },
    { "gotCharacteristicWithInterceptingLeGattService:withInterceptingLeGattCharacteristic:", "gotCharacteristic", "V", 0x1, NULL, NULL },
    { "rssiReadWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withInt:", "rssiRead", "V", 0x1, NULL, NULL },
    { "readRssiWithInterceptingLeRemoteDevice:", "readRssi", "V", 0x1, NULL, NULL },
    { "readWithInterceptingLeGattCharacteristic:", "read", "V", 0x1, NULL, NULL },
    { "enabledCharacteristicNotificationWithInterceptingLeGattService:withJavaUtilUUID:withBoolean:", "enabledCharacteristicNotification", "V", 0x1, NULL, NULL },
    { "servicesDiscoveredWithInterceptingLeRemoteDeviceListener:withInterceptingLeDevice:withInterceptingLeRemoteDevice:withLeGattStatus:withInterceptingLeGattServiceArray:", "servicesDiscovered", "V", 0x1, NULL, NULL },
    { "listenerRemovedWithInterceptingLeDevice:", "listenerRemoved", "V", 0x1, NULL, NULL },
    { "checkedBleHardwareAvailableWithInterceptingLeDevice:withBoolean:", "checkedBleHardwareAvailable", "V", 0x1, NULL, NULL },
    { "wasBtEnabledWithInterceptingLeDevice:withBoolean:", "wasBtEnabled", "V", 0x1, NULL, NULL },
    { "startedScanningWithInterceptingLeDevice:", "startedScanning", "V", 0x1, NULL, NULL },
    { "startedScanningWithInterceptingLeDevice:withJavaUtilUUIDArray:", "startedScanning", "V", 0x1, NULL, NULL },
    { "stoppedScanningWithInterceptingLeDevice:", "stoppedScanning", "V", 0x1, NULL, NULL },
    { "gotValueWithInterceptingLeGattCharacteristic:withByteArray:", "gotValue", "V", 0x1, NULL, NULL },
    { "gotIntValueWithInterceptingLeGattCharacteristic:withLeFormat:withInt:", "gotIntValue", "V", 0x1, NULL, NULL },
    { "remoteListenerAddedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:", "remoteListenerAdded", "V", 0x1, NULL, NULL },
    { "remoteListenerRemovedWithInterceptingLeRemoteDevice:withInterceptingLeRemoteDeviceListener:", "remoteListenerRemoved", "V", 0x1, NULL, NULL },
    { "gotAddressWithInterceptingLeRemoteDevice:withNSString:", "gotAddress", "V", 0x1, NULL, NULL },
    { "connectingWithInterceptingLeRemoteDevice:", "connecting", "V", 0x1, NULL, NULL },
    { "disconnectingWithInterceptingLeRemoteDevice:", "disconnecting", "V", 0x1, NULL, NULL },
    { "closingWithInterceptingLeRemoteDevice:", "closing", "V", 0x1, NULL, NULL },
    { "serviceDiscoveryStartedWithInterceptingLeRemoteDevice:", "serviceDiscoveryStarted", "V", 0x1, NULL, NULL },
    { "serviceDiscoveryStartedWithInterceptingLeRemoteDevice:withJavaUtilUUIDArray:", "serviceDiscoveryStarted", "V", 0x1, NULL, NULL },
    { "gotRemoteDeviceNameWithInterceptingLeRemoteDevice:withNSString:", "gotRemoteDeviceName", "V", 0x1, NULL, NULL },
    { "characteristicChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:", "characteristicChanged", "V", 0x1, NULL, NULL },
    { "characteristicNotificationChangedWithInterceptingLeCharacteristicListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:", "characteristicNotificationChanged", "V", 0x1, NULL, NULL },
    { "characteristicWrittenWithInterceptingLeCharacteristicWriteListener:withJavaUtilUUID:withInterceptingLeRemoteDevice:withInterceptingLeGattCharacteristic:withJavaLangBoolean:", "characteristicWritten", "V", 0x1, NULL, NULL },
    { "characteristicListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicListener:withJavaUtilUUIDArray:", "characteristicListenerSet", "V", 0x1, NULL, NULL },
    { "characteristicWriteListenerSetWithInterceptingLeRemoteDevice:withInterceptingLeCharacteristicWriteListener:withJavaUtilUUIDArray:", "characteristicWriteListenerSet", "V", 0x1, NULL, NULL },
    { "setValueWithInterceptingLeGattCharacteristic:withByteArray:", "setValue", "V", 0x1, NULL, NULL },
    { "setValueWithInterceptingLeGattCharacteristic:withByteArray:withJavaLangBoolean:", "setValue", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sink_", NULL, 0x4, "Lhoutbecke.rs.le.session.EventSink;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _LeSessionInterceptor = { 2, "LeSessionInterceptor", "houtbecke.rs.le.interceptor", NULL, 0x1, 41, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
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
