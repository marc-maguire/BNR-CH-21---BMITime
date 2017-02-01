# BNR-CH-21---BMITime

This chapter was trying to teach us how to add an array of objects to an existing class. In this specific case, we created
a BNRAsset class and held the objects in an NSMutableArray Ivar in BNREmployee. In the challenge of the chapter (see BNRStocks
repo) we create a BNRPortfolio class which holds instances of BNRStockHolding and BNRForeignStockHolding. The commented code
below was included in every solution I could find online from other students, but as far as I can tell, it is not needed at all.
The program runs the same with or without them - this is what confused me the most about the chapter and all the solutions I found
online, I didn't understand why this code was there or what it did, or why every single response included it.

In employee.m:
#import "BNREmployee.h"
#import "BNRAsset.h"
@implementation BNREmployee
// Accessors for assets properties
- (void)setAssets:(NSArray *)a ////UNSURE why this method was included when it is not used ever/////////
{
    _assets = [a mutableCopy];
}
- (NSArray *)assets  ////UNSURE why this method was included when it is not used ever/////////
{
    return [_assets copy];
}
and employee.h:
#import "BNRPerson.h"
@class BNRAsset;
@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int employeeID; 
@property (nonatomic) unsigned int officeAlarmCode; 
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets; //UNSURE why this property was included when it is not used ever/////////
- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;
@end


