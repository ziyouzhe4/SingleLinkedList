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
#import "QueueWithTwoStacks.h"
#import "StackWithTwoQueues.h"
#import "BubblingSort.h"
#import "QuickSort.h"
#import "MergeSort.h"
#import "BinarySearch.h"
#import "BTreeNode.h"

@interface ViewController ()

@property (nonatomic,strong)NSMutableArray *array;

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

//    CustomStack *stack = [[CustomStack alloc] init];
//
//    for (int i = 0; i < 2; i++) {
//        int randomNum = arc4random_uniform(20) + 1;
//        [stack stackWithMinPush:[NSNumber numberWithInt:randomNum]];
//        NSLog(@"栈中 push 进 %d",randomNum);
//    }
//
//    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);
//    [stack stackWithMinPop];
//    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);
//    [stack stackWithMinPop];
//    NSLog(@"stack 最小值是: %@",[stack stackWithMinMin]);


// 5. 用两个栈实现队列操作
//
//    QueueWithTwoStacks *stack = [[QueueWithTwoStacks alloc] init];
//
//    for (int i = 1; i < 8; i++) {
//        NSNumber *num = [NSNumber numberWithInt:i];
//        [stack appendTail:num];
//    }
//
//
//    for (int j = 0; j < 3; j++) {
//        NSNumber *deletedHead = [stack deleteHead];
//        NSLog(@"删除头 : %@",deletedHead);
//    }
//
//    [stack appendTail:@20];
//
//    NSNumber *deletedHead = [stack deleteHead];
//    NSLog(@"删除头 : %@",deletedHead);



// 6. 两个队列实现一个栈结构

//    StackWithTwoQueues *queue = [[StackWithTwoQueues alloc] init];
//
//    for (int i = 1; i < 8; i++) {
//        NSNumber *num = [NSNumber numberWithInt:i];
//        [queue push:num];
//    }
//
//    for (int j = 0; j < 3; j++) {
//        [queue pop];
//    }
//
//    [queue push:@20];
//    [queue pop];


// 7.0 二分法查找
//    BinarySearch *search = [[BinarySearch alloc] init];
//    int index = [search searchNum:40];
//    NSString *str = @"";
//    if (index == -1) {
//        str = @"没有找到 ";
//    }else{
//        str = [NSString stringWithFormat:@"找到了 下标是: %d",index];
//    }
//
//    NSLog(@"%@ ",str);

// 7.1 快排

//    QuickSort *quickSort = [[QuickSort alloc] init];
//    NSMutableArray *quickedSort = [quickSort sort];
//    [self sortArray:quickedSort title:@"快速"];


// 7.2 归并排序

//    MergeSort *mergeSort = [[MergeSort alloc] init];
//    NSMutableArray *mergedSort = [mergeSort sort];
//    [self sortArray:mergedSort title:@"归并"];


// 7.3 冒泡排序
//    BubblingSort *bubbSort = [[BubblingSort alloc] init];
//    NSMutableArray *bubbedSort = [bubbSort sort];
//    [self sortArray:bubbedSort title:@"冒泡"];



//    self.array =  [NSMutableArray arrayWithObjects:@"8",@"6",@"7", nil];
//    [self array:self.array];

//    NSLog(@"%@",self.array);



// 8. 求字符串中字符个数
//    NSLog(@"%d", [self convertToInt:@"马建杰"]);
//    NSLog(@"%d", [self intSum:@"123"]);


// 9. 二叉树遍历
    BTreeNode *h = [[BTreeNode alloc] init];
    h->data = 8;
    h.lchild = nil;
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

    //    [BTreeNode preorder:a];  //前序
//    [BTreeNode midorder:a];   // 中序
//    [BTreeNode nextorder:a];  // 后序

}

- (void)sortArray:(NSMutableArray *)array title:(NSString *)title{

        NSLog(@"%@ 排序后是: %@",title,array);

}

- (int)convertToInt:(NSString*)strtemp
{
    int strlength = 0;
    char* p = (char*)[strtemp cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[strtemp lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {

        if (*p) {
            p++;
            strlength++;
        }else {
            p++;
        }
    }

    return strlength;

}

- (int)intSum:(NSString *)str{

    int count = 0;
    for (int i = 0; i<str.length; i++) {
        int temp = [str characterAtIndex:i];
        if (temp > '0' && temp < '9') {
            count++;
        }
    }
    return count;
}

@end
