//
//  LeetCodeDemo.h
//  手写链表
//
//  Created by majianjie on 2018/5/17.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeetCodeDemo : NSObject


/**
 求一个字符串中出现最多字符的个数 
 */
- (void)mostTimesOfCharacter;


/**
 最大子序列和
 */
- (void)maxSubArray:(NSMutableArray *)array;


/**
 输入一个数组，把所有奇数放到所有偶数前面

 @param array 数组
 */
- (void)makeOddnumberToFontOfEvennumber:(NSArray *)array;


/**
 输入N，输出斐波那契数列中的第N项

 @param num 顺序后推，避免递归把所有重复计算
 */
- (int)fibonacci:(int)num;


- (void)findSameStrinArray;


/**
 回文判断

 @param str 要判断的字符串
 @param size 长度
 @return 是否是回文
 */
- (BOOL)IsPalindereme:(NSString *)str size:(int)size;


- (void)strConverToInt:(char *)str;


- (void)findAppearOnceminIndex:(NSArray *)array;

@end
