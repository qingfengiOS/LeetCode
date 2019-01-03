//
//  Stack.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation Stack

- (instancetype)init {
    if (self = [super init]) {
        self.dataArray = [NSMutableArray array];
    }
    return self;
}

#pragma mark - Public
- (BOOL)isEmpty {
    if (self.dataArray.count == 0) {
        return YES;
    } else {
        return NO;
    }
}

- (void)push:(id)value {
    if (value) {
        [self.dataArray addObject:value];
    }
}

- (id)pop {
    id value = [self.dataArray lastObject];
    [self.dataArray removeLastObject];
    
    return value;
}


@end
