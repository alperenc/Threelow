//
//  Dice.m
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(int)randomValue {
    int random = 1 + arc4random_uniform(6);
    self.currentValue = random;
    return random;
}

@end
