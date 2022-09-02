//
//  QuestionManager.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager {
    NSMutableArray *_questions;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSMutableArray*)_questions  {
    return _questions;
}

- (NSString*)timeOutput {
    NSTimeInterval totalTime = 0;
    
    for (int i = 0; i < _questions.count; i++) {
        totalTime += [(Question*)[_questions objectAtIndex:i] answerTime];
    }
    return [NSString stringWithFormat:@"total time: %.0f, average time %.0f", totalTime, totalTime / _questions.count];
}

@end
