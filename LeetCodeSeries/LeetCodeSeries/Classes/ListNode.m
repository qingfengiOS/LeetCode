//
//  ListNode.m
//  LeetCodeSeries
//
//  Created by liyiping on 2018/12/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

- (instancetype)initWithValue:(int)value {
    if (self = [super init]) {
        _value = value;
        _next = nil;
    }
    return self;
}
@end
