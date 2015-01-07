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

- (void)loadviewControllers;
- (void)loadcustomTabBar;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBar.hidden = YES;
    }
    return self;
}// 初始化方法

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadviewControllers];
    [self loadcustomTabBar];
    
}

- (void)loadviewControllers{
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

- (void)loadcustomTabBar{
    // 初始化自定义TabBar背景
    UIImageView *tabBarBG = [[UIImageView alloc] initWithFrame:CGRectMake(0, 431, 320, 49)]; // 此处可以使用宏定义来定义屏幕高度来适配不同高度的iPhone
    tabBarBG.userInteractionEnabled = YES;
    tabBarBG.image = [UIImage imageNamed:@"tab_bg_all"];
    [self.view addSubview:tabBarBG];
    
    // 初始化自定义选中背景
    _selectView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 49.0/2-45.0/2, 53, 45)];
    _selectView.image = [UIImage imageNamed:@"selectTabbar"];
    [tabBarBG addSubview:_selectView];
    
    // 初始化自定义TabBarItem
    float coordinateX = 0;
    for (int index = 0; index < 5; index++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.tag = index;
        button.frame = CGRectMake(14+coordinateX, 49.0/2-20, 42, 40);
        NSString *imageName = [[NSString alloc] initWithFormat:@"%d", index+1];
        [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [tabBarBG addSubview:button];
        [button addTarget:self action:@selector(changeViewController:) forControlEvents:UIControlEventTouchUpInside];
        coordinateX += 62;
    }
}

- (void)changeViewController:(UIButton *)button{
    self.selectedIndex = button.tag;// 切换视图
    
    [UIView beginAnimations:nil context:nil]; //切换动画
    _selectView.frame = CGRectMake(10 + button.tag*62, 49.0/2 - 45.0/2, 53, 45); // 选中背景切换
    [UIView commitAnimations];
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
