//
//  NSMutableArray+Reverse.m
//  ReverseArray
//
//  Created by liyiping on 2018/7/11.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "NSMutableArray+Reverse.h"

@implementation NSMutableArray (Reverse)

- (NSMutableArray *)reverseArray {
    
    NSUInteger i = 0;
    NSUInteger j = self.count - 1;
    while (i < j) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:j];
        i++;
        j--;
    }
    return self;
}

@end
