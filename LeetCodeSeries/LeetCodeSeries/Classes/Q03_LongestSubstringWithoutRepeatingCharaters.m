//
//  Q03_LongestSubstringWithoutRepeatingCharaters.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q03_LongestSubstringWithoutRepeatingCharaters.h"

@interface Q03_LongestSubstringWithoutRepeatingCharaters ()

@end

@implementation Q03_LongestSubstringWithoutRepeatingCharaters

/**
 给定一个字符串，找出不含有重复字符的最长子串的长度。
 
 示例 1:
 输入: "abcabcbb"
 输出: 3
 解释: 无重复字符的最长子串是 "abc"，其长度为 3。
 
 示例 2:
 输入: "bbbbb"
 输出: 1.
 解释: 无重复字符的最长子串是 "b"，其长度为 1。
 
 示例 3:
 输入: "pwwkew"
 输出: 3
 解释: 无重复字符的最长子串是 "wke"，其长度为 3。
 请注意，答案必须是一个子串，"pwke" 是一个子序列 而不是子串。
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%ld",(long)[self longestSubstring:@"abcabcbb"]);
}

- (NSInteger)longestSubstring:(NSString *)string {
    NSInteger left = 0, right = -1;
    NSInteger result = 0;
    NSMutableDictionary *recordDic = @{}.mutableCopy;

    while (left < string.length) {//左边没到边界
        char character;
        NSString *rightTempStr;
        
        if ( right + 1 < string.length ) {
            character = [string characterAtIndex:right + 1];
            rightTempStr = [NSString stringWithFormat:@"%c",character];
        }
        
        if (right + 1 < string.length && !recordDic[rightTempStr]) {//右边没到边界且记录中不包含这个元素
            [recordDic setObject:@(right) forKey:rightTempStr];
            right++;
        } else {
            char character = [string characterAtIndex:left];
            NSString *leftTempStr = [NSString stringWithFormat:@"%c",character];
            [recordDic removeObjectForKey:leftTempStr];
            left++;
        }
        result = MAX(result, right - left + 1);
    }
    return result;
}
@end
