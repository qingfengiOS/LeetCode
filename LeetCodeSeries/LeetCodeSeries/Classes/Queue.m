//
//  Queue.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/11.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "Queue.h"

@interface Queue ()

/// 数据源
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation Queue

- (instancetype)init {
    if (self = [super init]) {
        self.dataArray = [NSMutableArray array];
    }
    return self;
}

/**
 入队
 
 @param value 元素值
 */
- (void)inQueue:(id)value {
    if (value) {
        [self.dataArray addObject:value];
    }
}

/**
 出队
 
 @return 返回的数据元素
 */
- (id)deQueue {
    if (self.dataArray.count > 0) {
        id value = [self.dataArray firstObject];
        [self.dataArray removeObjectAtIndex:0];
        return value;
    }
    return nil;
}

/**
 队列是否为空
 
 @return YES为空 NO非空
 */
- (BOOL)isEmpty {
    if (self.dataArray.count > 0) {
        return NO;
    } else {
        return YES;
    }
}

/**
 队列的数据数量
 
 @return 数据数量
 */
- (NSUInteger)sizeOfQueue {
    if (self.dataArray) {
        return self.dataArray.count;
    } else {
        return 0;
    }
}
@end

