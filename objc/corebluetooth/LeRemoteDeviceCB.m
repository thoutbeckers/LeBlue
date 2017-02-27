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


-(id) initWith:(CBPeripheral*) peripheral device:(LeDeviceCB*)device
{
    self = [super init];
    if (self)
    {
        _peripheral = peripheral;
        _listeners = [[NSMutableSet alloc] init];
        _uuidListeners = [[NSMutableDictionary alloc] init];
        _uuidWriteListeners = [[NSMutableDictionary alloc] init];

        _device = device;

    }
    return self;
}

- (void)addListenerWithLeRemoteDeviceListener:(id<LeRemoteDeviceListener>)listener{
  //  NSLog(@"add addListenerWithLeRemoteDeviceListener");
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
    _peripheral.delegate = self;
     [_device.centralManager connectPeripheral:_peripheral options:nil];
}


- (void)disconnect{
    [services removeAllObjects];
     [_device.centralManager cancelPeripheralConnection:_peripheral];
}

- (void)close{
    _peripheral.delegate = nil;
    [[_device remoteDevices] removeObjectForKey:_peripheral.identifier];
    _peripheral = nil;
}

- (void)startServicesDiscovery{
 //   NSLog(@"startServicesDiscovery");
    [_peripheral discoverServices:nil];
}

- (void)startServicesDiscoveryWithJavaUtilUUIDArray:(IOSObjectArray *)uuids{
//    NSLog(@"startServicesDiscovery with uuids");
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

    for (id<LeRemoteDeviceListener> listener in _listeners){
        [listener serviceDiscoveredWithLeDevice:_device withLeRemoteDevice:self withLeGattStatus:LeGattStatus_get_SUCCESS() withLeGattServiceArray:[IOSObjectArray arrayWithNSArray:[services allValues]  type:[LeGattServiceCB java_getClass]] ];

    }

}

- (void) connected {

    for (id<LeRemoteDeviceListener> listener in _listeners){
        [listener leDevicesConnectedWithLeDevice:_device withLeRemoteDevice:self];
        }
}


- (void) disconnected {

    for (id<LeRemoteDeviceListener> listener in _listeners){
        [listener leDevicesDisconnectedWithLeDevice:_device withLeRemoteDevice:self];
    }

}


#pragma mark CBPeripheralDelegate
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error
{
  //  NSLog(@"didDiscoverServices:");

    if (error) NSLog(@"Error: %@", error.localizedDescription);
    else
    {

        _servicesDiscovered = _peripheral.services.count;
        services = [[NSMutableDictionary alloc] init];
        servicesCB = [[NSMutableArray alloc] init];
        _serviceFoundSent = false;

        if (_peripheral.services.count == 0 ) return;

        for (unsigned int i=0; i<_peripheral.services.count; i++)
        {
            CBService* service = [_peripheral.services objectAtIndex:i];
            LeGattServiceCB *  gattServiceCB = [[LeGattServiceCB alloc] initWith:service device:_device remoteDevice:self ];
            [services setObject:gattServiceCB forKey:service.UUID];
            [servicesCB addObject:service];
        }
        [peripheral discoverCharacteristics:nil forService:[servicesCB objectAtIndex:_servicesDiscovered-1]];

    }
}


- (void) peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error
{
  //  NSLog(@"didDiscoverCharacteristicsForService: %@ ",service.UUID.stringValue);

    if (error) NSLog(@"Error: %@", error.localizedDescription);

    for (unsigned int i=0; i<service.characteristics.count ; i++)
    {
        CBCharacteristic* c = [service.characteristics objectAtIndex:i];
     //   NSLog(@"Discovered Characteristic %@ for service %@", c.UUID.stringValue, service.UUID.stringValue);
        LeGattServiceCB*  gattServiceCB = [services objectForKey:service.UUID];
        [gattServiceCB.characteristics setObject:c forKey:c.UUID];

    }

        if (_servicesDiscovered >0)
          {
                  _servicesDiscovered--;
                 [peripheral discoverCharacteristics:nil forService:[servicesCB objectAtIndex:_servicesDiscovered]];
          }else{
                [self serviceFound];
           }
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


   if (error){
         NSLog(@"Error didWriteValueForCharacteristic: %@ %@",characteristic.UUID.stringValue,   error.localizedDescription);
     }else{

         id<LeGattCharacteristic>  leGattCharacteristic = [[LeGattCharacteristicCB alloc] initWith: characteristic remoteDevice:self];

             [self  characteristicWrittenJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] LeGattCharacteristic:leGattCharacteristic];

     }
}


- (void) characteristicWrittenJavaUtilUUID:(JavaUtilUUID *)uuid LeGattCharacteristic:(id<LeGattCharacteristic>) leGattCharacteristic
{
    id<LeCharacteristicWriteListener> uuidWriteListener =  [_uuidWriteListeners objectForKey: [uuid toCBUUID] ];

    if (nullWriteListener != nil){
        [nullWriteListener leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:self
                                      withLeGattCharacteristic:leGattCharacteristic withBoolean:YES];
    }

    if (uuidWriteListener != nil){
        [uuidWriteListener leCharacteristicWrittenWithJavaUtilUUID:uuid withLeRemoteDevice:self
                                      withLeGattCharacteristic:leGattCharacteristic withBoolean:YES];
        }
}


- (void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error{
    
    Boolean succes = characteristic.isNotifying;

    if (error){
        NSLog(@"Error changing notification state: %@", error.localizedDescription);
    }else{
        id<LeCharacteristicListener> uuidListener =  [_uuidListeners objectForKey:
                                                      [characteristic UUID] ];
        id<LeGattCharacteristic>  leGattCharacteristic = [[LeGattCharacteristicCB alloc] initWith: characteristic remoteDevice:self];

        if (nullListener != nil){

            [nullListener leCharacteristicNotificationChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                                     withLeGattCharacteristic:leGattCharacteristic withBoolean:succes];


        }

        if (uuidListener != nil){
            [uuidListener leCharacteristicNotificationChangedWithJavaUtilUUID:[[characteristic UUID] toJavaUtilUUID] withLeRemoteDevice:self
                                         withLeGattCharacteristic:leGattCharacteristic withBoolean:succes];
        }
    }

}

- (void)peripheral:(CBPeripheral *)peripheral didReadRSSI:(NSNumber *)RSSI error:(NSError *)error{
    for (id<LeRemoteDeviceListener> listener in _listeners){
            [listener rssiReadWithLeDevice:_device withLeRemoteDevice:self  withInt:(int)[RSSI integerValue]];
    }
}

-(void)readRssi{
    [_peripheral readRSSI];
}

@end



