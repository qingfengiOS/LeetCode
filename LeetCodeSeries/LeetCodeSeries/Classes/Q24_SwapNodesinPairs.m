//
//  Q24_SwapNodesinPairs.m
//  LeetCodeSeries
//
//  Created by liyiping on 2018/12/6.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q24_SwapNodesinPairs.h"
#import "ListNode.h"
#import "List.h"

@interface Q24_SwapNodesinPairs ()

@end

@implementation Q24_SwapNodesinPairs

/**
 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
 
 示例:
 
 给定 1->2->3->4, 你应该返回 2->1->4->3.
 
 说明:
 
 你的算法只能使用常数的额外空间。
 你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。
 */
#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    List *list = [[List alloc]init];
    [list appendTolist:10];
    [list appendTolist:20];
    [list appendTolist:30];
    [list appendTolist:40];
    [list appendTolist:50];
    
    ListNode *resListHead = [self swapParis:list.head];
    while (resListHead) {
        NSLog(@"%d", resListHead.value);
        resListHead = resListHead.next;
    }
}

/**
 该题属于基本的链表操作题。
 
 1.设置一个虚拟头结点dummyHead
 2.设置需要交换的两个节点分别为node1、node2，同时设置node2的下一个节点next
 
 在这一轮操作中
 
 1.将node2节点的next设置为node1节点
 2.将node1节点的next设置为next节点
 3.将dummyHead节点的next设置为node2
 4.结束本轮操作
 
 接下来的每轮操作都按照上述进行。
 */
- (ListNode *)swapParis:(ListNode *)head {
    
    ListNode *dummyHead = [[ListNode alloc]initWithValue:0];
    dummyHead.next = head;
    
    ListNode *node = dummyHead;
    while (node.next && node.next.next) {
        ListNode *node1 = node.next;
        ListNode *node2 = node1.next;
        ListNode *next = node2.next;
        node2.next = node1;
        node1.next = next;
        node.next = node2;
        node = node1;
    }
    ListNode *retHead = dummyHead.next;
    
    return retHead;
}



@end
