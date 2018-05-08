//
//  CustomStack.h
//  自定义栈结构
//
//  Created by majianjie on 2018/4/29.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^StackBlock)(id obj);


@interface CustomStack : NSObject


// 是否为空
- (BOOL)isEmpty;

// 栈的长度
- (NSInteger)stackLength;

/**
 以下三个方法实现 : 包含min函数的栈结构

 @param value push进来的值
 */
- (void)stackWithMinPush:(NSNumber *)value;

/**
 pop操作

 */
- (void)stackWithMinPop;

/**
 返回栈顶元素
 */
-(NSNumber *)topObj;


/**
 返回最小值

 @return 最小值
 */
- (NSNumber *)stackWithMinMin;



@end
