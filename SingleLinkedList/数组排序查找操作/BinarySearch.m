//
//  BinarySearch.m
//  手写链表
//
//  Created by majianjie on 2018/5/10.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "BinarySearch.h"

@interface BinarySearch()

@property (nonatomic,strong)NSMutableArray *searchArray;

@end


@implementation BinarySearch

- (int)searchNum:(int)targetValaue{

    int low = 0;
    int heigh = (int)self.searchArray.count - 1;
    int mid = 0;

    int flag = -1;

    while (low <= heigh) {

        mid = (low + heigh) / 2;

        if (targetValaue == [self.searchArray[mid] intValue]) {
            flag = mid;
            return flag;
        }else{
            if (targetValaue < [self.searchArray[mid] intValue]) {
                heigh = mid - 1;
            }else{
                low = mid + 1;
            }

        }
    }

    return flag;

}

- (instancetype)init{

    if (self == [super init]) {

        for (int i = 0; i < 7; i++) {
            NSNumber *num =  [NSNumber numberWithInt:i];
            [self.searchArray addObject:num];
        }
    }

    NSLog(@"数组  %@",self.searchArray);

    return self;
}


- (NSMutableArray *)searchArray{

    if (!_searchArray) {
        _searchArray = [NSMutableArray array];
    }
    return _searchArray;
}

@end
