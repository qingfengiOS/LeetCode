//
//  TreeNode.h
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/7.
//  Copyright © 2019年 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

@property (nonatomic, assign) id value;
@property (nonatomic, strong) TreeNode *left;
@property (nonatomic, strong) TreeNode *right;

- (instancetype)initWithValue:(id)value;
@end
