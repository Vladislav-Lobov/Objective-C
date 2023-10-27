//
//  Doctor.m
//  Homework03
//
//  Created by My_MAC_computer on 27/10/2023.
//  Copyright © 2023 My_MAC_computer. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (void) preparePilule{
    NSLog(@"Doctor preparing pilule");
    [self.delegate drinkPilule];
};
@end
