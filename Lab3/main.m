//
//  main.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isFinished = false;
        ScoreKeeper *sk = [[ScoreKeeper alloc] init:0 wCount:0];
        QuestionManager *qm = [[QuestionManager alloc] init];
        QuestionFactory *qf = [QuestionFactory new];
        
        while (!isFinished) {
            Question *q = [qf generateRandomQuestion];
            NSLog(@"%@  ?", [q question]);
            NSString *input = [InputHandler getUserInput:255 prompt:@"Enter here: "];
            if ([input isEqualToString:@"q"]) {
                isFinished = true;
            } else {
                if ([q answer] == [input intValue]) {
                    NSLog(@"Right!");
                    [sk set_rCount:[sk _rCount] + 1];
                } else {
                    [sk set_wCount: [sk _wCount] + 1];
                    NSLog(@"Wrong!");
                }
                [q setEndTime:[NSDate date]];
                [[qm _questions] addObject:q];
                [sk print];
                NSLog(@"%@", [qm timeOutput]);
            }
        }
    }
    return 0;
}
