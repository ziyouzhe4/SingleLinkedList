//
//  MergeSort.m
//  手写链表
//
//  Created by majianjie on 2018/5/10.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "MergeSort.h"

@interface MergeSort()

@property (nonatomic,strong)NSMutableArray *sortArray1;
@property (nonatomic,strong)NSMutableArray *sortArray2;


@end

@implementation MergeSort

- (instancetype)init{

    if (self == [super init]) {

        for (int i = 0; i < 7; i++) {
            if (i % 2 == 0) {
                NSNumber *num = [NSNumber numberWithInt:i];
                [self.sortArray1 addObject:num];
            }else{
                NSNumber *num = [NSNumber numberWithInt:i];
                [self.sortArray2 addObject:num];
            }
        }

    }

    NSLog(@"排序前sortArray1: %@",self.sortArray1);
    NSLog(@"排序前sortArray2: %@",self.sortArray2);


    return self;
}


- (NSMutableArray *)sort{

    NSMutableArray *array = [self mergeArrayFirstList:self.sortArray1 secondList:self.sortArray2];

    return array;

}

#pragma mark - 归并升序排序

- (NSMutableArray *)mergeArrayFirstList:(NSArray *)array1 secondList:(NSArray *)array2 {

    NSMutableArray *resultArray = [NSMutableArray array];

    NSInteger firstIndex = 0, secondIndex = 0;

    while (firstIndex < array1.count && secondIndex < array2.count) {
        if ([array1[firstIndex] intValue] < [array2[secondIndex] intValue]) {
            [resultArray addObject:array1[firstIndex]];
            firstIndex++;
        } else {
            [resultArray addObject:array2[secondIndex]];
            secondIndex++;
        }
    }
    while (firstIndex < array1.count) {
        [resultArray addObject:array1[firstIndex]];
        firstIndex++;
    }
    while (secondIndex < array2.count) {
        [resultArray addObject:array2[secondIndex]];
        secondIndex++;
    }
    return resultArray.mutableCopy;
}


- (NSMutableArray *)sortArray1{

    if (!_sortArray1) {
        _sortArray1 = [NSMutableArray array];
    }
    return _sortArray1;
}

- (NSMutableArray *)sortArray2{

    if (!_sortArray2) {
        _sortArray2 = [NSMutableArray array];
    }
    return _sortArray2;
}

@end
