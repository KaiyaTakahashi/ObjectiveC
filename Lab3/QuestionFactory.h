//
//  QuestionFactory.h
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : Question

@property NSArray<NSString*> *questionSubclassNames;
- (Question*)generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
