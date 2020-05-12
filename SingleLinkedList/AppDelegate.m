//
//  AppDelegate.m
//  SingleLinkedList
//
//  Created by majianjie on 2020/3/7.
//  Copyright © 2020 majianjie. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] init];

    self.window.rootViewController = [ViewController new];

    [self.window makeKeyAndVisible];

    return YES;
}


@end
