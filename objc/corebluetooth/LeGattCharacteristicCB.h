//
//  LeGattCharacteristicCB.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 13/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "LeRemoteDeviceCB.h"
#import "HelpersCB.h"

#import "LeGattCharacteristic.h"
@interface LeGattCharacteristicCB : NSObject<LeGattCharacteristic>{
    LeRemoteDeviceCB* _remoteDevice;
    CBCharacteristic * _characteristic;
    JavaUtilUUID * _javaUUID;

}
-(id) initWith:(CBCharacteristic *)characteristic remoteDevice:(LeRemoteDeviceCB*)remoteDevice;
- (JavaUtilUUID *)getJavaUUID;

@end
