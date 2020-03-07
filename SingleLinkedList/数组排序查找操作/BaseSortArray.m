//
//  BaseSortArray.m
//  手写链表
//
//  Created by majianjie on 2018/5/10.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "BaseSortArray.h"


@implementation BaseSortArray


- (instancetype)init{

    if (self == [super init]) {

        for (int i = 0; i < 7; i++) {
            NSNumber *num =  [NSNumber numberWithInt:arc4random_uniform(10) + 1];
            [self.sortArray addObject:num];

        }

    }

    NSLog(@"排序前: %@",self.sortArray);

    return self;
}


- (NSMutableArray *)sortArray{

    if (!_sortArray) {
        _sortArray = [NSMutableArray array];
    }
    return _sortArray;
}


@end
