//
//  Q94_BinaryTreeInorderTraversal.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/7.
//  Copyright © 2019年 qingfengiOS. All rights reserved.
//

#import "Q94_BinaryTreeInorderTraversal.h"
#import "Stack.h"
#import "TreeNode.h"

@interface Q94_BinaryTreeInorderTraversal ()

@end

@implementation Q94_BinaryTreeInorderTraversal

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    TreeNode *rootNode = [[TreeNode alloc]initWithValue:@1];
    
    TreeNode *leftNode = [[TreeNode alloc]initWithValue:@2];
    leftNode.left = [[TreeNode alloc]initWithValue:@4];
    
    
    TreeNode *rightNode = [[TreeNode alloc]initWithValue:@3];
    rightNode.left = [[TreeNode alloc]initWithValue:@5];
    rightNode.right = [[TreeNode alloc]initWithValue:@6];
    
    rootNode.left = leftNode;
    rootNode.right = rightNode;
    
    NSMutableArray *resArray = [self accessTree:rootNode];
    NSLog(@"%@",resArray);
    
}

// 中序：左->根->右
/**
 从根节点开始，先将根节点压入栈
 然后再将其所有左子结点压入栈，取出栈顶节点，保存节点值
 再将当前指针移到其右子节点上，若存在右子节点，则在下次循环时又可将其所有左子结点压入栈中
 */
- (NSMutableArray *)accessTree:(TreeNode *)root {
    NSMutableArray *resultArray = @[].mutableCopy;
    
    if (!root) {
        return resultArray;
    }
    
    Stack *stack = [[Stack alloc]init];
    TreeNode *tempNode = root;
    
    while (tempNode || !stack.isEmpty) {
        while (tempNode) {
            [stack push:tempNode];
            tempNode = tempNode.left;
        }
        tempNode = stack.pop;
        [resultArray addObject:tempNode.value];
        tempNode = tempNode.right;
        
    }
    return resultArray;
}

@end
