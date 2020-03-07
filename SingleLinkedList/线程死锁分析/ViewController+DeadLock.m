//
//  ViewController+DeadLock.m
//  手写链表
//
//  Created by majianjie on 2018/5/16.
//  Copyright © 2018年 majianjie. All rights reserved.
//
// 网址 : http://ios.jobbole.com/82622/
/**

 基础知识:

     全局队列，也是一个并行队列
     dispatch_get_global_queue

      主队列，在主线程中运行，因为主线程只有一个，所以这是一个串行队列
     dispatch_get_main_queue

      从DISPATCH_QUEUE_SERIAL看出，这是串行队列
     dispatch_queue_create("com.demo.serialQueue", DISPATCH_QUEUE_SERIAL)

      同理，DISPATCH_QUEUE_CONCURRENT 这是一个并行队列
     dispatch_queue_create("com.demo.concurrentQueue", DISPATCH_QUEUE_CONCURRENT)

     dispatch_sync(..., ^(block)) // 同步线程
     dispatch_async(..., ^(block)) // 异步线程

 */


#import "ViewController+DeadLock.h"

@implementation ViewController (DeadLock)

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];

//    [self demo5];



}


/**
 首先执行任务1，这是肯定没问题的，只是接下来，程序遇到了同步线程，那么它会进入等待，等待任务2执行完，然后执行任务3。但这是队列，有任务来，当然会将任务加到队尾，然后遵循FIFO原则执行任务。那么，现在任务2就会被加到最后，任务3排在了任务2前面，问题来了：
 任务3要等任务2执行完才能执行，任务2由排在任务3后面，意味着任务2要在任务3执行完才能执行，所以他们进入了互相等待的局面。【既然这样，那干脆就卡在这里吧】这就是死锁。

打印  1 死锁了
 */
- (void)demo1{

    NSLog(@"1"); // 任务1
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"2"); // 任务2
    });
    NSLog(@"3"); // 任务3

}


/**
 首先执行任务1，接下来会遇到一个同步线程，程序会进入等待。等待任务2执行完成以后，才能继续执行任务3。从dispatch_get_global_queue可以看出，任务2被加入到了全局的并行队列中，当并行队列执行完任务2以后，返回到主队列，继续执行任务3。

 打印 1 2 3
 */
- (void)demo2{

    NSLog(@"1"); // 任务1
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSLog(@"2"); // 任务2
    });
    NSLog(@"3"); // 任务3

}


/**
 执行任务1；
 遇到异步线程，将【任务2、同步线程、任务4】加入串行队列中。因为是异步线程，所以在主线程中的任务5不必等待异步线程中的所有任务完成；
 因为任务5不必等待，所以2和5的输出顺序不能确定；
 任务2执行完以后，遇到同步线程，这时，将任务3加入串行队列；
 又因为任务4比任务3早加入串行队列，所以，任务3要等待任务4完成以后，才能执行。但是任务3所在的同步线程会阻塞，所以任务4必须等任务3执行完以后再执行。这就又陷入了无限的等待中，造成死锁

 
 */
- (void)demo3{

    dispatch_queue_t queue = dispatch_queue_create("com.demo.serialQueue", DISPATCH_QUEUE_SERIAL);
    NSLog(@"1"); // 任务1
    dispatch_async(queue, ^{
        NSLog(@"2"); // 任务2
        dispatch_sync(queue, ^{
            NSLog(@"3"); // 任务3
        });
        NSLog(@"4"); // 任务4
    });
    NSLog(@"5"); // 任务5

}

- (void)demo4{

    NSLog(@"1"); // 任务1
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"2"); // 任务2
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"3"); // 任务3
        });
        NSLog(@"4"); // 任务4
    });
    NSLog(@"5"); // 任务5


}

- (void)demo5{

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"1"); // 任务1
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"2"); // 任务2
        });
        NSLog(@"3"); // 任务3
    });
    NSLog(@"4"); // 任务4
    while (1) {

    }
    NSLog(@"5"); // 任务5

}

@end
