//
//  NSString+StringByPigLatinisation.m
//  Lab7
//
//  Created by Kaiya Takahashi on 2022-09-07.
//

#import "NSString+StringByPigLatinisation.h"

@implementation NSString (StringByPigLatinisation)

- (NSString*)stringByPigLatinisation {
    NSMutableArray *array = [[self componentsSeparatedByString:@" "] mutableCopy];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj length] > 2 && [@[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"] containsObject:[obj substringWithRange:NSMakeRange(0, 2)]]) { [array replaceObjectAtIndex:idx withObject:[[NSString stringWithFormat:@"%@%@ay", [obj substringWithRange:NSMakeRange(2, [obj length] - 2)], [obj substringWithRange:NSMakeRange(0, 2)]] capitalizedString]]; }
        else { [array replaceObjectAtIndex:idx withObject:[[NSString stringWithFormat:@"%@%@ay", [obj substringWithRange:NSMakeRange(1, [obj length] - 1)], [obj substringWithRange:NSMakeRange(0, 1)]] capitalizedString]]; } }];
    return [array componentsJoinedByString:@" "];
}

@end
