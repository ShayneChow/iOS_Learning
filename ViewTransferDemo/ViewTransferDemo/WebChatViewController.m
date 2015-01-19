//
//  WebChatViewController.m
//  ViewTransferDemo
//
//  Created by choushayne on 15/1/19.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "WebChatViewController.h"

@interface WebChatViewController ()

@end

@implementation WebChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    
    //设置视图控制器标题
    self.title=@"Chat";
    
    //注意通过tabBarController或者parentViewController可以得到其俯视图控制器（也就是KCTabBarViewController）
    NSLog(@"%i",self.tabBarController==self.parentViewController);//对于当前应用二者相等
    
    //设置图标、标题(tabBarItem是显示在tabBar上的标签)
    self.tabBarItem.title=@"Web Chat";//注意如果这个标题不设置默认在页签上显示视图控制器标题
    self.tabBarItem.image=[UIImage imageNamed:@"tabbar_mainframe.png"];//默认图片
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"tabbar_mainframeHL.png"];//选中图片
    
    //图标右上角内容
    self.tabBarItem.badgeValue=@"5";
    
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
