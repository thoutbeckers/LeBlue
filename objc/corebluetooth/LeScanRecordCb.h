//
//  LeScanRecordCb.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 02/09/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeScanRecord.h"

@interface LeScanRecordCb : NSObject<LeScanRecord>
{
    NSDictionary * _advertisementData;
}

-(id) initWithAdvertisementData:(NSDictionary *)advertisementData;




@end
