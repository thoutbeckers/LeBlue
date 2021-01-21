//
//  LeRemoteDeviceCB.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 12/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeRemoteDeviceCB.h"
#import "LeDeviceCB.h"



#import  "LeGattServiceCB.h"
#import  "LeGattCharacteristicCB.h"
#import "HelpersCB.h"

#import "LeCharacteristicListener.h"
#import "LeCharacteristicWriteListener.h"

#import "LeRemoteDeviceListener.h"
#import "LeGattStatus.h"
#include "IOSObjectArray.h"
#import "LeUtil.h"

@implementation LeRemoteDeviceCB


-(id) initWith:(CBPeripheral*) peripheral device:(LeDeviceCB*)device centralManager:(CBCentralManager*)centralManager
{
    self = [super init];
    if (self)
    {
        _peripheral = peripheral;
        _listeners = [[NSMutableSet alloc] init];
        _uuidListeners = [[NSMutableDictionary alloc] init];
        _uuidWriteListeners = [[NSMutableDictionary alloc] init];
        _centralManager=centralManager;
        _device = device;

    }
    return self;
}

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener{
    [_listeners addObject: listener];


}

- (void)removeListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener{
    [_listeners removeObject: listener];

}

- (NSString *)getAddress{
    if (!_cachedAdress)
        _cachedAdress =[_peripheral.identifier UUIDString];
    return _cachedAdress;
}

- (void)connect{
    if(_peripheral!=nil){
        _peripheral.delegate = self;
        [_centralManager connectPeripheral:_peripheral options:nil];
    }
}


- (void)disconnect{
    if(_peripheral!=nil){
        [services removeAllObjects];
        [_centralManager cancelPeripheralConnection:_peripheral];
    }
}

- (void)close{
    if(_peripheral!=nil){
        _peripheral.delegate = nil;
        [[_device remoteDevices] removeObjectForKey:_peripheral.identifier];
        _peripheral = nil;
    }
}

- (void)startServicesDiscovery{
    [_peripheral discoverServices:nil];
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids{
    [_peripheral discoverServices:[uuids toCBUUIDArray] ];
}

- (void)setCharacteristicListenerWithLeCharacteristicListener:(id<LeCharacteristicListener>)listener
                                        withJavaUtilUUIDArray:(IOSObjectArray *)uuids{
    if (uuids == nil ||  [uuids hasNil] || [uuids length] == 0){
        nullListener = listener;
    }else {

        for (id uuid1  in [uuids toCBUUIDArray ]){
            CBUUID *uuid = uuid1;
            if (listener==nil)
                [_uuidListeners removeObjectForKey:uuid];
            else
                [_uuidListeners setObject:listener forKey:uuid];
        }
    }

}

-(void)setCharacteristicWriteListenerWithLeCharacteristicWriteListener:(id<LeCharacteristicWriteListener>)listener withJavaUtilUUIDArray:(IOSObjectArray *)uuids{
    if (uuids == nil ||  [uuids hasNil] || [uuids length] == 0){
        nullWriteListener = listener;
    }else {

        for (id uuid1  in [uuids toCBUUIDArray ]){
            CBUUID *uuid = uuid1;
            if (listener==nil)
                [_uuidWriteListeners removeObjectForKey:uuid];
            else
                [_uuidWriteListeners setObject:listener forKey:uuid];
        }
    }


}

- (NSString *)getName{
    if (!_cachedName)
        _cachedName =_peripheral.name;
    return _cachedName;

}

- (void)setName:(NSString *) name{
    _cachedName = name;
}

- (void) serviceFound {
    NSSet* listenersCopy = [NSSet setWithSet: _listeners];

    for (id<LeRemoteDeviceListener> listener in listenersCopy){
        [listener serviceDiscoveredWithLeDevice:_device withLeRemoteDevice:self withLeGattStatus:LeGattStatus_get_SUCCESS() withLeGattServiceArray:[IOSObjectArray arrayWithNSArray:[services allValues]  type:[LeGattServiceCB java_getClass]] ];

    }

}

- (void) connected {
    NSSet* listenersCopy = [NSSet setWithSet: _listeners];

    for (id<LeRemoteDeviceListener> listener in listenersCopy){
        [listener leDevicesConnectedWithLeDevice:_device withLeRemoteDevice:self];
    }
}


- (void) disconnected {
    NSSet* listenersCopy = [NSSet setWithSet: _listeners];

    for (id<LeRemoteDeviceListener> listener in listenersCopy){
        [listener leDevicesDisconnectedWithLeDevice:_device withLeRemoteDevice:self];
        [listener leDevicesClosedWithLeDevice:_device withLeRemoteDevice:self];
    }
}


#pragma mark CBPeripheralDelegate
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error
{

    if (error) NSLog(@"Error: %@", error.localizedDescription);
    else
    {

        services = [[NSMutableDictionary alloc] init];

        if (_peripheral.services.count == 0 ) return;

        for (unsigned int i=0; i<_peripheral.services.count; i++)
        {
            CBService* service = [_peripheral.services objectAtIndex:i];
            LeGattServiceCB *  gattServiceCB = [[LeGattServiceCB alloc] initWith:service device:_device remoteDevice:self ];
            [services setObject:gattServiceCB forKey:service.UUID];
            [peripheral discoverCharacteristics:nil forService:service];
        }

    }

}


- (void) peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error
{
    if (error) NSLog(@"Error: %@", error.localizedDescription);

    for (unsigned int i=0; i<service.characteristics.count ; i++)
    {
        CBCharacteristic* c = [service.characteristics objectAtIndex:i];
        LeGattServiceCB*  gattServiceCB = [services objectForKey:service.UUID];
        [gattServiceCB.characteristics setObject:c forKey:c.UUID];

    }

    [self serviceFound];

}

- (void) peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error
{


    if (error){
        NSLog(@"Error didUpdateValueForCharacteristic: %@ %@",characteristic.UUID.stringValue,   error.localizedDescription);
    }else{
        id<LeCharacteristicListener> uuidListener =  [_uuidListeners objectForKey:
                                                      [characteristic UUID] ];
        id<LeGattCharacteristic>  leGattCharacteristic = [[LeGattCharacteristicCB alloc] initWith: characteristic remoteDevice:self];

        if (nullListener != nil){
            [nullListener leCharacteristicChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                         withLeGattCharacteristic:leGattCharacteristic];


        }

        if (uuidListener != nil){
            [uuidListener leCharacteristicChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                         withLeGattCharacteristic:leGattCharacteristic];
        }
    }
}

- (void) peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error
{
    Boolean success = true;
    if (error){
        success = false;
        NSLog(@"Error didWriteValueForCharacteristic: %@ %@",characteristic.UUID.stringValue,   error.localizedDescription);
    }
    id<LeGattCharacteristic>  leGattCharacteristic = [[LeGattCharacteristicCB alloc] initWith: characteristic remoteDevice:self];
    [self  characteristicWrittenJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] LeGattCharacteristic:leGattCharacteristic success:success];

}


- (void) characteristicWrittenJavaUtilUUID:(JavaUtilUUID *)uuid LeGattCharacteristic:(id<LeGattCharacteristic>) leGattCharacteristic success:(Boolean)success
{
    id<LeCharacteristicWriteListener> uuidWriteListener =  [_uuidWriteListeners objectForKey: [uuid toCBUUID] ];

    if (nullWriteListener != nil){
        [nullWriteListener leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:self
                                          withLeGattCharacteristic:leGattCharacteristic withBoolean:success];
    }

    if (uuidWriteListener != nil){
        [uuidWriteListener leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:self
                                          withLeGattCharacteristic:leGattCharacteristic withBoolean:success];
    }
}


- (void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error{

    Boolean success = characteristic.isNotifying;

    if (error){
        NSLog(@"Error changing notification state: %@", error.localizedDescription);
    }
    id<LeCharacteristicListener> uuidListener =  [_uuidListeners objectForKey:
                                                  [characteristic UUID] ];
    id<LeGattCharacteristic>  leGattCharacteristic = [[LeGattCharacteristicCB alloc] initWith: characteristic remoteDevice:self];

    if (nullListener != nil){
        [nullListener leCharacteristicNotificationChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                                 withLeGattCharacteristic:leGattCharacteristic withBoolean:success];
    }

    if (uuidListener != nil) {
        [uuidListener leCharacteristicNotificationChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                                  withLeGattCharacteristic:leGattCharacteristic withBoolean:success];
    }

}

- (void)peripheral:(CBPeripheral *)peripheral didReadRSSI:(NSNumber *)RSSI error:(NSError *)error{
    NSSet* listenersCopy = [NSSet setWithSet: _listeners];

    for (id<LeRemoteDeviceListener> listener in listenersCopy){
        [listener rssiReadWithLeDevice:_device withLeRemoteDevice:self  withInt:(int)[RSSI integerValue]];
    }
}

-(void)readRssi{
    [_peripheral readRSSI];
}

- (void)refreshDeviceCache{
    // does not work on ios
}


@end



