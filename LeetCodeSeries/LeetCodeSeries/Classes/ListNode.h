//
//  ListNode.h
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject
@property (nonatomic, strong) ListNode *next;
@property (nonatomic, assign) int value;

- (instancetype)initWithValue:(int)value ;
@end
