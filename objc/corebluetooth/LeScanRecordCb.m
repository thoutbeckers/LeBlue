//
//  LeScanRecordCb.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 02/09/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "LeScanRecordCb.h"
#import "Helpers.h"
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
        class= [[suuid toJavaUtilUUID] getClass];
    }
    return [IOSObjectArray arrayWithNSArray:services type:class];

    
}

- (BOOL)hasServiceWithJavaUtilUUID:(JavaUtilUUID *)uuid{
    NSArray* serviceIds = [_advertisementData objectForKey:CBAdvertisementDataServiceUUIDsKey];
    
    for (CBUUID* suuid in serviceIds){
        if ( [uuid isEqual: [suuid toJavaUtilUUID]]){
            return true;
        }
       
        
    }
    
    return false;
}

- (IOSByteArray *)getRawData{
    //TODO
    return nil;
}

- (NSString *) getLocalName {
   return [_advertisementData objectForKey:CBAdvertisementDataLocalNameKey];
}

@end
