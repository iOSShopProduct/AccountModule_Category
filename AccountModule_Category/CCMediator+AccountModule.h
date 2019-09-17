//
//  CCMediator+AccountModule.h
//  AccountModule_Category
//
//  Created by 曹鹏旭 on 2019/9/16.
//  Copyright © 2019 曹鹏飞. All rights reserved.
//

#import <CCMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCMediator (AccountModule)
/**
 *登陆(presentViewController)
 **/
- (UIViewController *)Account_viewControllerForLogin;
/**
 *登陆状态
 **/
- (BOOL)Account_statusForLogin;
/**
 *登陆状态改变
 **/
- (NSString *)Account_nameForLoginStatusChangeNotification;

@end

NS_ASSUME_NONNULL_END
