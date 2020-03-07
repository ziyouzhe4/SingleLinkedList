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



/**
 找出一个数组中字符串相同字符大于 2的
 */
- (void)findSameStrinArray{

    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"a",@"v",@"d",@"cc",@"sad",@"majianjie", nil];

    for (int i = 0; i < 20; i++) {
        [array addObject:[NSString stringWithFormat:@"zq%u",arc4random()%15]];
    }

    NSLog(@"=============查找之前==============");
    NSLog(@"%@",array);
    NSLog(@"=============查找之后==============");

    NSMutableArray *tempArray = [NSMutableArray array];

    while (array.count > 0) {
        NSString *tempstr = array[0];
        [array removeObjectAtIndex:0];
        if ([array containsObject:tempstr]) {
            [array removeObject:tempArray];
            [tempArray addObject:tempstr];
        }
    }

    NSLog(@"%@",tempArray);


//    去重
    
//    NSArray *dataArray = @[@"2014-04-01",@"2014-04-02",@"2014-04-03",
//                           @"2014-04-01",@"2014-04-02",@"2014-04-03",
//                           @"2014-04-01",@"2014-04-03",@"2014-04-03",
//                           @"2014-04-01",@"2014-04-02",@"2014-04-03",
//                           @"2014-04-01",@"2014-04-02",@"2014-04-03",
//                           @"2014-04-01",@"2014-04-02",@"2014-04-03",
//                           @"2014-04-04",@"2014-04-06",@"2014-04-08",
//                           @"2014-04-05",@"2014-04-07",@"2014-04-09",];
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc]initWithCapacity:0];
//    for(NSString *str in dataArray)
//    {
//        [dic setValue:str forKey:str];
//    }
//    NSLog(@"%@",[dic allKeys]);

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


/**
 回文判断

 @param str 要判断的字符串
 @param size 长度
 @return 是否是回文
 */
- (BOOL)IsPalindereme:(NSString *)str size:(int)size{

    int begin = 1;
    int end = size - 1;

    while (begin < size)
    {
        NSString *pre = [str substringToIndex:begin];
        pre = [pre substringWithRange:NSMakeRange(pre.length - 1, 1)];
        NSString *next = [str substringFromIndex:end];
        next = [next substringWithRange:NSMakeRange(0, 1)];
        if (![pre isEqualToString: next])
            return false;
        ++begin;
        --end;
    }
    return true;

}

- (void)strConverToInt:(char *)str{

    strToInt(str);

}

int strToInt(char s[])
{
    int i;
    int n = 0;
    for (i = 0; s[i] >= '0' && s[i] <= '9'; ++i)
    {
        n = 10 * n + (s[i] - '0');
//        NSLog(@"%d",n);
//        NSLog(@"%d",s[i]);
    }
    return n;
}

/*将大写字母转换成小写字母*/
int tolowerChar(int c)
{
    if (c >= 'A' && c <= 'Z')
    {
        return c + 'a' - 'A';
    }
    else
    {
        return c;
    }
}

- (void)findAppearOnceminIndex:(NSArray *)array{


    NSArray *arr = @[@"a",@"b",@"a"];

//    NSInteger len = arr.count;
//    NSMutableArray *ascii = [NSMutableArray array];
//    for (int i = 0; i < 256; i++) {
//        [ascii addObject:@0];
//    }
//
//    for (int i = 0; i < len; ++i) {
//        NSString *c = arr[i];
//        NSInteger intNum = [c characterAtIndex:0];
//        NSString *numStr = ascii[intNum];
//        NSInteger a = [numStr integerValue];
//        NSNumber *num = ascii[a];
//        ascii[intNum] = [num integerValue] + 1;
//    }
//
//
//    for (int i = 0; i < len; ++i) {
//
//        NSString *numStr = arr[i];
//        NSInteger a = [numStr integerValue];
//        NSNumber *num = ascii[a];
//        if ([num integerValue] == 1) {
//            NSLog(@"找到了: %@", arr[i]);
//            break;
//        }
//    }

}




@end
