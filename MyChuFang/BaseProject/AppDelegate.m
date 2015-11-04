//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "XiaChuFangNetManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];
    //去掉地址中%号
     NSString *str = @"http://api.xiachufang.com/v2/dishes/lookup_v2.json?id=111781551%2C111781458%2C111781123%2C111780937&api_sign=5d3247a457f7bcb6b5820eddee8838eb&api_key=0f9f79be1dac5f003e7de6f876b17c00&origin=iphone&version=4.4.0";
    str = [str stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //DDLogVerbose(@"%@",str);
    [XiaChuFangNetManager getInitPageCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"....");
    }];
    return YES;
}

@end
