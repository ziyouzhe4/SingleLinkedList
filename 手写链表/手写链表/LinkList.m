//
//  LinkList.m
//  手写链表
//
//  Created by majianjie on 2018/5/6.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "LinkList.h"

@interface LinkList()

/**
 存放的头结点
 */
@property (nonatomic,strong)LinkNode *headNode;

/**
 内部的map 存放所有的结点
 */
@property (nonatomic,strong)NSMutableDictionary *innerMap;

@end


@implementation LinkList

- (NSMutableDictionary *)innerMap{

    if (!_innerMap) {
        _innerMap  = [NSMutableDictionary dictionary];
    }
    return _innerMap;
}

/**
插入结点

@param node 结点
*/
- (void)insertNode:(LinkNode *)node{

    if (!node || node.key.length == 0) {
        return;
    }

    self.innerMap[node.key] = node;
    if (!_headNode) {
        _headNode = node;
        return;
    }

    LinkNode *last = [self lastNode];
    last->next = node;

}

/**
 在头部插入一个结点

 @param node 要插入的结点
 */
- (void)insertNodeAtHead:(LinkNode *)node{

    if (!node || node.key.length == 0) {
        return;
    }

    self.innerMap[node.key] = node;
    if (_headNode) {
        node->next = _headNode;
        _headNode = node;
    }else{
        _headNode = node;
    }

}

/**
 移除结点

 @param node 要移除的结点
 */
- (void)removeNode:(LinkNode *)node{

    if (!node || node.key.length == 0) {
        return;
    }

    [_innerMap removeObjectForKey:node.key];

    if (node->next) {
        node.key = node->next.key;
        node.value = node->next.value;
        node->next = node->next->next;
    } else {
        LinkNode *aheadNode = [self nodeBeforeNode:node];
        aheadNode->next = nil;
    }

}

/**
 返回一个结点前面的结点

 @param node 当前结点
 @return 当前结点前面的结点
 */
- (LinkNode *)nodeBeforeNode:(LinkNode *)node
{
    LinkNode *targetNode = nil;
    LinkNode *tmpNode = _headNode;
    while (tmpNode) {
        if ([tmpNode->next isEqual:node]) {
            targetNode = tmpNode;
            break;
        } else {
            tmpNode = tmpNode->next;
        }
    }
    return targetNode;
}

/**
 求链表的长度

 @return 返回链表长度
 */
- (NSInteger)listLength{

    NSInteger length = 0;
    LinkNode *tempNode = _headNode;
    while (tempNode->next) {
        length++;
        tempNode = tempNode->next;
    }

    return length;
}

/**
 链表反转
 */
- (void)reverse{

    LinkNode *pre = nil;
    LinkNode *current = _headNode;
    LinkNode *next = nil;

    while (current) {

        next = current->next;
        current->next = pre;
        pre = current;
        current = next;

    }

    _headNode = pre;

}
/**
 移除所有的结点
 */
- (void)removeAllNode{

    LinkNode *p = _headNode;
    if (p == NULL){  //链表为空无需处理
        return;
    }

    while(p->next != NULL)   //删除链表非首结点元素
    {
        LinkNode *q = p->next;
        p->next = p->next->next;
        q = NULL;
    }

    //删除链表首结点元素
    p = NULL;
    _headNode = NULL;

    [self.innerMap removeAllObjects];

}

/**
 判断链表是否有环

 @param headerNode 链表的头结点
 */
- (int)isCircleExist:(LinkNode *)headerNode{

    if (!headerNode || headerNode.key.length == 0) {
        return 0;
    }

    LinkNode *slow = headerNode;
    LinkNode *fast = headerNode;

    while (fast != NULL && fast->next != NULL) {
        fast = fast->next->next;
        slow = slow->next;
        if (slow == fast) {
            return 1;
        }
    }

    return 0;

}

/**
 返回链表的头结点

 @return 要返回头结点
 */
- (LinkNode *)headNode{

    return _headNode;

}

/**
 返回链表的尾结点

 @return 要返回的尾结点
 */
- (LinkNode *)lastNode{

    LinkNode *last = _headNode;
    while (last->next) {
        last=last->next;
    }
    return last;
}


/**
 求链表中倒数第k个结点
 思路 : 第一个指针先走 k-1步,然后两个指针一起走,当第一个结点到达尾结点时候 第二个正好走到倒数第 k 结点位置
 @param headNode 头结点
 @param k k 值
 @return 返回所找的结点
 */
- (LinkNode *)findkThNode:(LinkNode *)headNode k:(int)k{

    // 判断头结点是否为空
    if (headNode == NULL) {
        return nil;
    }
    // 判断总长度是否 大于 k
    int count=-1;
    LinkNode *tempNode = headNode;
    while(tempNode)
    {
        tempNode = tempNode->next;
        count++;
    }
    // 链表总长度小于 k  返回 nil
    if(count < k){
        return nil;
    }


    LinkNode *pHead = headNode;
    LinkNode *pBehind = headNode;

    // 先让第一个 指针走 k-1 步
    for(int i = 0 ; i < k - 1 ; i++ ){
        pHead = pHead->next;
    }

    while (pHead->next != NULL) {
        pHead = pHead->next;
        pBehind = pBehind->next;
    }

    return pBehind;

}

//相交链表的特征可知，每个链表都遍历到最后一个节点，如果最后一个节点相同，则链表相交，否则不相交。一个链表的长度len1，另一个链表的长度len2，那么两个链表只差为|len1-len2|，两个链表的中较长链表在遍历|len1-len2|与较短链表同时遍历,就能找到交点
- (LinkNode *) isCross:(LinkNode *)list1head list2:(LinkNode *)list2head{

    LinkNode *tp1 = list1head;
    LinkNode *tp2 = list2head;

    // 两个链表的长度
    int length1  = 0;
    int length2  = 0;

    if(list1head == NULL || list2head == NULL){
        return  nil;
    }

    while (tp1->next) {
        length1++;
        tp1 = tp1->next;
    }

    while (tp2->next) {
        length2++;
        tp2 = tp2->next;
    }

    // 如果两个链表最后一个结点不一样, 那么说明无交点
    if (tp1 != tp2) {
        return nil;
    }else{

        int i ;

        tp1 = list1head->next;
        tp2 = list2head->next;

        if (length1 > length2) {

            for(i=0; i<length1-length2; i++){
                tp1 = tp1->next;
            }
            while(tp1->next!=NULL){
                if(tp1==tp2){
                    return tp1;
                }else{
                    tp1 = tp1->next;
                    tp2 = tp2->next;
                }
            }
        }else{

            for(i=0; i<length2-length1; i++){
                tp2 = tp2->next;
            }
            while(tp1->next!=NULL){
                if(tp1==tp2){
                    return tp1;
                }else{
                    tp1 = tp1->next;
                    tp2 = tp2->next;
                }
            }
        }

    }

    return nil;

}


- (LinkNode *)mergeSortedList:(LinkNode *)pHead1 otherNode:(LinkNode *)pHead2{

    if (pHead1 == NULL) {
        return  pHead2;
    }

    if (pHead2 == NULL) {
        return pHead1;
    }

    LinkNode *pMergeNodeHead = NULL;

    if ([pHead1.value intValue] > [pHead2.value intValue]) {
        pMergeNodeHead = pHead2;
        pMergeNodeHead->next = [self mergeSortedList:pHead1 otherNode:pHead2->next];
    }else{
        pMergeNodeHead = pHead1;
        pMergeNodeHead->next = [self mergeSortedList:pHead1->next otherNode:pHead2];
    }

    return pMergeNodeHead;

}


@end
