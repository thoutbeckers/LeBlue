//
//  LeDeviceCB.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 12/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeDeviceCB.h"
#import "LeDeviceListener.h"
#import "LeRemoteDeviceCB.h"
#import "helpers.h"
#import "HelpersCB.h"

#import "LeScanRecordCb.h"
#import "LeDeviceState.h"
@implementation LeDeviceCB

-(id) init
{
    self = [super init];
    if (self)
    {
        delegates = [[NSMutableSet alloc] init];
        _remoteDevices = [NSMutableDictionary new];

        _centralManager = [[CBCentralManager alloc]
                           initWithDelegate:self
                           queue:dispatch_get_main_queue()];
        
    }
    return self;
}

- (void)addListenerWithLeDeviceListener:(id<LeDeviceListener>)listener
{
    [delegates addObject: listener];
}

- (void)removeListenerWithLeDeviceListener:(id<LeDeviceListener>)listener{
    [delegates removeObject: listener];
}

- (BOOL)checkBleHardwareAvailable{
    return ( _centralManager.state != CBCentralManagerStateUnsupported);

}

- (BOOL)isBtEnabled{
    return ( _centralManager.state == CBCentralManagerStatePoweredOn);
    
}

- (void)startScanning{
NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber  numberWithBool:YES], CBCentralManagerScanOptionAllowDuplicatesKey, nil];
       [_centralManager scanForPeripheralsWithServices:nil options:options];
   // NSLog(@"startScanning");

}

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids{
    [_centralManager scanForPeripheralsWithServices:[uuids toCBUUIDArray] options:nil];
   //  NSLog(@"startScanning with uuid");

}

- (void)stopScanning{
    [_centralManager stopScan];
   // NSLog(@"stopScanning");

}


#pragma mark CBCentralManagerDelegate
-(void)centralManagerDidUpdateState:(CBCentralManager *)central
{

    switch (central.state)
    {
        case CBCentralManagerStatePoweredOn:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_ON()];
            break;
        case CBCentralManagerStatePoweredOff:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_OFF()];
            
            break;
        case CBCentralManagerStateResetting:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_OFF()];
            
            break;
        case CBCentralManagerStateUnsupported:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_OFF()];
            
            break;
        case CBCentralManagerStateUnauthorized:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_OFF()];
            
            break;
        case CBCentralManagerStateUnknown:
            for(id<LeDeviceListener> delegate in delegates)
                [delegate leDeviceStateWithLeDevice:self withLeDeviceState:LeDeviceState_get_OFF()];
            
            break;
    }
}

- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI{
    
 //   NSLog(@"peripheral discovered %@", peripheral.identifier);

  LeRemoteDeviceCB * remoteDevice  = [_remoteDevices objectForKey:peripheral.identifier];
    
    if ([_remoteDevices objectForKey:peripheral.identifier] == nil){
        remoteDevice = [[LeRemoteDeviceCB alloc] initWith:peripheral device:self];
        [_remoteDevices setObject:remoteDevice forKey:peripheral.identifier];
    }

   [remoteDevice setName:[advertisementData objectForKey:CBAdvertisementDataLocalNameKey]];
    
    for(id<LeDeviceListener> delegate in delegates) {
        [delegate leDeviceFoundWithLeDevice:self withLeRemoteDevice:remoteDevice withInt:[RSSI intValue] withLeScanRecord:[[LeScanRecordCb alloc]initWithAdvertisementData:advertisementData]];
        
    }
}


- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error{

  //  NSLog(@"didDisconnectPeripheral %@ %@",[peripheral name],error);

    LeRemoteDeviceCB  *remoteDevice = [_remoteDevices objectForKey: peripheral.identifier];
    if (remoteDevice)
        [remoteDevice disconnected];
}

- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral
 {
    //  NSLog(@"didConnectPeripheral %@ ",[peripheral name]);

      LeRemoteDeviceCB  *remoteDevice = [_remoteDevices objectForKey: peripheral.identifier];
     if (remoteDevice)[remoteDevice connected];
     

 }

- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error
{
    
 //   NSLog(@"didFailToConnectPeripheral %@ %@ ",[peripheral name],error);

}



@end
