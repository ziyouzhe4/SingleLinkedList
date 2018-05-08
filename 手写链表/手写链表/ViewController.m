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
#import "CustomStack.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

// 0. 初始化链表

//        LinkList *list = [[LinkList alloc] init];
//
//        for (int i = 1; i <= 9; i++) {
//            LinkNode *node = [[LinkNode alloc] initWithKey:[NSString stringWithFormat:@"%d",i] value:[NSString stringWithFormat:@"%d",i*111]];
//            [list insertNode:node];
//        }
//
//        LinkList *list2 = [[LinkList alloc] init];
//
//        [list2 insertNode:[[LinkNode alloc] initWithKey:@"0" value:@"000"]];




// 1. 求链表中倒数第k个结点

//       LinkNode *targetNode = [list findkThNode:[list headNode] k:3];
//        if (targetNode) {
//            NSLog(@"%@ %@",targetNode.key,targetNode.value);
//        }else{
//            NSLog(@"传入参数有误");
//        }


// 2. 单链表反转

//        [list reverse];
//        LinkNode *newHeadNode = [list headNode];
//        while (newHeadNode) {
//            NSLog(@"revertedHeaderNode key:%@   value:%@ ",newHeadNode.key,newHeadNode.value);
//            newHeadNode = newHeadNode->next;
//        }


// 3. 单链表是否有环

//   int isCircle = [list isCircleExist:[list headNode]];
//    NSLog(@"链表 %@", isCircle ? @"有环" : @"无环");

    
// 4. 判断两个单链表是否相交

//    LinkNode *crossNode = [list isCross:[list headNode] list2:[list2 headNode]];
//    NSLog(@"list 和 list2 链表 的交点是 : %@",crossNode.value);


// 5. 合并两个有序的链表

//    LinkList *list = [[LinkList alloc] init];
//    for (int i = 1; i <= 5; i++) {
//        LinkNode *node = [[LinkNode alloc] initWithKey:[NSString stringWithFormat:@"%d",i] value:[NSString stringWithFormat:@"%d",i*111]];
//        [list insertNode:node];
//    }
//    LinkList *list2 = [[LinkList alloc] init];
//    for (int i = 6; i <= 9; i++) {
//        LinkNode *node = [[LinkNode alloc] initWithKey:[NSString stringWithFormat:@"%d",i] value:[NSString stringWithFormat:@"%d",i*111]];
//        [list2 insertNode:node];
//    }
//
//    LinkNode *mergeHeadNode = [list mergeSortedList:[list headNode] otherNode:[list2 headNode]];
//    while (mergeHeadNode) {
//        NSLog(@"合并后值为 : %@",mergeHeadNode.value);
//        mergeHeadNode = mergeHeadNode->next;
//    }


// 6. 包含min函数的栈

    CustomStack *stack = [[CustomStack alloc] init];

    for (int i = 0; i < 2; i++) {
        int randomNum = arc4random_uniform(20) + 1;
        [stack stackWithMinPush:[NSNumber numberWithInt:randomNum]];
        NSLog(@"栈中 push 进 %d",randomNum);
    }

    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);
    [stack stackWithMinPop];
    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);
    [stack stackWithMinPop];
    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);

}



@end
