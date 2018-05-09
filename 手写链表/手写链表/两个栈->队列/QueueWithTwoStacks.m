//
//  CustomStack.m
//  自定义栈结构
//
//  Created by majianjie on 2018/4/29.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "QueueWithTwoStacks.h"

@interface QueueWithTwoStacks()

// 存储栈数据
@property (nonatomic, strong) NSMutableArray *stack1;

// 存储盛放最小值的数据
@property (nonatomic, strong) NSMutableArray *stack2;


@end



@implementation QueueWithTwoStacks

- (NSMutableArray *)stack1 {
    if (!_stack1) {
        _stack1 = [NSMutableArray array];
    }
    return _stack1;
}

- (NSMutableArray *)stack2 {
    if (!_stack2) {
        _stack2 = [NSMutableArray array];
    }
    return _stack2;
}

/**
 插入操作

 @param value 值
 */
- (void)appendTail:(NSNumber *)value{

    [self.stack1 addObject:value];

}


/**
 删除操作
 */
- (NSNumber *)deleteHead{

    if (self.stack2.count <= 0) {
        while (self.stack1.count > 0) {

            NSNumber *topData = self.stack1.lastObject;
            [self.stack1 removeLastObject];
            [self.stack2 addObject:topData];

        }
    }

    if (self.stack2.count == 0) {
        NSLog(@"队列为空");
        return @-1;
    }

    NSNumber *topData = self.stack2.lastObject;
    [self.stack2 removeLastObject];

    return topData;
}




@end
