//
//  Stack.h
//  LeetCodeSeries
//
//  Created by 情风 on 2019/1/3.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject


/**
 是否栈为空

 @return 是否为空
 */
- (BOOL)isEmpty;

/**
 进栈

 @param value 进栈元素
 */
- (void)push:(id)value;


/**
 出栈

 @return 出栈的元素
 */
- (id)pop;

@end
NS_ASSUME_NONNULL_END
