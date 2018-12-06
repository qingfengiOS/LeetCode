//
//  List.m
//  LeetCodeSeries
//
//  Created by liyiping on 2018/12/6.
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

@end
