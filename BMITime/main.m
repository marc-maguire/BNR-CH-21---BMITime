//
//  main.m
//  BMITime
//
//  Created by Marc Maguire on 2017-01-27.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h" //you import the headerfile always, don't need to import the parent class as well.
#import "BNRAsset.h"
//The angled brackets tell the compiler that Foundation/Foundation.h is a precompiled header found in Apple’s libraries. The quotation marks tell the compiler to look for BNRPerson.h within the current project.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       //create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            //create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc]init];
            
            //Give the instance variables interesting values
            mikey.weightInKilos = 90+i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // put the employee in the employees array
            [employees addObject:mikey];
        }
        
        //create 10 assets
        for (int i = 0; i < 10; i++) {
            //create an asset
            BNRAsset *asset = [[BNRAsset alloc]init];
            
            //give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            //get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //find that employee
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //assign the asset to the employee
            [randomEmployee addAsset: asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
    }
    return 0;
}
