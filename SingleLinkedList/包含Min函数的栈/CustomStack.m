//
//  CustomStack.m
//  自定义栈结构
//
//  Created by majianjie on 2018/4/29.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "CustomStack.h"
#import <objc/runtime.h>
@interface CustomStack()

// 存储栈数据
@property (nonatomic, strong) NSMutableArray *m_data;

// 存储盛放最小值的数据
@property (nonatomic, strong) NSMutableArray *m_min;


@end



@implementation CustomStack


- (BOOL)isEmpty {
    return !self.m_data.count;
}

- (NSInteger)stackLength {
    return self.m_data.count;
}

- (NSMutableArray *)m_min {
    if (!_m_min) {
        _m_min = [NSMutableArray array];
    }
    return _m_min;
}

- (NSMutableArray *)m_data {
    if (!_m_data) {
        _m_data = [NSMutableArray array];
    }
    return _m_data;
}

-(NSNumber *)peek {
    if ([self isEmpty]) {
        return @-1;
    } else {
        return self.m_min.lastObject;
    }
}


/**
 以下三个方法实现 : 包含min函数的栈结构

 @param value push进来的值
 */
- (void)stackWithMinPush:(NSNumber *)value{
/// m_data  5  8  19  7
/// m_min   5  5  5  5
    [self.m_data addObject:value];

    if (self.m_min.count == 0 || [[self peek] intValue] > [value intValue]) {
        [self.m_min addObject:value];
    }else {
        [self.m_min addObject:[self peek]];
    }
    
}

/**
 pop操作
 */
- (void)stackWithMinPop{
    [self.m_data removeLastObject];
    [self.m_min removeLastObject];
}

/**
 返回最小值

 @return 最小值
 */
- (NSNumber *)stackWithMinMin{

    return [self peek];

}

/**
 移除栈顶元素
 */
-(NSNumber *)top{
    return self.m_data.lastObject;
}



@end
