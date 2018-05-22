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

/**
 输入一个数组，把所有奇数放到所有偶数前面

 @param array 数组
 */
- (void)makeOddnumberToFontOfEvennumber:(NSMutableArray *)array{

    if(array.count == 0){return;}

    int start = 0;
    int end = (int)array.count - 1;
    while (start < end) {
        // 奇数，直至找到偶数
        while (start < end && ! [self isSuit:array[start]]) {
            start++;
        }
        // 偶数，直至找到奇数
        while (start < end && [self isSuit:array[end]]) {
            end--;
        }

        // 一奇一偶，交换
        if (start < end) {
            NSNumber *temp = array[start];
            array[start] = array[end];
            array[end] = temp;
        }

    }

    NSLog(@"奇数在偶数前面  : %@",array);

}

- (BOOL)isSuit:(NSNumber *)num{
    return [num intValue]  % 2 == 0;
}


/**
 输入N，输出斐波那契数列中的第N项

 @param num 顺序后推，避免递归把所有重复计算
 */
- (int)fibonacci:(int)num{

    NSArray *array = [NSArray arrayWithObjects:@"0",@"1", nil];

    if (num < 2) {
        return [array[num] intValue];
    }

    int num2 = [array[0] intValue];
    int num1 = [array[1] intValue];
    int tempNum = 0;

    for (int i = 2; i <= num; i++) {

        tempNum = num1 + num2;
        num2 = num1;
        num1 = tempNum;

    }

    // 在这里调用递归的做法
    NSLog(@"递归的结果是 %d",[self fibonacci2:num]);


    return tempNum;

}

- (int)fibonacci2:(int)num{

    if (num == 0) {   return 0; }
    if (num == 1) {   return 1; }
    if (num == 2) {   return 1; }

    return [self fibonacci2:num - 1] + [self fibonacci2:num - 2];

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
