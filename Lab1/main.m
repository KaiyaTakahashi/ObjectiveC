//
//  main.m
//  Lab1
//
//  Created by Kaiya Takahashi on 2022-08-30.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength == 255;
    }
    char inputChars[maxLength];
    NSLog(@"%@", prompt);
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bool finished = false;
        while (finished == false) {
            NSString *userStr = getUserInput(255, @"Enter your string: ('q' to quit)");
            NSUInteger len = [userStr length];
            unichar buffer[len+1];
            [userStr getCharacters:buffer range:NSMakeRange(0, len)];
            if ([userStr isEqualToString:@"q"]) {
                finished = true;
            } else {
                NSString *userNum = getUserInput(255, @"Choose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberise\n4. Canadianise\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Done");
                switch ([userNum intValue]) {
                    case 1:
                        NSLog(@"%@", userStr.uppercaseString);
                        break;
                    case 2:
                        NSLog(@"%@", userStr.lowercaseString);
                        break;
                    case 3:
                        NSLog(@"%d", [userStr intValue]);
                        break;
                    case 4:
                        NSLog(@"%@", userStr);
                        NSLog(@"%@", [userStr stringByAppendingString:@", eh?"]);
                        break;
                    case 5:
                        if ([[userStr substringWithRange:NSMakeRange(userStr.length-1, 1)] isEqualToString:@"?"]) {
                            NSLog(@"I don't know");
                        } else if ([[userStr substringWithRange:NSMakeRange(userStr.length-1, 1)] isEqualToString:@"!"]) {
                            NSLog(@"Whoa calm down");
                        }
                        break;
                    case 6:
                        for (int i = 0; i < userStr.length; i++) {
                            char c = [userStr characterAtIndex:i];
                            if (c == ' ') {
                                NSLog(@"-");
                            } else {
                                NSLog(@"%C", c);
                            }
                        }
                        break;
                    case 7:
                        NSLog(@"%lu", userStr.length);
                        break;
                    case 8:
                        for (int i = 0; i < userStr.length; i++) {
                            char c = [userStr characterAtIndex:i];
                            if (c == ' ') {
                                continue;
                            } else {
                                NSLog(@"%C", c);
                            }
                        }
                    default:
                        break;
                }
            }
        }
        
    }
    return 0;
}
