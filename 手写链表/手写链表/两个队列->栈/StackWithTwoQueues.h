//
//  TwoQueue.h
//  手写链表
//
//  Created by majianjie on 2018/5/9.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackWithTwoQueues : NSObject


/**
 添加元素

 @param obj 被添加的元素
 */
- (void)push:(id)obj;

/**
 弹出操作

 @return 返回弹出的元素
 */
- (id)pop;

@end
