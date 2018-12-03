//
//  Q206_ReverseLinkedList.h
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/3.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "ViewController.h"

@interface Q206_ReverseLinkedList : ViewController

@end


/**
 链表节点
 */
@interface ListNode : NSObject
@property (nonatomic, strong) ListNode *next;
@property (nonatomic, assign) int value;
@end


/**
 链表
 */
@interface List : NSObject
@property (nonatomic, strong) ListNode *head;
@property (nonatomic, strong) ListNode *tail;


/**
 插入新元素到链表

 @param value 新元素值
 */
- (void)appendTolist:(int)value;

/**
 访问链表

 @param index 下标
 @return 对应下表的值
 */
- (int)accessList:(int)index;


/**
 链表反转

 @param head 链表头节点
 @return 反转后的表头节点
 */
- (ListNode *)reverseList:(ListNode *)head;
@end
