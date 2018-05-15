//
//  QuickSort.m
//  手写链表
//
//  Created by majianjie on 2018/5/10.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "QuickSort.h"

@interface QuickSort()

@end

@implementation QuickSort


- (NSMutableArray *)sort{

    [self quicksortLeft:0 right:(int)(self.sortArray.count - 1)];

    return self.sortArray;

}

- (void)quicksortLeft:(int)left right:(int)right{

    if (left >= right) {
        return;
    }

    // 每一趟划分，使左边的比基准小，右边的比基准大，并返回新的基准的位置
    int baseIndex = [self quickPartitionLeft:left right:right];
    // 判断左边是否排完，没排完递归排左边部分
    if (baseIndex - 1 > left ){
        [self quicksortLeft:left right:baseIndex - 1];
    }
    // 判断右边是否排完，没排完递归排右边部分
    if (baseIndex + 1 < right) {
        [self quicksortLeft:baseIndex + 1 right:right];
    }

}

- (int)quickPartitionLeft:(int)lef right:(int)righ{

    int right = righ;
    int left = lef;

    int base = [self.sortArray[left] intValue];

    while (left < right) {

        // 先从左边找到比 base小的
        while (left < right && [self.sortArray[right] intValue] >= base) {
            right = right - 1;
        }

        [self swap:left j:right];

        // 从右边找到比 base大的
        while (left < right && [self.sortArray[left] intValue] <= base) {
            left = left + 1;
        }

        // 交换 左边比base大的数和右边比base小的数
        [self swap:left j:right];


    }

    return right;
}

- (void)swap:(int)i j:(int)j{

    NSNumber *temp = self.sortArray[i];
    self.sortArray[i] = self.sortArray[j];
    self.sortArray[j] = temp;

}


@end
