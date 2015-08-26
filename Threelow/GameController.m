//
//  GameController.m
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.dice = [NSMutableArray new];
        self.held = [NSMutableSet new];
    }
    
    return self;
}

-(void)roll{
    
    [self.dice removeAllObjects];
    
    for (Dice *dice in self.held) {
        [self.dice addObject:dice];
    }
    
    for (int i = 0; i < 5 - self.held.count; i++) {
        Dice *singleDice = [Dice new];
        [singleDice randomValue];
        [self.dice addObject:singleDice];
    }
    NSLog(@"%@", self);
}

-(void)holdDie:(Dice *)dice {
    if ([self.held containsObject:dice]) {
        [self.held removeObject:dice];
    } else {
        [self.held addObject:dice];
    }
}

- (NSString *)description {
    NSString *description = @"\n";
    
    for (Dice *dice in self.dice) {
        if ([self.held containsObject:dice]) {
            description = [description stringByAppendingString:[NSString stringWithFormat:@"[%d]\n", dice.currentValue]];
        } else {
            description = [description stringByAppendingString:[NSString stringWithFormat:@"%d\n", dice.currentValue]];
        }
    }
    
    return description;
}

@end
