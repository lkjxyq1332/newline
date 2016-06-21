//
//  AppDelegate.m
//  zhihu
//
//  Created by yuan quan on 16/5/1.
//  Copyright © 2016年 yuan quan. All rights reserved.
//

#import "AppDelegate.h"
#import "interfaceTableViewController.h"
#import "findTableViewController.h"
#import "noticeTableViewController.h"
#import "personageTableViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];

    //第一个界面
    interfaceTableViewController *top = [[interfaceTableViewController alloc]init];
    UINavigationController *top1 = [[UINavigationController alloc]initWithRootViewController:top];
    top1.tabBarItem.image = [UIImage imageNamed:@""];

    findTableViewController *find = [[findTableViewController alloc]init];
    UINavigationController *find1 = [[UINavigationController alloc]initWithRootViewController:find];
    find1.tabBarItem.title = @"发现";
    
    noticeTableViewController *notice = [[noticeTableViewController alloc]init];
    UINavigationController *notice1 = [[UINavigationController alloc]initWithRootViewController:notice];
    notice1.tabBarItem.title = @"通知";
    
     personageTableViewController *person = [[personageTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    UINavigationController *person1 = [[UINavigationController alloc]initWithRootViewController:person];
    person.tabBarItem.title = @"个人";
    

    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.viewControllers = @[top1,find1,notice1,person1];
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    
    return YES;
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
