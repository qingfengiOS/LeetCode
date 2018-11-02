//
//  Q283_MoveZeros.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/2.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q283_MoveZeros.h"

@interface Q283_MoveZeros ()

@end

@implementation Q283_MoveZeros

/*
 给定一个数组nums，写一个函数，将数组中所有的0挪到数组的末尾，⽽维持其他所有非0元素的相对位置。
 举例: nums = [0, 1, 0, 3, 12]，函数运⾏后结果为[1, 3, 12, 0, 0]
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray *orgArray = @[@0, @1, @0, @3, @12].mutableCopy;
    
//    [self moveZerosWayOne:orgArray];
    [self moveZerosWayTwo:orgArray];
    
    NSLog(@"%@",orgArray);
    
    
    [self b:orgArray];
}

/*
 方式一：
 用另外一个临时数组记录非0元素，然后遍历这个数组把值赋到源数组前面，源数组其他有位置以0填充
 */
- (void)moveZerosWayOne:(NSMutableArray *)array {
    __block NSMutableArray *tempNotZeroArray = [NSMutableArray array];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj integerValue] != 0) {
            [tempNotZeroArray addObject:obj];
        }
    }];
    
    for (NSInteger i = 0; i < array.count; i++) {
        if (i < tempNotZeroArray.count) {
            [array replaceObjectAtIndex:i withObject:tempNotZeroArray[i]];
        } else {
            [array replaceObjectAtIndex:i withObject:@0];
        }
        
    }
}
/**
 时间复杂度:O(n)
 空间复杂度:O(n)
 */


/*
 方式二：
 用一个值记录非0元素的最大位置，遍历数组若非0，把非0元素依次赋值到这个位置，然后右移notZeroIndex，完成后，大于此值的部分用0补齐
 */
- (void)moveZerosWayTwo:(NSMutableArray *)array {
    
    NSInteger notZeroIndex = 0;// array中, [0...k)的元素均为非0元素
    
    // 遍历到第i个元素后,保证[0...i]中所有非0元素
    // 都按照顺序排列在[0...k)中
    for (NSInteger i = 0; i < array.count; i++) {
        if ([array[i] integerValue] != 0) {
            array[notZeroIndex] = array[i];
            notZeroIndex++;
        }
    }
    
    // 将nums剩余的位置放置为0
    for (NSInteger i = notZeroIndex; i < array.count; i++) {
        array[i] = @0;
    }
}
/**
 时间复杂度:O(n)
 空间复杂度:O(1)
 */





//基础排序
- (void)b:(NSMutableArray *)array {
//    for (NSInteger i = 0; i < array.count; i++) {
//        for (NSInteger j = array.count - 2; j >= i; j--) {
//            if (array[j + 1] < array[j]) {
//                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
//            }
//        }
//    }
    
//    for (NSInteger i = 0; i < array.count; i++) {
//        NSInteger minIdx = i;
//        for (NSInteger j = i; j < array.count ; j++) {
//            if (array[j] < array[minIdx]) {
//                minIdx = j;
//            }
//        }
//        if (i != minIdx) {
//            [array exchangeObjectAtIndex:i withObjectAtIndex:minIdx];
//        }
//    }

    for (NSInteger i = 1; i < array.count; i++) {
        NSNumber *temp = array[i];
        for (NSInteger j = i - 1; j >= 0; j--) {
            if (array[j] > temp) {
                array[j + 1] = array[j];
                array[j] = temp;
            }
        }
    }
}
@end
