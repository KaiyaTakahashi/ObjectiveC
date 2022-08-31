//
//  Box.m
//  Lab2
//
//  Created by Kaiya Takahashi on 2022-08-31.
//

#import "Box.h"

@implementation Box {
    float _height;
    float _width;
    float _length;
}

- (instancetype)initWithHeigth:(float)height width:(float)width length:(float)length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}


- (float)calculate {
    return _height * _width * _length;
}

+ (int)howManyFit:(Box*)box1 box2:(Box*)box2 {
    int count = 0;
    if ([box1 calculate] > [box2 calculate]) {
        for (int i = [box2 calculate]; i <= [box1 calculate]; i += [box2 calculate]) {
            count += 1;
        }
    } else if ([box1 calculate] > [box2 calculate])  {
        for (int i = [box1 calculate]; i < [box2 calculate]; i += [box1 calculate]) {
            count += 1;
        }
    } else {
        return 1;
    }
    return count;
}
@end
