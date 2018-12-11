//
//  Q203_RemoveLinkedListElements.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/12/11.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "Q203_RemoveLinkedListElements.h"
#import "List.h"
#import "ListNode.h"

@interface Q203_RemoveLinkedListElements ()

@end

@implementation Q203_RemoveLinkedListElements


- (void)viewDidLoad {
    [super viewDidLoad];
    List *list = [[List alloc]init];
    [list appendTolist:10];
    [list appendTolist:20];
    [list appendTolist:30];
    [list appendTolist:40];
    [list appendTolist:30];
    [list appendTolist:50];
    
    
    NSLog(@"···················移除后链表·····················");
    ListNode *deleteListHead = [list removeElement:list.head element:30];
    while (deleteListHead) {
        NSLog(@"%d", deleteListHead.value);
        deleteListHead = deleteListHead.next;
    }
    /**
    定义一个虚拟头节点dummyHead，遍历查看原链表，遇到与给定值相同的元素，将该元素的前后两个节点连接起来，然后删除该元素即可。
    */
}

@end
