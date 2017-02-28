//
//  LeDeviceCB.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 12/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeDevice.h"
#import <CoreBluetooth/CoreBluetooth.h>
#include "IOSObjectArray.h"


@interface LeDeviceCB : NSObject<LeDevice,CBCentralManagerDelegate>
{
    NSMutableSet* delegates;

}
@property (strong) NSMutableDictionary* remoteDevices;
@property (strong) NSMutableArray<CBCentralManager*>* centralManagers;


@end
