//
//  main.m
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"
#import "DiceList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *ic = [[InputCollector alloc] init];
        GameController *gc = [[GameController alloc] init];
        DiceList *diceList = [DiceList new];
        BOOL isfinished = NO;
        while ([gc remainingRolls] != 0 && !isfinished) {
            NSString *input = [ic inputForPromt:@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'display' to show current dice\'done' to finish the game"];
            if ([input isEqual:@"roll"]) {
                for (int i = 0; i < [[diceList diceList] count]; i++) {
                    if (![[diceList diceList][i] isheld]) {
                        [[diceList diceList][i] randomise];
                    }
                }
                [gc decrementRolls];
                [gc printBoard:[diceList diceList]isLast:NO];
            } else if ([input isEqual:@"hold"]) {
                NSString *indexStr = [ic inputForPromt:@"Enter index: "];
                int indexInt = [indexStr intValue];
                [gc holdDie:[diceList diceList][indexInt]];
                [gc printBoard:[diceList diceList]isLast:NO];
            } else if ([input isEqual:@"reset"]) {
                [gc resetDice:[diceList diceList]];
                [gc printBoard:[diceList diceList]isLast:NO];
            } else if ([input isEqual:@"display"]) {
                [gc printBoard:[diceList diceList]isLast:NO];
            } else if ([input isEqual:@"done"]) {
                isfinished = YES;
            }
            else {
                NSLog(@"Invalid input");
            }
            NSLog(@"");
        }
        for (int i = 0; i < [diceList diceList].count; i++) {
            [gc holdDie:[diceList diceList][i]];
        }
        [gc printBoard:[diceList diceList]isLast:YES];
    }
    return 0;
}
