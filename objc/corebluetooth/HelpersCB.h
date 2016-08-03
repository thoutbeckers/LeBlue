//
//  NSObject+helpers.h
//  Tacx-iOS
//
//  Created by Jasper van Putten on 01/09/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "java/util/UUID.h"
#import <CoreBluetooth/CoreBluetooth.h>
#include "IOSObjectArray.h"


@interface IOSObjectArray (helpersCB)


- (NSMutableArray * ) toCBUUIDArray;

@end


@interface JavaUtilUUID (helpersCB)


- (CBUUID*) toCBUUID;


@end

@interface CBUUID (StringValue)
    - (NSString *)stringValue;

    - (JavaUtilUUID *)toJavaUtilUUID;


@end