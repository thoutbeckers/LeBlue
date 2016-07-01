//
//  LeGattServiceCB.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 13/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeGattServiceCB.h"
#import "LeGattCharacteristicCB.h"

#import "Helpers.h"
#import "HelpersCB.h"

#import "Peripheral.h"

@implementation LeGattServiceCB



-(id) initWith:(CBService *)service device:(LeDeviceCB *) device remoteDevice:(LeRemoteDeviceCB *) remoteDevice
{
    self = [super init];
    if (self)
    {
        _service = service;
        _device = device;
        _remoteDevice = remoteDevice;
        
        _characteristics = [NSMutableDictionary new];

        

        
    }
    return self;
}





- (JavaUtilUUID *)getUuid{
    return [_service.UUID toJavaUtilUUID];
}

- (id<LeGattCharacteristic>)getCharacteristicWithJavaUtilUUID:(JavaUtilUUID *)uuid{
    CBCharacteristic* characteristic = [_characteristics objectForKey:[uuid toCBUUID]];
    if (!characteristic) return nil;
    return [[LeGattCharacteristicCB alloc] initWith:characteristic remoteDevice:_remoteDevice];

}

- (BOOL)enableCharacteristicNotificationWithJavaUtilUUID:uuid{
        CBCharacteristic* characteristic = [_characteristics objectForKey:[uuid toCBUUID]];
        if (!characteristic) return FALSE;
        [_remoteDevice.peripheral setNotifyValue:TRUE forCharacteristic:characteristic];
        return TRUE;
}

@end
