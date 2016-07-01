//
//  LeGattCharacteristicCB.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 13/08/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeGattCharacteristicCB.h"
#import "LeFormat.h"
#import "LeUtil.h"
#import "IOSObjectArray.h"
#import "IOSPrimitiveArray.h"
@implementation LeGattCharacteristicCB



-(id) initWith:(CBCharacteristic *)characteristic remoteDevice:(LeRemoteDeviceCB*)
    remoteDevice
{
    self = [super init];
    if (self)
    {
        _characteristic = characteristic;
        _remoteDevice = remoteDevice;
        _javaUUID=[[_characteristic UUID] toJavaUtilUUID];

    }
    return self;
}


- (IOSByteArray *)getValue{
    return [IOSByteArray newArrayWithBytes:[_characteristic.value bytes] count:[_characteristic.value length]];
    
}

- (JavaUtilUUID *)getJavaUUID{
    return _javaUUID;
}


- (int)getIntValueWithLeFormatEnum:(LeFormatEnum *)format
                            withInt:(int)index{
    
    const uint8_t* bytes = (const uint8_t*) _characteristic.value.bytes;

    switch ([format ordinal]) {
        case LeFormat_FORMAT_UINT8:
            return  bytes[index];
            break;
        case LeFormat_FORMAT_UINT16:
            return  CFSwapInt16LittleToHost(*(uint16_t *)(&bytes[index-1]));

            break;
        case LeFormat_FORMAT_UINT32:
            return  CFSwapInt32LittleToHost(*(uint16_t *)(&bytes[index-3]));
            break;

    }
    
    return 0;
    

   }

-(void)setValueWithByteArray:(IOSByteArray *)value withBoolean:(BOOL)withResponse{

    if (withResponse){

        [_remoteDevice.peripheral writeValue:[value toNSData]
                           forCharacteristic:_characteristic type:CBCharacteristicWriteWithResponse];
    }else{


        [_remoteDevice.peripheral writeValue:[value toNSData]
                           forCharacteristic:_characteristic type:CBCharacteristicWriteWithoutResponse];

        //needed because android always sends a response
        [_remoteDevice  characteristicWrittenJavaUtilUUID:_javaUUID LeGattCharacteristic:self];

    }

}

- (void)setValueWithByteArray:(IOSByteArray *)value{

        [_remoteDevice.peripheral writeValue:[value toNSData]
                    forCharacteristic:_characteristic type:CBCharacteristicWriteWithResponse];
    
}

- (void)read{
    [_remoteDevice.peripheral readValueForCharacteristic:_characteristic];
}
@end
