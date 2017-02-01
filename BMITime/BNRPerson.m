//
//  BNRPerson.m
//  BMITime
//
//  Created by Marc Maguire on 2017-01-27.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters
//{
//    return _heightInMeters; //getter - it just goes and gets the value of the instance variable heightInMeters
//}
//
//- (void)setHeightInMeters:(float)h
//{
//    _heightInMeters = h; //setter - it sets the instance variable height in meters
//}
//
//- (int)weightInKilos
//{
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    _weightInKilos = w;
//}

- (float)bodyMassIndex
{
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    //this accesses instance variables directly which is a nono in obj-C
    float h = [self heightInMeters]; //this instead accesses the getter which returns the value set in the instance variable. I can only assume this is a workaround for not having optionals - you want to avoid accessing an instance variable which could be nil and crash the program. $10 says if a getter fails then it will return 0 or something
    return [self weightInKilos] / (h * h);
}


@end

