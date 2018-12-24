//
//  List.h
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

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


/**
 移除链表中的指定元素

 @param head 头结点
 @param element 目标元素
 @return 移除后的表头节点
 */
- (ListNode *)removeElement:(ListNode *)head element:(int)element ;


/**
 移除链表中元素等于指定值的节点

 @param head 表头节点
 @param deleteValue 需要被移除的节点值
 */
- (void)deleteNode:(ListNode *)head deleteValue:(int)deleteValue;

@end
