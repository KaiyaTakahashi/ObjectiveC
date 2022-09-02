//
//  InputHandler.h
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

+ (NSString*) getUserInput:(int)maxLength prompt:(NSString*)prompt;

@end

NS_ASSUME_NONNULL_END
