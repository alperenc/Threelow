//
//  Dice.h
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) int currentValue;

-(int)randomValue;

@end
