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
#import "LeetCodeDemo.h"
#import <objc/runtime.h>


@interface ViewController ()


@property (nonatomic,strong)NSTimer *timer1;
@property (nonatomic,strong)NSTimer *timer2;
@property (nonatomic,strong)NSTimer *timer3;
@property (nonatomic,strong)NSTimer *timer4;

@property (nonatomic,strong)NSString *name;

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
//    NSLog(@"%d", [self convertToInt:@"马a建杰"]);
//    NSLog(@"%d", [self intSum:@"1是23"]);


// 9. 二叉树遍历

//    BTreeNode *btree = [[BTreeNode alloc] init];
//    [btree createBTree];


// 10. leetcode

    LeetCodeDemo *leetcode = [LeetCodeDemo new];
//    [leetcode mostTimesOfCharacter];

// 11 .最大子序列和

//    NSArray *array = [NSArray arrayWithObjects:@"4",@"0",@"2",@"-5",@"3", nil];
//    [leetcode maxSubArray:array];


// 12. 斐波那契数列(非递归)
//    LeetCodeDemo *leetcode = [LeetCodeDemo new];
//    NSLog(@"非递归结果 %d",[leetcode fibonacci:9]);

// 13. 输入一个数组，把所有奇数放到所有偶数前面

//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"2",@"3",@"1",@"6",@"5", nil];
//    [leetcode makeOddnumberToFontOfEvennumber:array];


//    [leetcode findSameStrinArray];


// 14. 河北两个数组后 找相同元素

//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"2",@"0",@"1",@"6",@"5",@"4",@"9",@"3", nil];
//    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@"9",@"7",@"6",@"5",@"2", nil];
//
//    for (int i = 0; i < array.count; i++) {
//        for (int j = 0; j < array.count - i - 1; j++) {
//
//            if ([array[j] intValue] >  [array[j+1] intValue]) {
//                NSString *temp = array[j];
//                array[j] = array[j+1];
//                array[j+1] = temp;
//            }
//        }
//    }
//
//    for (int i = 0; i < array2.count; i++) {
//        for (int j = 0; j < array2.count - i - 1; j++) {
//
//            if ([array2[j] intValue] >  [array2[j+1] intValue]) {
//                NSString *temp = array2[j];
//                array2[j] = array2[j+1];
//                array2[j+1] = temp;
//            }
//        }
//    }

//    NSLog(@"排序完的 array : %@",array);
//    NSLog(@"排序完的 array2 : %@",array2);

//    NSMutableArray *sameArray = [NSMutableArray array];
//
//    int a = 0;
//    int b = 0;
//
//    while (a < array.count && b < array2.count) {
//
//        int num1 = [array[a] intValue];
//        int num2 = [array2[b] intValue];
//
//        if (num1 > num2) {
//            b++;
//        }else if (num2 > num1){
//            a++;
//        }else{
//            [sameArray addObject:[NSNumber numberWithInt:num1]];
//            a++;
//            b++;
//        }
//    }

//    NSLog(@"相同的元素 : %@",sameArray);



//    NSString *str = @"1221";

//    NSLog(@"%d",[leetcode IsPalindereme:str size:(int)str.length]);


//    char *strInt = "123459";
//    [leetcode strConverToInt:strInt];


//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"2",@"0",@"1", nil];
//
//    [self quickSortLeft:0 right:(int)array.count - 1];


//    [leetcode findAppearOnceminIndex:nil];

    
//    15.两数之和
    int sum = 7;
    NSArray *array = @[@(1),@(2),@(3),@(4)];
    NSMutableArray *indexs = [leetcode getSum:array target:sum];
    if (indexs.count == 2) {
        NSLog(@"%@ 中之和为 %d 的下标为：  %@ %@",array,sum,indexs[1],indexs[0]);
    }else{
        NSLog(@"没有符合条件");
    }
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



// ============= 快排 ================ //
- (void)quickSortLeft:(int)left right:(int)right{

    if (left >= right) {
        return;
    }
// 2 0 1
    int baseIndex = [self sortParttionLeft:left right:right];

    if (baseIndex - 1 > left) {
        [self quickSortLeft:left right:baseIndex - 1];
    }

    if (baseIndex + 1 < right) {
        [self quickSortLeft:baseIndex + 1 right:right];
    }

}

- (int)sortParttionLeft:(int)l right:(int)r{

    int left = l;
    int right = r;
    int base = (int)[self.array[left] intValue];

    while (left < right) {

        if (left < right && [self.array[right] intValue] >= base) {
            right = right - 1;
        }

        [self swap:left b:right];

        if (left < right && [self.array[left] intValue] <= base) {
            left = left + 1;
        }

        [self swap:left b:right];

    }

    return right;

}

- (void)swap:(int)a b:(int)b{

    NSNumber *temp = self.array[a];
    self.array[a] = self.array[b];
    self.array[b] = temp;

}



@end
