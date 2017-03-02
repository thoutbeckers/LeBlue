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
#import "HelpersCB.h"
#include "java/util/List.h"

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
        _centralManagers  = [NSMutableArray new];
  
        [_centralManagers addObject: [[CBCentralManager alloc]
                                      initWithDelegate:self
                                      queue:dispatch_get_main_queue()]];

    
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

- (bool)checkBleHardwareAvailable{
    return( ( [_centralManagers objectAtIndex:0].state != CBCentralManagerStateUnsupported)?1 : 0);
}

- (bool)isBtEnabled{
    return( ( [_centralManagers objectAtIndex:0].state == CBCentralManagerStatePoweredOn)?1 : 0);
}

- (void)startScanning{
NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber  numberWithBool:YES], CBCentralManagerScanOptionAllowDuplicatesKey, nil];
       [[_centralManagers objectAtIndex:0] scanForPeripheralsWithServices:nil options:options];

}

- (void)startScanningWithJavaUtilUUIDArray:(IOSObjectArray *)uuids{
    [[_centralManagers objectAtIndex:0] scanForPeripheralsWithServices:[uuids toCBUUIDArray] options:nil];
}


- (void)startScanningWithJavaUtilList:(id<JavaUtilList>)filters{

      while ([filters size] > [_centralManagers count]){

      [_centralManagers addObject: [[CBCentralManager alloc]
                                    initWithDelegate:self
                                    queue:dispatch_get_main_queue()]];
      }

      dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_MSEC), dispatch_get_main_queue(), ^{
      int i =0;
      for (id<JavaUtilList> __strong filter in nil_chk(filters)) {

          NSMutableArray<CBUUID*> *array = [NSMutableArray new];

          for (JavaUtilUUID * __strong uuid in nil_chk(filter)) {

              [array addObject:[uuid toCBUUID]];
          }
          [[_centralManagers objectAtIndex:i] scanForPeripheralsWithServices:array options:nil];
          i++;
      }
      });

 }

- (void)stopScanning{
    for(CBCentralManager * cm in  _centralManagers){
        if (cm.state == CBCentralManagerStatePoweredOn)
            [cm stopScan];
       }
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
    

  LeRemoteDeviceCB * remoteDevice  = [_remoteDevices objectForKey:peripheral.identifier];
    
    if ([_remoteDevices objectForKey:peripheral.identifier] == nil){
        remoteDevice = [[LeRemoteDeviceCB alloc] initWith:peripheral device:self centralManager:central];
        [_remoteDevices setObject:remoteDevice forKey:peripheral.identifier];
    }

   [remoteDevice setName:[advertisementData objectForKey:CBAdvertisementDataLocalNameKey]];
    
    for(id<LeDeviceListener> delegate in delegates) {
        [delegate leDeviceFoundWithLeDevice:self withLeRemoteDevice:remoteDevice withInt:[RSSI intValue] withLeScanRecord:[[LeScanRecordCb alloc]initWithAdvertisementData:advertisementData]];
        
    }
}


- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error{

    LeRemoteDeviceCB  *remoteDevice = [_remoteDevices objectForKey: peripheral.identifier];
    if (remoteDevice)
        [remoteDevice disconnected];
}

- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral
 {
      LeRemoteDeviceCB  *remoteDevice = [_remoteDevices objectForKey: peripheral.identifier];
     if (remoteDevice)[remoteDevice connected];
     

 }

- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error
{
    
}



@end
