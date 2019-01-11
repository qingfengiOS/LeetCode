//
//  Q102_BinaryTreeLevelOrderTraversal.m
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/11.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import "Q102_BinaryTreeLevelOrderTraversal.h"
#import "TreeNode.h"
#import "Queue.h"

@interface Q102_BinaryTreeLevelOrderTraversal ()

@end

/**
 二叉树的层次遍历
 */
@implementation Q102_BinaryTreeLevelOrderTraversal

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
    
    NSLog(@"%@", [self accessTreeByLevel:rootNode]);
}


/**
 二叉树的层级遍历

 @param root 根节点
 @return 二维数组（里面每个元素是数组）
 */
- (NSMutableArray *)accessTreeByLevel:(TreeNode *)root {
    if (!root) {
        return @[].mutableCopy;
    }
    
    NSMutableArray *resultArray = @[].mutableCopy;
    
    Queue *queue = [[Queue alloc]init];//初始化队列
    [queue inQueue: root];
    
    while (!queue.isEmpty) {//队列非空
        NSUInteger size = queue.sizeOfQueue;
        NSMutableArray *levelArray = @[].mutableCopy;
        
        for (NSInteger i = 0; i < size; i++) {
            TreeNode *node = [queue deQueue];
            
            [levelArray addObject:node.value];
            if (node.left) {
                [queue inQueue:node.left];
            }
            
            if (node.right) {
                [queue inQueue:node.right];
            }
        }
        
        [resultArray addObject:levelArray];
    }
    
    return resultArray;
}

- (void)testQueue {
    Queue *queue = [[Queue alloc]init];
    [queue inQueue:@1];
    [queue inQueue:@2];
    [queue inQueue:@3];
    NSLog(@"%@",[queue deQueue]);
    NSLog(@"%@",[queue deQueue]);
}

@end
