//
//  BTreeNode.m
//  手写链表
//
//  Created by majianjie on 2018/5/15.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "BTreeNode.h"

/**
 demo结构
                    a(1)

           b(2)                c(3)

      d(4)      e(5)       f(6)      g(7)

  h(8)

 */

@implementation BTreeNode

/**
 前序遍历   中左右
 */
+ (void)preorder:(BTreeNode *)node{
    
    if(node){
        NSLog(@"前序遍历 :  %d",node->data);
        [self preorder:node.lchild];
        [self preorder:node.rchild];
    }

}

/**
 前序遍历   中左右  带返回值
 */
+ (NSMutableArray *)preorder2:(BTreeNode *)node{
    NSMutableArray *nodes = [NSMutableArray array];
    if(node){
        NSLog(@"前序遍历2 :  %d",node->data);
        [nodes addObject:@(node->data)];
        [nodes addObjectsFromArray:[self preorder2:node.lchild]];
        [nodes addObjectsFromArray:[self preorder2:node.rchild]];
    }
    return nodes;

}


/**
 中序遍历    左中右
 */
+ (void)midorder:(BTreeNode *)node{

    if(node){
        [self midorder:node.lchild];
        NSLog(@"中序遍历 :  %d",node->data);
        [self midorder:node.rchild];
    }

}
/**
 后序遍历     左右中
 */
+ (void)nextorder:(BTreeNode *)node{

    if(node){

        [self nextorder:node.lchild];
        [self nextorder:node.rchild];
        NSLog(@"后序遍历 :  %d",node->data);
    }

}

// 层序遍历
+ (void)levelOrder:(BTreeNode *)root{
    NSLog(@"层序遍历\n");
    NSMutableArray *list = [NSMutableArray array];
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject:root];

    while (queue.count != 0)
    {
        BTreeNode *root = queue.firstObject;
        [queue removeObject:root];
        printf("结点: %d \n", root->data);
        [list addObject:@(root->data)];

        if (root.lchild){
            [queue addObject:root.lchild];
        }

        if(root.rchild){
            [queue addObject:root.rchild];
        }

    }

    NSLog(@"打印层序遍历结果: %@",list);

}

///反转二叉树
+ (BTreeNode *)reverseTree:(BTreeNode *)root{
    if(root==NULL) return root;

    BTreeNode *lchild = [self reverseTree:root.lchild];
    BTreeNode *rchild = [self reverseTree:root.rchild];

    BTreeNode *temp = lchild;
    root.lchild = rchild;
    root.rchild = temp;
    return root;
}


/// 求树的深度
+ (int)depthOfTree:(BTreeNode *)root{
    if(root == NULL){
        return 0;
    }
    
    int left = [self depthOfTree:root->_lchild];
    int right = [self depthOfTree:root->_rchild];
    
    return (left>right)?(left+1):(right+1);
    
}

+ (BOOL)isBalanceTree:(BTreeNode *)root{
    if (root == NULL) {
        return true;
    }
    
    int depthLeft = [self depthOfTree:root->_lchild];
    int depthRight = [self depthOfTree:root->_rchild];
    int diff = depthLeft - depthRight;
    if (diff > 1 || diff < -1) {
        return false;
    }
    
    return [self isBalanceTree:root->_lchild] && [self isBalanceTree:root->_rchild];

}

- (void)createBTree{

        
//        BTreeNode *i = [[BTreeNode alloc] init];
//        i->data = 9;
//        i.lchild = nil;
//        i.rchild = nil;
    
        BTreeNode *h = [[BTreeNode alloc] init];
        h->data = 8;
        h.lchild = nil;
//        h.lchild = i;
        h.rchild = nil;


        BTreeNode *g = [[BTreeNode alloc] init];
        g->data = 7;
        g.lchild = nil;
        g.rchild = nil;


        BTreeNode *f = [[BTreeNode alloc] init];
        f->data = 6;
        f.lchild = nil;
        f.rchild = nil;


        BTreeNode *e = [[BTreeNode alloc] init];
        e->data = 5;
        e.lchild = nil;
        e.rchild = nil;

        BTreeNode *d = [[BTreeNode alloc] init];
        d->data = 4;
        d.lchild = h;
        d.rchild = nil;

        BTreeNode *c = [[BTreeNode alloc] init];
        c->data = 3;
        c.lchild = f;
        c.rchild = g;


        BTreeNode *b = [[BTreeNode alloc] init];
        b->data = 2;
        b.lchild = d;
        b.rchild = e;

        BTreeNode *a = [[BTreeNode alloc] init];
        a->data = 1;
        a.lchild = b;
        a.rchild = c;

        NSLog(@"得到二叉树中的所有值：%@",[BTreeNode preorder2:a]);  //前序
//        [BTreeNode preorder:a];  //前序
//        [BTreeNode midorder:a];   // 中序
//        [BTreeNode nextorder:a];  // 后序
//
        [BTreeNode levelOrder:a];  // 层序

       BTreeNode *temp = [BTreeNode reverseTree:a];// 反转
        NSLog(@"二叉树反转: %@",temp);
//
//        NSLog(@"二叉树的深度： %d",[BTreeNode depthOfTree:a]);
//
//
        NSLog(@"是否是平衡二叉树 ：  %d",[BTreeNode isBalanceTree:a]);

}



@end
