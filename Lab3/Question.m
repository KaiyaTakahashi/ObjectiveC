//
//  Question.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "Question.h"

@implementation Question 

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (NSTimeInterval)answerTime {
    return ceil([_endTime timeIntervalSinceDate:_startTime]);
}


- (void)generateQuestion {}

@end
