//
//  BTreeNode.h
//  手写链表
//
//  Created by majianjie on 2018/5/15.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTreeNode : NSObject
{
    @public
    int data;
}

@property (nonatomic,strong)BTreeNode *lchild;

@property (nonatomic,strong)BTreeNode *rchild;

/**
 前序遍历

 @param node node
 */
+ (void)preorder:(BTreeNode *)node;
/**
 中序遍历

 @param node node
 */
+ (void)midorder:(BTreeNode *)node;
/**
 后序遍历

 @param node node
 */
+ (void)nextorder:(BTreeNode *)node;

@end
