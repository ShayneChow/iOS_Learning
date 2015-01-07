//
//  MainViewController.m
//  6.1UITabBarController
//
//  Created by choushayne on 15/1/7.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "NewsViewController.h"
#import "HistoryViewController.h"
#import "SearchViewController.h"
#import "SettingViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController *vc1 = [[HomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:vc1];
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@""] tag:1];
    vc1.tabBarItem = homeItem;
    
    NewsViewController *vc2 = [[NewsViewController alloc] init];
    UINavigationController *newsNav = [[UINavigationController alloc] initWithRootViewController:vc2];
    UITabBarItem *newsItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:2];
    vc2.tabBarItem = newsItem;
    
    HistoryViewController *vc3 = [[HistoryViewController alloc] init];
    SearchViewController *vc4 = [[SearchViewController alloc] init];
    SettingViewController *vc5 = [[SettingViewController alloc] init];
    
    NSArray *viewControllers = @[homeNav, newsNav, vc3, vc4, vc5];
    
//    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [self setViewControllers:viewControllers animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
