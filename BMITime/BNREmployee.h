//
//  BNREmployee.h
//  BMITime
//
//  Created by Marc Maguire on 2017-01-28.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee: BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate; //this will create an instance variable called _hireDate and also create the two accessor methods for both setting and accessing the value
@property (nonatomic, copy) NSArray *assets;
- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;


@end
