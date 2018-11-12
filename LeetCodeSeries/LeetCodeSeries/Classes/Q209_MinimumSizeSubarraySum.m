//
//  Q209_MinimumSizeSubarraySum.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/5.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q209_MinimumSizeSubarraySum.h"

@interface Q209_MinimumSizeSubarraySum ()

@end

@implementation Q209_MinimumSizeSubarraySum

/**
 给定一个含有 n 个正整数的数组和一个正整数 s ，找出该数组中满足其和 ≥ s 的长度最小的连续子数组。如果不存在符合条件的连续子数组，返回 0。
 
 示例:
 
 输入: s = 7, nums = [2,3,1,2,4,3]
 
 输出: 2
 
 解释: 子数组 [4,3] 是该条件下的长度最小的连续子数组。
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    NSInteger res = [self minimumSizeSubarraySum:@[@2,@3,@1,@2,@4,@1].mutableCopy target:7];
    NSLog(@"res = %ld",(long)res);
}

/**
 定义两个指针left和right，分别记录子数组的左右的边界位置。
 
 （1）让right向右移，直到子数组和大于等于给定值或者right达到数组末尾；
 （2）更新最短距离，将left像右移一位,sum减去移除了这个范围的左边值；
 （3）重复（1）（2）步骤，直到right到达末尾，且left到达临界位置
 */

- (NSInteger)minimumSizeSubarraySum:(NSMutableArray *)nums target:(NSInteger)target {
    
    NSInteger left = 0, right = -1;//nums[left...right]为滑动窗口
    NSInteger sum = 0;
    NSInteger res = nums.count + 1;
    
    while (left < nums.count + 1) {//左边边界在数据源数组内
        
        if (right + 1 < nums.count && sum < target) {
            right++;
            sum += [nums[right] integerValue];
        } else {
            left++;
            sum -= [nums[left] integerValue];
        }
        
        if (sum > target) {
            return MIN(res, right - 1 + left);
        }
    }
    if (res == nums.count + 1) {
        return 0;
    }
    return res;
}

// 滑动窗口的思路
// 时间复杂度: O(n)
// 空间复杂度: O(1)
@end
