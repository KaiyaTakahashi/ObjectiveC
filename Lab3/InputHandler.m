//
//  InputHandler.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString*) getUserInput:(int)maxLength prompt:(NSString*)prompt {
    if (maxLength < 1) {
        maxLength == 255;
    }
    char inputChars[maxLength];
    NSLog(@"%@", prompt);
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}


@end
