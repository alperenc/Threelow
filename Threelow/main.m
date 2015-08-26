//
//  main.m
//  Threelow
//
//  Created by Alp Eren Can on 26/08/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        for (int i = 0; i < 5; i++) {
            Dice *dice = [[Dice alloc] init];
            [dice randomValue];
            NSLog(@"%d", dice.currentValue);
        }
        
    }
    return 0;
}
