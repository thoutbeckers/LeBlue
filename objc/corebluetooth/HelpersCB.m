//
//  NSObject+helpers.m
//  Tacx-iOS
//
//  Created by Jasper van Putten on 01/09/14.
//  Copyright (c) 2014 Splendo. All rights reserved.
//

#import "HelpersCB.h"

@implementation IOSObjectArray (helpersCB)

- (BOOL) hasNil{
    for (id uuid in self) {
        if (uuid==nil)
            return TRUE;
            }
    return FALSE;
}

- (NSMutableArray * )toCBUUIDArray
{
    NSMutableArray * array = [[NSMutableArray alloc] init];
    for (id uuid in self) {
        if (uuid!=nil)
            [array addObject:[uuid toCBUUID]];
    }
    return array;
}

@end

@implementation JavaUtilUUID (helpersCB)


- (CBUUID*) toCBUUID{
    return [CBUUID UUIDWithString:[self description]];
}


@end


@implementation CBUUID (StringValue)
- (NSString *)stringValue
{
    NSData *data = [self data];
    
    NSUInteger bytesToConvert = [data length];
    const unsigned char *uuidBytes = [data bytes];
    NSMutableString *outputString = [NSMutableString stringWithCapacity:16];
    
    for (NSUInteger currentByteIndex = 0; currentByteIndex < bytesToConvert; currentByteIndex++)
    {
        switch (currentByteIndex)
        {
            case 3:
            case 5:
            case 7:
            case 9:[outputString appendFormat:@"%02x-", uuidBytes[currentByteIndex]]; break;
            default:[outputString appendFormat:@"%02x", uuidBytes[currentByteIndex]];
        }
        
    }

    return outputString;
}

- (JavaUtilUUID *)toJavaUtilUUID {

    if ([self.stringValue length] == 4){
        return [JavaUtilUUID fromStringWithNSString:[NSString stringWithFormat:@"0000%@-0000-1000-8000-00805f9b34fb"     ,self.stringValue]];

    }else {
        return [JavaUtilUUID fromStringWithNSString:self.stringValue];
    }
}

@end




