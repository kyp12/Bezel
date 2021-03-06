//
//  BZBackgroundAdjustment.h
//  Bezel
//
//  Created by Josh Buchacher on 1/11/13.
//  Copyright (c) 2013 Mind Diaper. All rights reserved.
//

#import "BZAdjustment.h"

NSString* const kAdjustmentTypeBackgroundColor;
NSString* const kAdjustmentTypeBackgroundImage;

@interface BZBackgroundAdjustment : BZAdjustment

@property (strong, nonatomic) NSDictionary *value;

@end
