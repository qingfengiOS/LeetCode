//
//  NSArray+Reverse.m
//  ReverseArray
//
//  Created by liyiping on 2018/7/11.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "NSArray+Reverse.h"

@implementation NSArray (Reverse)

- (NSArray *)reverseArray {
    NSMutableArray *resultArray = [NSMutableArray arrayWithCapacity:[self count]];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    for (id element in enumerator) {
        [resultArray addObject:element];
    }
    return resultArray;
}

@end
