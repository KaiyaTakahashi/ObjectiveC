//
//  Box.h
//  Lab2
//
//  Created by Kaiya Takahashi on 2022-08-31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

- (instancetype)initWithHeigth:(float)height width:(float)width length:(float)length;
- (float)calculate;
+ (int)howManyFit:(Box*)box1 box2:(Box*)box2;

@end

NS_ASSUME_NONNULL_END
