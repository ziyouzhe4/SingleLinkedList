//
//  LeetCodeDemo.m
//  手写链表
//
//  Created by majianjie on 2018/5/17.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "LeetCodeDemo.h"

@implementation LeetCodeDemo

- (void)mostTimesOfCharacter{

    NSMutableDictionary *dic = [NSMutableDictionary dictionary];

    NSString *str = @"a,a,c,d,h,a,h,h,h,h";

    NSArray *array = [str componentsSeparatedByString:@","];

    for (int i = 0; i < array.count; i++) {

        NSString *key = [dic valueForKey:array[i]];

        if (![key isEqualToString:@""] && key != nil) {
            NSString *temokey = [dic valueForKey:array[i]];
            int num = [temokey intValue];
            NSString *strkey = [NSString stringWithFormat:@"%d",num+1];
            [dic setValue:strkey forKey:array[i]];
        }else{
            NSString *num = [NSString stringWithFormat:@"%d",1];
            [dic setValue:num forKey:array[i]];
        }

    }

    NSString *temo = array[0];
    int maxValue = [[dic valueForKey:temo] intValue];
    NSString *strtemp = @"";
    for (int j = 0; j < array.count; j++) {
        int num = [[dic valueForKey:array[j]] intValue];
        if (maxValue < num) {
            maxValue = num;
            strtemp = array[j];
        }
    }

    NSLog(@"出现次数最多的字符是  %@   次数是 : %d",strtemp,maxValue);

}

@end
