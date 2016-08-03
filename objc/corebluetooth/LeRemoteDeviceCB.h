//
//  LeRemoteDeviceCB.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 12/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeRemoteDevice.h"
#import "LeDeviceCB.h"
#import "java/util/UUID.h"
#import "LeGattCharacteristic.h"

#import <CoreBluetooth/CoreBluetooth.h>


@interface LeRemoteDeviceCB : NSObject<LeRemoteDevice,CBPeripheralDelegate>
{
    LeDeviceCB* _device ;
    NSMutableSet* _listeners;

    NSMutableDictionary*
    _uuidListeners;
    NSMutableDictionary*
    _uuidWriteListeners;
    NSMutableDictionary * services;
    NSMutableArray * servicesCB;
    id<LeCharacteristicListener>
    nullListener;
    id<LeCharacteristicWriteListener>
    nullWriteListener;
    unsigned long _servicesDiscovered;
    BOOL _serviceFoundSent;
    NSString * _cachedName;
    NSString * _cachedAdress;

}

@property (strong)CBPeripheral* peripheral;

-(id) initWith:(CBPeripheral*) peripheral device:(LeDeviceCB*)device;
- (void) connected;
- (void) disconnected;
- (void) setName:(NSString *) name;
- (void) characteristicWrittenJavaUtilUUID:(JavaUtilUUID *)uuid LeGattCharacteristic:(id<LeGattCharacteristic>) leGattCharacteristic;


@end
