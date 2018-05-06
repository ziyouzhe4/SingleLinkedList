//
//  ViewController.m
//  手写链表
//
//  Created by majianjie on 2018/5/6.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "ViewController.h"
#import "LinkList.h"
#import "LinkNode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

// 0. 初始化链表
        LinkList *list = [[LinkList alloc] init];
        for (int i = 1; i <= 9; i++) {
            LinkNode *node = [[LinkNode alloc] initWithKey:[NSString stringWithFormat:@"%d",i] value:[NSString stringWithFormat:@"%d",i*111]];

            [list insertNode:node];
        }


// 1. 求链表中倒数第k个结点
       LinkNode *targetNode = [list findkThNode:[list headNode] k:3];
        if (targetNode) {
            NSLog(@"%@ %@",targetNode.key,targetNode.value);
        }else{
            NSLog(@"传入参数有误");
        }

// 2. 单链表反转

        [list reverse];
        LinkNode *newHeadNode = [list headNode];
        while (newHeadNode) {
            NSLog(@"revertedHeaderNode key:%@   value:%@ ",newHeadNode.key,newHeadNode.value);
            newHeadNode = newHeadNode->next;
        }
// 3. 单链表是否有环
   int isCircle = [list isCircleExist:[list headNode]];
    NSLog(@"链表 %@", isCircle ? @"有环" : @"无环");


}



@end
