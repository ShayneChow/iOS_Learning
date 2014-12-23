//
//  ViewController.m
//  1.3_UIAlertController
//
//  Created by choushayne on 14/12/23.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self alertViewInit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertViewInit{
    //初始化AlertView
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"AlertViewTest"
                                                    message:@"message"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OtherBtn",nil];
    //设置标题与信息，通常在使用frame初始化AlertView时使用
    alert.title = @"AlertViewTitle";
    alert.message = @"AlertViewMessage";
    
    //这个属性继承自UIView，当一个视图中有多个AlertView时，可以用这个属性来区分
    alert.tag = 0;
    //只读属性，看AlertView是否可见
    NSLog(@"%d",alert.visible);
    //通过给定标题添加按钮
    [alert addButtonWithTitle:@"addButton"];
    //按钮总数
    NSLog(@"number Of Buttons :%d",alert.numberOfButtons);
    //获取指定索引的按钮标题
    NSLog(@"buttonTitleAtIndex1:%@",[alert buttonTitleAtIndex:1]);
    NSLog(@"buttonTitleAtIndex2:%@",[alert buttonTitleAtIndex:2]);
    //获取取消按钮的索引
    NSLog(@"cancelButtonIndex:%d",alert.cancelButtonIndex);
    //获取第一个其他按钮的索引
    NSLog(@"firstOtherButtonIndex:%d",alert.firstOtherButtonIndex);
    //显示AlertView
    [alert show];
}

@end
