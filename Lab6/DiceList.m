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
    }
    return self;
}

- (void) addDice:(Dice *)dice {
    [[self diceList] addObject:dice];
}


@end
