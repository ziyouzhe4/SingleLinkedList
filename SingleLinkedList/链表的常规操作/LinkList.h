//
//  LinkList.h
//  手写链表
//
//  Created by majianjie on 2018/5/6.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkNode.h"

@interface LinkList : NSObject



/**
 在头部插入一个结点

 @param node 要插入的结点
 */
- (void)insertNodeAtHead:(LinkNode *)node;

/**
 插入结点

 @param node 结点
 */
- (void)insertNode:(LinkNode *)node;
/**
 移除结点

 @param node 要移除的结点
 */
- (void)removeNode:(LinkNode *)node;

/**
 求链表的长度

 @return 返回链表长度
 */
- (NSInteger)listLength;

/**
 链表反转
 */
- (void)reverse;
/**
 移除所有的结点
 */
- (void)removeAllNode;

/**
 判断链表是否有环

 @param headerNode 链表的头结点
 @return 是否是有环的 1 : 有环   0 : 没环
 */
- (int)isCircleExist:(LinkNode *)headerNode;

/**
 返回链表的头结点

 @return 要返回头结点
 */
- (LinkNode *)headNode;

/**
 返回链表的尾结点

 @return 要返回的尾结点
 */
- (LinkNode *)lastNode;

/**
 返回一个结点前面的结点

 @param node 当前结点
 @return 当前结点前面的结点
 */
- (LinkNode *)nodeBeforeNode:(LinkNode *)node;


/**
 求链表中倒数第k个结点
 思路 : 第一个指针先走 k-1步,然后两个指针一起走,当第一个结点到达尾结点时候 第二个正好走到倒数第 k 结点位置

 @param headNode 链表头结点
 @param k k 值
 @return 返回所找的结点
 */
- (LinkNode *)findkThNode:(LinkNode *)headNode k:(int)k;



/**
 判断两个链表是否相交

 @param list1head 第一个链表
 @param list2head 第二个链表
 @return 返回交点
 */
- (LinkNode *) isCross:(LinkNode *)list1head list2:(LinkNode *)list2head;

/**
 合并两个有序的链表
 1,3,5,7,9
 0,2,4,6,8

 @param pHead1 头结点
 @param pHead2 头结点
 @return 新的链表的头结点
 */
- (LinkNode *)mergeSortedList:(LinkNode *)pHead1 otherNode:(LinkNode *)pHead2;



@end
