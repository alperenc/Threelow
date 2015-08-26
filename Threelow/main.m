//
//  main.m
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "GameController.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        
        GameController *gameController = [GameController new];
        
        BOOL repeat = YES;
        
        while (repeat) {
            
            NSString *cmd = [inputCollector inputForPrompt:@"roll or quit?"];
            
            if ([cmd isEqualToString:@"quit"]) {
                repeat = NO;
                NSLog(@"GG!");
            } else if ([cmd isEqualToString:@"roll"]) {
                [gameController roll];
                
                BOOL invalidIndex = NO;
                
                do {
                    NSArray *hold = [[inputCollector inputForPrompt:@"Dice to hold/unhold: "] componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                    
                    for (NSString *index in hold) {
                        int i =  [index intValue];
                        if (i < [gameController.dice count]) {
                            [gameController holdDie:gameController.dice[i]];
                            invalidIndex = NO;
                        } else {
                            NSLog(@"You have to choose an index between 0-4:");
                            invalidIndex = YES;
                            break;
                        }
                    }
                } while (invalidIndex);
                
            } else {
                NSLog(@"Not a valid input");
            }
        }
        
    }
    return 0;
}
