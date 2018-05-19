//
//  LeetCodeDemo.m
//  手写链表
//
//  Created by majianjie on 2018/5/17.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "LeetCodeDemo.h"

@implementation LeetCodeDemo

/**
 求一个字符串中出现最多字符的个数
 */
- (void)mostTimesOfCharacter{

    NSMutableDictionary *dic = [NSMutableDictionary dictionary];

    NSString *str = @"a,a,c,d,h,a,h,h,h,h";

    NSArray *array = [str componentsSeparatedByString:@","];

    for (int i = 0; i < array.count; i++) {

        NSString *key = [dic valueForKey:array[i]];

        if (![key isEqualToString:@""] && key != nil) {
            NSString *temokey = [dic valueForKey:array[i]];
            int num = [temokey intValue];
            NSString *strkey = [NSString stringWithFormat:@"%d",num+1];
            [dic setValue:strkey forKey:array[i]];
        }else{
            NSString *num = [NSString stringWithFormat:@"%d",1];
            [dic setValue:num forKey:array[i]];
        }

    }

    NSString *temo = array[0];
    int maxValue = [[dic valueForKey:temo] intValue];
    NSString *strtemp = @"";
    for (int j = 0; j < array.count; j++) {
        int num = [[dic valueForKey:array[j]] intValue];
        if (maxValue < num) {
            maxValue = num;
            strtemp = array[j];
        }
    }

    NSLog(@"出现次数最多的字符是  %@   次数是 : %d",strtemp,maxValue);

}

/**
 最大子序列和
 */

- (void)maxSubArray:(NSArray *)array{

    int maxSum = [array[0] intValue];

    int thisSum = [array[0] intValue];

    int i;

    for (i = 1; i < array.count; i++) {
        if (thisSum < 0) {
            thisSum = [array[i] intValue];
        }else{
            thisSum += [array[i] intValue];
        }

        if (thisSum > maxSum) {
            maxSum = thisSum;
        }

    }

    NSLog(@"最大子序列和是 : %d",maxSum);

}


// C 语言实现

//int maxSubArray(int* nums, int numsSize) {
//    int maxSum=nums[0],thisSum=nums[0];
//    int i;
//    for(i=1; i<numsSize; ++i){
//        if(thisSum<0)
//            thisSum=nums[i];
//        else
//            thisSum+=nums[i];
//        if(thisSum>maxSum)
//            maxSum = thisSum;
//    }
//    //if(maxSum<0)
//    //   maxSum = 0;
//    return maxSum;
//}

@end
