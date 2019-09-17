//
//  CCMediator+AccountModule.m
//  AccountModule_Category
//
//  Created by 曹鹏旭 on 2019/9/16.
//  Copyright © 2019 曹鹏飞. All rights reserved.
//

#import "CCMediator+AccountModule.h"
NSString * const MediatorTargetAccount = @"Account";
NSString * const MediatorActionAccountLoginViewController = @"nativeLoginViewController";
NSString * const MediatorActionAccountLoginStatus = @"nativeLoginStatus";
NSString * const MediatorActionAccountLoginStatusChangeNotification = @"nativeLoginStatusChangeNotificationName";
@implementation CCMediator (AccountModule)

/**
 *登陆(presentViewController)
 **/
- (UIViewController *)Account_viewControllerForLogin {
    UIViewController *viewController = [self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginViewController params:nil shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
/**
 *登陆状态
 **/
- (BOOL)Account_statusForLogin {
    return [[self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginStatus params:nil shouldCacheTarget:NO] boolValue];
}
/**
 *登陆状态改变
 **/
- (NSString *)Account_nameForLoginStatusChangeNotification {
    return [self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginStatusChangeNotification params:nil shouldCacheTarget:NO];
}
@end
