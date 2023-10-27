//
//  main.m
//  Homework03
//
//  Created by My_MAC_computer on 27/10/2023.
//  Copyright © 2023 My_MAC_computer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor preparePilule];
    }
    return 0;
}
