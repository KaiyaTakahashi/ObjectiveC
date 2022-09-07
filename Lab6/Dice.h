//
//  Dice.h
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic) int currentValue;
@property (nonatomic) BOOL isheld;
- (void) randomise;


@end

NS_ASSUME_NONNULL_END
