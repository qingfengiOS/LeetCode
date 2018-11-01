//
//  Q167_TwoSum2.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/1.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q167_TwoSum2.h"

@interface Q167_TwoSum2 ()

@end

@implementation Q167_TwoSum2

/**
 给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
 
 函数应该返回这两个下标值 index1 和 index2，其中 index1 必须小于 index2。
 
 说明:
 
 返回的下标值（index1 和 index2）不是从零开始的。
 你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。
 示例:
 
 输入: numbers = [2, 7, 11, 15], target = 9
 输出: [1,2]
 解释: 2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary *res = [self twoSum2:@[@2, @7, @11, @15] target:18];
    NSLog(@"res = %@",res);
}

/**
 和上一个列子[Q75_SortColors]思想类似，三路快排，因为源数组已经排序好了，所以用两个指针左右扫描，
 - 如果和等于target，说明刚好找到了
 - 如果和大于target，左移右指针
 - 如果和小于target，右移左指针
 */
- (NSDictionary *)twoSum2:(NSArray *)array target:(NSInteger)target {
    NSInteger leftIndex = 0;
    NSInteger rightIndex = array.count - 1;
    
    for (NSInteger i = 0; i < array.count; i++) {
        if ([array[leftIndex] integerValue] + [array[rightIndex] integerValue] == target) {
            return @{@"index1":[NSNumber numberWithInteger: leftIndex + 1],@"index2":[NSNumber numberWithInteger:rightIndex + 1 ]};
        } else if ([array[leftIndex] integerValue] + [array[rightIndex] integerValue] < target) {
            leftIndex ++;
        } else {
            rightIndex --;
        }
    }
    return @{};
}

/**
 时间复杂度:O(n)
 空间复杂度:O(1)
 */
@end
