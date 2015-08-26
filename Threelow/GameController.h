//
//  GameController.h
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dice;

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *dice;
@property (nonatomic) NSMutableSet *held;
@property (nonatomic, assign) int numberOfRolls;

-(instancetype)init;

-(void)roll;
-(void)holdDie:(Dice *)dice;
-(void)resetDice;
-(int)score;

@end
