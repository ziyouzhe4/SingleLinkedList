//
//  TwoQueue.m
//  手写链表
//
//  Created by majianjie on 2018/5/9.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "StackWithTwoQueues.h"

@interface StackWithTwoQueues()

@property (nonatomic,strong)NSMutableArray *queue1;

@property (nonatomic,strong)NSMutableArray *queue2;


@end

@implementation StackWithTwoQueues



/**
 添加元素

 @param obj 被添加的元素
 */
- (void)push:(id)obj{

    if (obj == nil) {
        return;
    }

    if (self.queue1.count == 0) {
        [self.queue2 addObject:obj];
    }

    if (self.queue2.count == 0) {
        [self.queue1 addObject:obj];
    }

    NSLog(@"压入 : %@",obj);

}

/**
 弹出操作

 @return 返回弹出的元素
 */
- (id)pop{

    // 两个栈都为空时候 , 没有元素可弹出
    if(self.queue1.count == 0 && self.queue2.count == 0){
        NSLog(@"stack is empty");
        return nil;
    }

    if(self.queue1.count == 0){
        while(self.queue2.count > 1){
            [self.queue1 addObject:self.queue2.firstObject];
            [self.queue2 removeObject:self.queue2.firstObject];
        }
        id obj = self.queue2.firstObject;
        [self.queue2 removeObject:obj];
        NSLog(@"删除 : %@",obj);
        return obj;
    }
    if(self.queue2.count == 0){
        while(self.queue1.count > 1 ){
            [self.queue2 addObject:self.queue1.firstObject];
            [self.queue1 removeObject:self.queue1.firstObject];

        }
        id obj = self.queue1.firstObject;
        [self.queue1 removeObject:obj];
        NSLog(@"删除 : %@",obj);
        return obj;
    }

    NSLog(@"删除 : %@",nil);
    return nil;

}

- (NSMutableArray *)queue1{

    if (!_queue1) {
        _queue1 = [NSMutableArray array];
    }

    return _queue1;
}


- (NSMutableArray *)queue2{

    if (!_queue2) {
        _queue2 = [NSMutableArray array];
    }

    return _queue2;
}


@end
