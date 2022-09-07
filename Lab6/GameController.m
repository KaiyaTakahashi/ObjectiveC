//
//  GameController.m
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setRemainingRolls:5];
    }
    return self;
}

- (void)holdDie:(Dice*)dice {
    [dice setIsheld:YES];
}

- (void)resetDice:(NSMutableArray*)array {
    for(int i = 0; i < [array count]; i++) {
        [(Dice*)[array objectAtIndex:i] setIsheld:NO];
    }
}

- (void)printBoard:(NSMutableArray*)array isLast:(BOOL)isLast {
    [self setScore:0];
    [self calculateScore:array];
    if (isLast) {
        NSLog(@"GAME OVER");
    } else {
        NSLog(@"Remaining Rolls: %d", [self remainingRolls]);
    }
    NSLog(@"------------------------");
    NSLog(@"--    Current Dice    --");
    NSLog(@" %@  %@  %@  %@  %@  ",
          [self getIcon:(Dice*)[array objectAtIndex:0]],
          [self getIcon:(Dice*)[array objectAtIndex:1]],
          [self getIcon:(Dice*)[array objectAtIndex:2]],
          [self getIcon:(Dice*)[array objectAtIndex:3]],
          [self getIcon:(Dice*)[array objectAtIndex:4]]);
    NSLog(@"--    Total Score     --");
    NSLog(@"Score: %d", [self score]);
    NSLog(@"------------------------");
}

- (void)calculateScore:(NSMutableArray*)array {
    for (int i = 0; i < [array count]; i++) {
        if ([(Dice*)array[i] isheld]) {
            [self setScore:[self score] + [(Dice*)[array objectAtIndex:i] currentValue]];
        }
    }
}

- (void)decrementRolls {
    [self setRemainingRolls:[self remainingRolls] - 1];
}

- (NSString*)getIcon:(Dice*)dice {
    NSString *icon;
    switch ([dice currentValue]) {
        case 1:
            icon = @"⚀";
            break;
        case 2:
            icon = @"⚁";
            break;
        case 3:
            icon = @"⚂";
            break;
        case 4:
            icon = @"⚃";
            break;
        case 5:
            icon = @"⚄";
            break;
        case 6:
            icon = @"⚅";
            break;
        default:
            break;
    }
    if ([dice isheld]) {
        return [NSString stringWithFormat:@"[%@]", icon];
    }
    return icon;
}

@end
