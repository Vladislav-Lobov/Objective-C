//
//  Doctor.h
//  Homework03
//
//  Created by My_MAC_computer on 27/10/2023.
//  Copyright © 2023 My_MAC_computer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void) preparePilule;

@end

NS_ASSUME_NONNULL_END
