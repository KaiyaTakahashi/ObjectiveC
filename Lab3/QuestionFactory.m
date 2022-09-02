//
//  QuestionFactory.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setQuestionSubclassNames:[[NSArray alloc] initWithObjects:@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion", nil]];
    }
    return self;
}

- (Question*)generateRandomQuestion {
    int randamNum = arc4random_uniform(4);
    NSString *subclass = _questionSubclassNames[randamNum];
    return [[NSClassFromString(subclass) alloc] init];
}

@end
