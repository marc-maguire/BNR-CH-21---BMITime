//
//  BNRPerson.h
//  BMITime
//
//  Created by Marc Maguire on 2017-01-27.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

    
    //BNRPerson has two properties and do not go in curlies
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
    //property declaration includes the @property + the type of property and its name
    
    // BNRPerson has two instance variables
    //float _heightInMeters;
    //int _weightInKilos;

//instance varialbes go inside the curly braces

//BNRPerson has methods to read and set its instance variables

//- (float)heightInMeters; //getter
////seems common practice at this point to have a method that sets the instance variables
//- (void)setHeightInMeters:(float)h; //setter
//- (int)weightInKilos; //getter
//- (void)setWeightInKilos:(int)w; //setter
//


//BNRPerson has a method that calculates the BMI
- (float)bodyMassIndex;

@end
