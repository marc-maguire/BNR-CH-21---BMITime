//
//  BNREmployee.m
//  BMITime
//
//  Created by Marc Maguire on 2017-01-28.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

//accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
if (!_assets) {
    //create the array
    _assets = [[NSMutableArray alloc]init];
}
    [_assets addObject:a];
}

- (unsigned int) valueOfAssets
{
    //sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment
{
    //Do I have a non-nil hireDate?
    if (self.hireDate) {
        //NSTimeInterval is the same as a double (which is what the return of this function is)
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //seconds per year
    } else {
        return 0;
    }
}

//override bodymassindex from parent class

- (float)bodyMassIndex
{
    return 19;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: %u in assets>", self.employeeID, self.valueOfAssets];
}

@end

