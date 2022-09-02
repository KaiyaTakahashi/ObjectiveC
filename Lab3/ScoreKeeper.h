//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
- (instancetype)init:(int)rCount wCount:(int)wCount;
- (void)print;
- (void) set_rCount:(int)rCount;
- (void) set_wCount:(int)wCount;
- (int) _rCount;
- (int) _wCount;
@end

NS_ASSUME_NONNULL_END
