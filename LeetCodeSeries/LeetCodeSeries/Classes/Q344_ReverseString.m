//
//  Q344_ReverseString.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/11/28.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

#import "Q344_ReverseString.h"

@interface Q344_ReverseString ()

@end

@implementation Q344_ReverseString

- (void)viewDidLoad {
    [super viewDidLoad];
    char str[] = "A man, a plan, a canal: Panama";
    printf("%s\n",reverseCStr(str));
}


/**
 反转字符串

 @param str 原来字符串
 @return 反转后的字符串
 */
char *reverseCStr(char *str) {
    if (str != NULL) {//非空判断
        size_t length = strlen(str);
        char *start = str;
        char *end = str + length - 1;
        char temp;
        
        while (start < end) {//交换左右端点的元素，直到左边位置=右边位置
            temp = *start;
            *start++ = *end;
            *end-- = temp;
        }
    }
    return str;
}

@end
