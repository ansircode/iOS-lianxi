//
//  AppDelegate.m
//  OC微博项目
//
//  Created by 许建安 on 16/2/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>
#import "XJComposeButton.h"
#import "XJBaseTableViewController.h"
#import "XJHomeTableViewController.h"
#import "XJMessageTableViewController.h"
#import "XJDiscoverTableViewController.h"
#import "XJProfileTableViewController.h"
#import "XJBaseViewController.h"
#import "XJHomeViewController.h"
#import "XJMessageViewController.h"
#import "XJDiscoverViewController.h"
#import "XJProfileViewController.h"


@interface AppDelegate ()

@property (nonatomic, assign) BOOL userLogin;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //设置主界面
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tab = [[UITabBarController alloc] init];
    UITabBarController *tab1 = [[UITabBarController alloc] init];
    
    //主界面的根控制器
    
    //设置背景色
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    //把nav添加到UITabBarController中
    
    
    //设置tab的子控制器
    //首页
    if (self.userLogin == NO) {
        self.window.rootViewController = tab1;
        
    } else {
        self.window.rootViewController = tab;
        
    }
    
    [self setMainWithTab:tab];
    [self setMainWithTab1:tab1];
    
    //让window作为主窗口并且显示
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

//设置tab
- (void)setMainWithTab:(UITabBarController *)tab {
    XJHomeTableViewController *homeVC = [[XJBaseTableViewController alloc] init];
    homeVC.title = @"首页";
    homeVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    [tab addChildViewController:[[UINavigationController alloc] initWithRootViewController:homeVC]];
    
    //消息
    XJMessageTableViewController *messageVC = [[XJBaseTableViewController alloc] init];
    messageVC.title = @"消息";
    messageVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    [tab addChildViewController:[[UINavigationController alloc] initWithRootViewController:messageVC]];
    
    //占位tabBar
    [tab addChildViewController:[[UIViewController alloc] init]];
    
    //发现
    XJDiscoverTableViewController *discoverVC = [[XJBaseTableViewController alloc] init];
    discoverVC.title = @"发现";
    discoverVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    [tab addChildViewController:[[UINavigationController alloc] initWithRootViewController:discoverVC]];
    
    //我
    XJProfileTableViewController *profileVC = [[XJBaseTableViewController alloc] init];
    profileVC.title = @"我";
    profileVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    [tab addChildViewController:[[UINavigationController alloc] initWithRootViewController:profileVC]];
    
    UIButton *composeButton = [[XJComposeButton alloc] init];
    //设置按钮图片
    [composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
    //设置按钮背景图片
    [composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
    [composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
    //设置按钮位置
    NSInteger width = tab.tabBar.bounds.size.width/5;
    composeButton.frame = CGRectMake(2*width, 0, width, tab.tabBar.bounds.size.height);
    
    [tab.tabBar addSubview:composeButton];
}

//设置tab1
- (void)setMainWithTab1:(UITabBarController *)tab1 {
    XJHomeViewController *homeVC = [[XJBaseViewController alloc] init];
    homeVC.title = @"首页";
    homeVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    [tab1 addChildViewController:[[UINavigationController alloc] initWithRootViewController:homeVC]];
    
    //消息
    XJMessageViewController *messageVC = [[XJBaseViewController alloc] init];
    messageVC.title = @"消息";
    messageVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    [tab1 addChildViewController:[[UINavigationController alloc] initWithRootViewController:messageVC]];
    
    //占位tabBar
    [tab1 addChildViewController:[[UIViewController alloc] init]];
    
    //发现
    XJDiscoverViewController *discoverVC = [[XJBaseViewController alloc] init];
    discoverVC.title = @"发现";
    discoverVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    [tab1 addChildViewController:[[UINavigationController alloc] initWithRootViewController:discoverVC]];
    
    //我
    XJProfileViewController *profileVC = [[XJBaseViewController alloc] init];
    profileVC.title = @"我";
    profileVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    [tab1 addChildViewController:[[UINavigationController alloc] initWithRootViewController:profileVC]];
    
    UIButton *composeButton = [[XJComposeButton alloc] init];
    //设置按钮图片
    [composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [composeButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
    //设置按钮背景图片
    [composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
    [composeButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
    //设置按钮位置
    NSInteger width = tab1.tabBar.bounds.size.width/5;
    composeButton.frame = CGRectMake(2*width, 0, width, tab1.tabBar.bounds.size.height);
    
    [tab1.tabBar addSubview:composeButton];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
