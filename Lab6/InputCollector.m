//
//  InputCollector.m
//  Lab6
//
//  Created by Kaiya Takahashi on 2022-09-06.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString*) inputForPromt:(NSString*)promptString {
    char inputChars[255];
    NSLog(@"%@", promptString);
    char *result = fgets(inputChars, 255, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
