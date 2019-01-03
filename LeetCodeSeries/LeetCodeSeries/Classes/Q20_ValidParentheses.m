//
//  Q20_ValidParentheses.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "Q20_ValidParentheses.h"
#import "Stack.h"

@interface Q20_ValidParentheses ()

@end

@implementation Q20_ValidParentheses

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([self isValidParentheses:@"{[]}"]) {
        NSLog(@"ture");
    } else {
        NSLog(@"false");
    }
    
}

- (BOOL)isValidParentheses:(NSString *)string {
    if (string.length < 2) {
        return NO;
    }
    
    Stack *stack = [[Stack alloc]init];
    
    for (NSInteger i = 0; i < string.length; i++) {
        
        NSString *tempStr = [string substringWithRange:NSMakeRange(i, 1)];
        
        if ([tempStr isEqualToString:@"("] || [tempStr isEqualToString:@"{"]  || [tempStr isEqualToString:@"["]) {//左括号 -> 进栈
            [stack push:tempStr];
        } else {//右括号 -> 出栈 + 匹配
            if (stack.isEmpty) {//
                return NO;
            }
            
            if ([tempStr isEqualToString:@")"]) {
                if (![[stack pop] isEqualToString:@"("]) {
                    return NO;
                }
            } else if ([tempStr isEqualToString:@"}"]) {
                if (![[stack pop] isEqualToString:@"{"]) {
                    return NO;
                }
            } else {
                if (![[stack pop] isEqualToString:@"["]) {
                    return NO;
                }
            }
            
        }
        
        
    }
    
    
    
    return YES;
}

@end
