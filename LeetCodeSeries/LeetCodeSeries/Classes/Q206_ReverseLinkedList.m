//
//  Q206_ReverseLinkedList.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/3.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q206_ReverseLinkedList.h"
#import "ListNode.h"
#import "List.h"
@interface Q206_ReverseLinkedList ()

@end

@implementation Q206_ReverseLinkedList
/**
 反转一个单链表。
 
 示例:
 
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 */
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

