//
//  SubstactionQuestion.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "SubstactionQuestion.h"
#import "Question.h"

@implementation SubstactionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    int num1 = arc4random_uniform(90) + 10;
    int num2 = arc4random_uniform(90) + 10;
    _question = [NSString stringWithFormat:@"%d + %d", num1, num2];
    _answer = num1 + num2;
    _startTime = [NSDate date];
}

@end
