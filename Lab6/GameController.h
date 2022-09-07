//
//  GameController.h
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic) int remainingRolls;
@property (nonatomic) int score;

- (instancetype)init;
- (void)holdDie:(Dice*)dice;
- (void)resetDice:(NSMutableArray*)array;
- (void)printBoard:(NSMutableArray*)array isLast:(BOOL)isLast;
- (void)calculateScore:(NSMutableArray*)array;
- (void)decrementRolls;
- (NSString*)getIcon:(Dice*)dice;

@end

NS_ASSUME_NONNULL_END
