//
//  BTreeNode.m
//  手写链表
//
//  Created by majianjie on 2018/5/15.
//  Copyright © 2018年 majianjie. All rights reserved.
//

/**
 demo结构
                    a(1)

           b(1)                c(3)

      d(4)      e(5)     f(6)      g(7)

  h(8)

 */




#import "BTreeNode.h"

@implementation BTreeNode

/**
 前序遍历   中左右

 @param node node
 */
+ (void)preorder:(BTreeNode *)node{

    if(node){
        NSLog(@"前序遍历 :  %d",node->data);
        [self preorder:node.lchild];
        [self preorder:node.rchild];
    }

//    if(node)
//    {
//        NSLog(@"前序遍历 : %d ",node->data);
//        if(node.lchild)
//           [self preorder:node.lchild];
//        if(node.rchild)
//            [self preorder:node.rchild];
//    }


}


/**
 中序遍历    左中右

 @param node node
 */
+ (void)midorder:(BTreeNode *)node{

    if(node){
        [self midorder:node.lchild];
        NSLog(@"中序遍历 :  %d",node->data);
        [self midorder:node.rchild];
    }

//    if(node)
//    {
//
//        if(node.lchild)
//            [self midorder:node.lchild];
//        NSLog(@"中序遍历 : %d ",node->data);
//        if(node.rchild)
//            [self midorder:node.rchild];
//    }

}
/**
 后序遍历     左右中

 @param node node
 */
+ (void)nextorder:(BTreeNode *)node{

    if(node){

        [self nextorder:node.lchild];
        [self nextorder:node.rchild];
        NSLog(@"后序遍历 :  %d",node->data);
    }

//    if(node)
//    {
//
//        if(node.lchild)
//            [self nextorder:node.lchild];
//
//        if(node.rchild)
//            [self nextorder:node.rchild];
//
//        NSLog(@"后序遍历 : %d ",node->data);
//    }


}


@end
