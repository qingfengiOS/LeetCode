//
//  Q206_ReverseLinkedList.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/3.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q206_ReverseLinkedList.h"

@interface Q206_ReverseLinkedList ()

@end

@implementation Q206_ReverseLinkedList

- (void)viewDidLoad {
    [super viewDidLoad];
    
    List *list = [[List alloc]init];
    [list appendTolist:10];
    [list appendTolist:20];
    [list appendTolist:30];
    [list appendTolist:40];
    [list appendTolist:50];
    
    NSLog(@"···················反转后链表·····················");
    ListNode *reversedListHead = [list reverseList:list.head];
    while (reversedListHead) {
        NSLog(@"%d", reversedListHead.value);
        reversedListHead = reversedListHead.next;
    }
    
}

@end

@implementation ListNode

- (instancetype)initWithValue:(int)value {
    if (self = [super init]) {
        _value = value;
        _next = nil;
    }
    return self;
}
@end

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

