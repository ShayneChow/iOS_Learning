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
    self.view.backgroundColor = [UIColor purpleColor];
    [self buttonForOld];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonForOld{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btn_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(90,100,140,40);
    btn_1.frame = CGRectMake(90,200,140,40);
    
    [btn setTitle:@"UIAlertView" forState:UIControlStateNormal];//设置btn标题
    [btn_1 setTitle:@"UIAlertController" forState:UIControlStateNormal];//设置btn标题

//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];//设置标题颜色
    
    btn.showsTouchWhenHighlighted = YES;
    
    [btn addTarget:self action:@selector(touchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [btn_1 addTarget:self action:@selector(touchUpInside_1) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    [self.view addSubview:btn_1];
}

- (void)touchUpInside{
    NSLog(@"touchUpInside");
    [self alertViewInit];
}

- (void)touchUpInside_1{
    NSLog(@"touchUpInside");
    [self alertControllerInit];
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

- (void)alertControllerInit{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"这个是UIAlertController的默认样式" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


@end
