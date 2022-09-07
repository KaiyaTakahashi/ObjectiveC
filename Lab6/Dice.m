//
//  Dice.m
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setIsheld: NO];
    }
    return self;
}

- (void)randomise {
    [self setCurrentValue:arc4random_uniform(6)+1];
}

@end
