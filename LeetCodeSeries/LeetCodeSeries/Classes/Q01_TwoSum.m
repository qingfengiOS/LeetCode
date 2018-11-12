//
//  Q01_TwoSum.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q01_TwoSum.h"

@interface Q01_TwoSum ()

@end

@implementation Q01_TwoSum

/**
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

- (NSMutableArray *)twoSum:(NSArray *)nums target:(NSInteger )target {
    NSMutableArray *result = @[].mutableCopy;
    NSMutableDictionary *recordDic = @{}.mutableCopy;
    
    for (NSUInteger i = 0; i < nums.count; i++) {
        [recordDic setObject:[NSNumber numberWithInteger:i] forKey:nums[i]];//value是下标 key是数组中对应的值
    }

    for (NSInteger j = 0; j < nums.count; j++) {
        NSNumber *temp = [NSNumber numberWithInteger:target - [nums[j] integerValue]];
        if (recordDic[temp] && recordDic[temp] != [NSNumber numberWithInteger:j]) {
            [result addObject:[NSNumber numberWithInteger:j]];
            [result addObject:recordDic[temp]];
            return result;
        }
    }
    return result;
}

//step1：使用字典，以数组中每个元素的为key，以此元素的下标做value，建立记录字典
//step2：遍历数组，以target-nums[j]为key，查找记录字典，找到则匹配成功



@end
