//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Kaiya Takahashi on 2022-09-01.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper  {
    int _rCount;
    int _wCount;
}

- (instancetype)init:(int)rCount wCount:(int)wCount
{
    self = [super init];
    if (self) {
        _rCount = rCount;
        _wCount = wCount;
    }
    return self;
}

- (void) set_rCount:(int)rCount {
    _rCount = rCount;
}

- (void) set_wCount:(int)wCount {
    _wCount = wCount;
}

- (int) _rCount {
    return _rCount;
}

- (int) _wCount {
    return _wCount;
}

- (void)print {
    int res = (double)_rCount / (double)(_rCount + _wCount) * 100;
    NSLog(@"score: %d rights, %d wrongs ----- %d%%", _rCount, _wCount, res);
}

@end
