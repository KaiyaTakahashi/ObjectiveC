//
//  DiceList.m
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import "DiceList.h"
#import "Dice.h"

@implementation DiceList

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDiceList:[NSMutableArray new]];
        [[self diceList] addObject:[Dice new]];
        [[self diceList] addObject:[Dice new]];
        [[self diceList] addObject:[Dice new]];
        [[self diceList] addObject:[Dice new]];
        [[self diceList] addObject:[Dice new]];
        for (int i = 0; i < [self diceList].count; i++) {
            [[self diceList][i] randomise];
        }
    }
    return self;
}

- (void) addDice:(Dice *)dice {
    [[self diceList] addObject:dice];
}


@end
