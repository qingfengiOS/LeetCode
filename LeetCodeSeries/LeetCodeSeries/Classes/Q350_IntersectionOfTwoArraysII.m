//
//  Q350_IntersectionOfTwoArraysII.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/8.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q350_IntersectionOfTwoArraysII.h"

@interface Q350_IntersectionOfTwoArraysII ()

@end

@implementation Q350_IntersectionOfTwoArraysII

/**
 给定两个数组，编写一个函数来计算它们的交集。
 
 示例 1:
 输入: nums1 = [1,2,2,1], nums2 = [2,2]
 输出: [2,2]
 
 示例 2:
 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 输出: [4,9]
 
 说明：
 
 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
 我们可以不考虑输出结果的顺序。
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *result = [self intersectionOfTwoArrays:@[@1,@2,@2,@1].mutableCopy num2:@[@2,@2].mutableCopy];
    
    NSMutableArray *result2 = [self intersectionOfTwoArrays:@[@4,@9,@5].mutableCopy num2:@[@9,@4,@9,@8,@4].mutableCopy];
    
    NSLog(@"result = %@ result2 = %@",result,result2);
}



/*
 容器类map的使用。
 
 遍历num1，通过map容器record存储num1的元素与频率
 遍历num2，在record中查找是否有相同的元素（该元素的存储频率大于0），如果有，用resultVector进行存储，同时该元素的频率减一
 */
- (NSMutableArray *)intersectionOfTwoArrays:(NSMutableArray *)num1 num2:(NSMutableArray *)num2 {
    
    NSMutableArray *result = @[].mutableCopy;//结果数组
    
    NSMutableDictionary *recordDic = @{}.mutableCopy;//记录num1中的数据
    
    for (NSInteger i = 0; i < num1.count; i++) {//key：对应的数字， value：该数字出现的次数
        NSInteger countValue = [recordDic[num1[i]] integerValue];
        [recordDic setObject:@(countValue + 1) forKey:num1[i]];
    }
    
    for (NSInteger j = 0; j < num2.count; j++) {//遍历num2，如果记录里面有这个字段，那么是交集，加到结果数组，同时减一更新记录的字典
        if (recordDic[num2[j]] && [recordDic[num2[j]] integerValue] != 0) {
            [result addObject:num2[j]];
            NSInteger countValue = [recordDic[num2[j]] integerValue];
            countValue -= 1;
            recordDic[num2[j]] = @(countValue);
        }
    }
    
    return result;
}

@end
