//
//  Q75_SortColors.m
//  LeetCodeSeries
//
//  Created by 李一平 on 2018/10/31.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q75_SortColors.h"

@interface Q75_SortColors ()

@end

@implementation Q75_SortColors

/**
 给定一个包含红色、白色和蓝色，一共 n 个元素的数组，原地对它们进行排序，使得相同颜色的元素相邻，> 并按照红色、白色、蓝色顺序排列。
 
 此题中，我们使用整数 0、 1 和 2 分别表示红色、白色和蓝色。
 
 注意:
 不能使用代码库中的排序函数来解决这道题。
 
 示例:
 
 输入: [2,0,2,1,1,0]
 
 输出: [0,0,1,1,2,2]
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *array = @[@2,@0,@2,@1,@1,@0].mutableCopy;
    [self sortColor:array];
    NSLog(@"%@",array);
}

/**
 结合三路快排partition思路的应用，设定两个索引，一个从左往右滑动zero，一个从右往左滑动two，遍历nums，当nums[i]的值为1时，i++；当nums[i]的值为2时，two的值先减1，而后交换nums[i]与nums[two]，此时在观察nums[i]的值；当nums[i]的值为0时，zero++，而后交换nums[i]与nums[zero]，i++;当 i = two时，结束循环。
 */
- (void)sortColor:(NSMutableArray *)array {
    NSInteger zero = -1;//最后一个0的位置
    NSInteger two = array.count;//最前一个2的位置
    
    for (NSInteger i = 0; i < two; ) {
        if ([array[i] integerValue] == 1) {//该放在中间
            i++;
        } else if ([array[i] integerValue] == 2) {//该放在后面
            two--;//最前一个2的位置前移
            [array exchangeObjectAtIndex:i withObjectAtIndex:two];//把这次遍历得到的2放到 2的最前面（也就是上一步前移2的位置）
        } else {//该放在前面
            zero++;//最后一个0的位置后移
            [array exchangeObjectAtIndex:zero withObjectAtIndex:i];//把这次遍历得到的0放到 0的最后面（也就是上一步后移0的位置）
            i++;
        }
    }
}

@end
