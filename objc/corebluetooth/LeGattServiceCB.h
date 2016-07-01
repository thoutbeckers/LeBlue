//
//  LeGattServiceCB.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 13/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeGattService.h"
#import "LeDeviceCB.h"
#import "LeRemoteDeviceCB.h"
#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "IOSPrimitiveArray.h"

@interface LeGattServiceCB : IOSClass<LeGattService>
{
    CBService * _service;
    LeDeviceCB * _device;
    LeRemoteDeviceCB * _remoteDevice;

    
}
@property (strong)NSMutableDictionary* characteristics;

-(id) initWith:(CBService *)service device:(LeDeviceCB *) device remoteDevice:(LeRemoteDeviceCB *) remoteDevice;

@end
