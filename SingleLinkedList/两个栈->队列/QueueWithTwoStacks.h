//
//  CustomStack.h
//  自定义栈结构
//
//  Created by majianjie on 2018/4/29.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface QueueWithTwoStacks : NSObject


/**
 插入操作

 @param value 值
 */
- (void)appendTail:(NSNumber *)value;


/**
 删除操作
 */
- (NSNumber *)deleteHead;


@end
