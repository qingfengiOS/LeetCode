//
//  Q01_TwoSum.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q01_TwoSum.h"

@interface Q01_TwoSum ()

@end

@implementation Q01_TwoSum

/*
 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
 
 你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",[self twoSum:@[@2,@7,@11,@15] target:18]);
}


- (NSArray *)twoSum:(NSArray *)num target:(NSInteger)target {
    
    //以num[i]为key，i为value建立记录的字典
    NSMutableDictionary *recordDic = @{}.mutableCopy;
    for (int i = 0; i < num.count; i++) {
        [recordDic setObject:@(i) forKey:num[i]];
    }
    
    //以target-num[j]为key，在刚刚构建的字典中查找，找到则返回
    for (int j = 0; j < num.count; j++) {
        NSNumber *temp = num[j];
        if (recordDic[@(target - [temp intValue])]) {
            NSNumber *resIndex = recordDic[@(target - [temp intValue])];
            return @[@(j),resIndex];
        }
    }
    return @[].mutableCopy;
}


@end
