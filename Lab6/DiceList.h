//
//  DiceList.h
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface DiceList : NSObject

@property (nonatomic) NSMutableArray *diceList;
- (instancetype)init;
- (void) addDice:(Dice*)dice;

@end

NS_ASSUME_NONNULL_END
