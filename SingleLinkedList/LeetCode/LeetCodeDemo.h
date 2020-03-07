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



///*
///给定一个整数数组 nums 和一个目标值
///target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标
///你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。

/// 两数之和 https://leetcode-cn.com/problems/two-sum/

- (NSMutableArray *)getSum:(NSArray *)array target:(int)target;

///*
///https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
///给定一个链表，删除链表的倒数第 n 个节点，并且返回链表的头结点




@end
