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
    id<LeCharacteristicListener>
    nullListener;
    id<LeCharacteristicWriteListener>
    nullWriteListener;
    NSString * _cachedName;
    NSString * _cachedAdress;

}

@property (strong)CBPeripheral* peripheral;
@property (readonly) CBCentralManager* centralManager;

-(id) initWith:(CBPeripheral*) peripheral device:(LeDeviceCB*)device centralManager:(CBCentralManager*)centralManager;
- (void) connected;
- (void) disconnected;
- (void) setName:(NSString *) name;
- (void) characteristicWrittenJavaUtilUUID:(JavaUtilUUID *)uuid LeGattCharacteristic:(id<LeGattCharacteristic>) leGattCharacteristic success:(Boolean)success;


@end
