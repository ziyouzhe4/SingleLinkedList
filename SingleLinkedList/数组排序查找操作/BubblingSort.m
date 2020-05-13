//
//  BubblingSort.m
//  手写链表
//
//  Created by majianjie on 2018/5/10.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "BubblingSort.h"

@interface BubblingSort()


@end


@implementation BubblingSort


- (NSMutableArray *)sort{


    for(int i = 0; i < self.sortArray.count;i++){

        for (int j = 0; j < self.sortArray.count - 1 - i; j++) {

            if ([self.sortArray[j] intValue] > [self.sortArray[j+1] intValue]) {

                NSNumber *temp = self.sortArray[j];
                self.sortArray[j] = self.sortArray[j+1];
                self.sortArray[j+1] = temp;

            }
        }

    }

    return self.sortArray;

}


@end
