//
//  LinkNode.h
//  手写链表
//
//  Created by majianjie on 2018/5/6.
//  Copyright © 2018年 majianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkNode : NSObject<NSCopying>
{

    @public
    LinkNode *next;

}

@property (nonatomic,strong)NSString *key;

@property (nonatomic,strong)NSString *value;

- (instancetype)initWithKey:(NSString *)key value:(NSString *)value;

@end
