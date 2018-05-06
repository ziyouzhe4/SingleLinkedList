//
//  LinkNode.m
//  手写链表
//
//  Created by majianjie on 2018/5/6.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import "LinkNode.h"

@implementation LinkNode

- (instancetype)initWithKey:(NSString *)key value:(NSString *)value{

    if (self = [super init]) {

        _key = key;
        _value = value;

    }

    return self;
}

- (id)copyWithZone:(NSZone *)zone{

    LinkNode *node = [LinkNode allocWithZone:zone];
    node.key = self.key;
    node.value = self.value;
    node->next = self->next;

    return node;

}


@end
