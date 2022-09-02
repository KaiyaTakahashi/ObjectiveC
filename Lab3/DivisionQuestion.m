//
//  DivisionQuestion.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-02.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [super generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    int num1 = arc4random_uniform(90) + 10;
    int num2 = arc4random_uniform(90) + 10;
    [super setQuestion:[NSString stringWithFormat:@"%d / %d", num1, num2]];
    [super setAnswer:num1 / num2];
    [super setStartTime:[NSDate date]];
}

@end
