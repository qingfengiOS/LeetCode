//
//  Q219_ContainsDuplicateII.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/13.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q219_ContainsDuplicateII.h"

@interface Q219_ContainsDuplicateII ()

@end

@implementation Q219_ContainsDuplicateII

/**
 给出⼀个整形数组nums和⼀个整数k，是否存在索引i和j，使得nums[i] == nums[j] 且i和j之间的差不超过k
 
 Example 1:
 Input: nums = [1,2,3,1], k = 3
 Output: true.
 
 Example 2:
 Input: nums = [1,0,1,1], k = 1
 Output: true
 
 Example 3:
 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    BOOL res = [self containsDuplicate:@[@1,@2,@3,@1] target:3];
    BOOL res2 = [self containsDuplicate:@[@1,@0,@1,@1] target:1];
    BOOL res3 = [self containsDuplicate:@[@1,@2,@3,@1,@2,@3] target:2];
    NSLog(@"\nres = %d \nres2 = %d\nres3 = %d ",res,res2,res3);
}

/**
 设置查找表record，用来保存每次遍历时插入的元素，record的最大长度为target
 遍历数组nums，每次遍历的时候在record查找是否存在相同的元素，如果存在则返回true，遍历结束
 如果此次遍历在record未查找到，则将该元素插入到record中，而后查看record的长度是否为target + 1
 如果此时record的长度是否为target + 1，则删减record的元素，该元素的值为nums[i - target]
 如果遍历完整个数组nums未查找到则返回false
 */
- (BOOL)containsDuplicate:(NSArray *)nums target:(NSInteger)target {
    if (nums.count < 1) {
        return NO;
    }
    if (target <= 0) {
        return NO;
    }
    NSMutableDictionary *recordDic = @{}.mutableCopy;
    for (NSInteger i = 0; i < nums.count; i++) {
        if (recordDic[nums[i]]) {
            return YES;
        }
        recordDic[nums[i]] = [NSNumber numberWithInteger:i];
        
        if ([recordDic allKeys].count == target + 1) {
            [recordDic removeObjectForKey:nums[i - target]];
        }
    }
    return NO;
}


@end
