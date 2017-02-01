//
//  BNRAsset.m
//  BMITime
//
//  Created by Marc Maguire on 2017-01-28.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
