//
//  LeScanRecordCb.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 02/09/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeScanRecordCb.h"
#import "HelpersCB.h"

@implementation LeScanRecordCb

-(id) initWithAdvertisementData:(NSDictionary *)advertisementData
{
    self = [super init];
    if (self)
    {
        _advertisementData = advertisementData;
    }
    return self;
    
}

- (IOSObjectArray *)getRecords{
    //TODO
    return nil;
}

- (IOSObjectArray *)getRecordsWithIntArray:(IOSIntArray *)types{
    //TODO
    return nil;
    
}

- (IOSObjectArray *)getServices{

    NSMutableArray * services = [[NSMutableArray alloc] init];
    NSArray* serviceIds = [_advertisementData objectForKey:CBAdvertisementDataServiceUUIDsKey];
    IOSClass * class;

    if (serviceIds == nil) return nil;
    
    for (CBUUID* suuid in serviceIds){
        
        [services addObject:[suuid toJavaUtilUUID] ];
        class= [[suuid toJavaUtilUUID] java_getClass];
    }
    return [IOSObjectArray arrayWithNSArray:services type:class];

    
}

- (bool)hasServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid{
    NSArray* serviceIds = [_advertisementData objectForKey:CBAdvertisementDataServiceUUIDsKey];
    if (serviceIds == nil) return 0;

    for (CBUUID* suuid in serviceIds){
        if ( [uuid isEqual: [suuid toJavaUtilUUID]]){
            return 1;
        }
    }
    return 0;
}

- (IOSByteArray *)getRawData{
    //TODO
    return nil;
}

- (NSString *) getLocalName {
   return [_advertisementData objectForKey:CBAdvertisementDataLocalNameKey];
}

@end
