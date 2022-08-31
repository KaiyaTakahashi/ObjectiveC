//
//  main.m
//  Lab2
//
//  Created by Kaiya Takahashi on 2022-08-31.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *b1 = [[Box alloc] initWithHeigth:2 width:3 length:4];
        NSLog(@"%f", [b1 calculate]);
        
        Box *b2 = [[Box alloc] initWithHeigth:3 width:2 length:1];
        NSLog(@"%d", [Box howManyFit:b1 box2:b2]);
    }
    return 0;
}
