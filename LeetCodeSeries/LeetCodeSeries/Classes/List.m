//
//  List.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "List.h"
#import "ListNode.h"

@implementation List

/**
 插入元素 尾插法
 
 @param value 元素值
 */
- (void)appendTolist:(int)value {
    if (_tail == nil) {//表尾为空
        _tail = [[ListNode alloc]initWithValue:value];
        _head = _tail;
    } else {
        _tail.next = [[ListNode alloc]initWithValue:value];
        _tail = _tail.next;
    }
}

- (int)accessList:(int)index {
    if (index == 0) {
        return self.head.value;
    }
    
    int i = index;
    ListNode *node = self.head;
    while (i > 0) {
        node = node.next;
        i--;
    }
    return node.value;
}

#pragma mark - public
/**
 链表反转
 
 @param head 链表头节点
 @return 反转后的表头节点
 */
- (ListNode *)reverseList:(ListNode *)head {
    ListNode *preNode = nil;
    ListNode *currentNode = head;
    while (currentNode != nil) {
        ListNode *next = currentNode.next;
        currentNode.next = preNode;
        preNode = currentNode;
        currentNode = next;
    }
    return preNode;
}

/**
 移除链表中的指定元素
 
 @param head 头结点
 @param element 目标元素
 @return 移除后的表头节点
 */
- (ListNode *)removeElement:(ListNode *)head element:(int)element {
    
    ListNode *dummyHead = [[ListNode alloc]initWithValue:0];
    dummyHead.next = head;
    
    ListNode *currentNode = dummyHead;
    ListNode *deleteNode;
    while (currentNode.next != nil) {
        if (currentNode.next.value == element) {
            deleteNode = currentNode.next;
            currentNode.next = deleteNode.next;
        } else {
            currentNode = currentNode.next;
        }
    }
    ListNode *resultNode = dummyHead.next;
    dummyHead = nil;
    return resultNode;
}

/**
 移除链表中元素等于指定值的节点
 
 @param head 表头节点
 @param deleteValue 需要被移除的节点值
 */
- (void)deleteNode:(ListNode *)head deleteValue:(int)deleteValue {
    
    while (head != nil) {
        
        if (head.value == deleteValue) {
            head.value = head.next.value;
            ListNode *deleteNode = head.next;//找到要被删除的节点
            head.next = deleteNode.next;//修改指针节点
            deleteNode = nil;//清空需要删除的节点
            return;
        } else {
            head = head.next;
        }
    }
}

@end
