//
//  Q144_BinaryTreePreorderTraversal.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/24.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "Q144_BinaryTreePreorderTraversal.h"
#import "TreeNode.h"
#import "Stack.h"

@interface Q144_BinaryTreePreorderTraversal ()

@end

@implementation Q144_BinaryTreePreorderTraversal

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
    
    NSLog(@"%@", [self accessTreeByPreorder:rootNode]);
}

// 前序：根->左->右
/**
 1、入栈根节点
 栈非空时 循环执行以下步骤：
 2、出栈栈顶节点，出栈节点的值加入结果数组
 3、栈的右节点非空，入栈右节点
 4、栈的左节点非空，入栈左节点
 */
- (NSMutableArray *)accessTreeByPreorder:(TreeNode *)root {
    NSMutableArray *resultArray = @[].mutableCopy;
    if (!root) {
        return resultArray;
    }
    
    Stack *stack = [[Stack alloc]init];

    [stack push:root];
    
    while (!stack.isEmpty) {
    
        TreeNode *tempNode = [stack pop];
        [resultArray addObject:tempNode.value];
        
        if (tempNode.right) {
            [stack push:tempNode.right];
        }
        
        if (tempNode.left) {
            [stack push:tempNode.left];
        }
    }
    
    return resultArray;
}

@end
