//
//  Queue.h
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/11.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject


/**
 入队

 @param value 元素值
 */
- (void)inQueue:(id)value;


/**
 出队

 @return 返回的数据元素
 */
- (id)deQueue;


/**
 队列是否为空

 @return YES为空 NO非空
 */
- (BOOL)isEmpty;


/**
 队列的数据数量

 @return 数据数量
 */
- (NSUInteger)sizeOfQueue;

@end

NS_ASSUME_NONNULL_END
