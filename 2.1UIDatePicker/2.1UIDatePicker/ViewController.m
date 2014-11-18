//
//  ViewController.m
//  2.1UIDatePicker
//
//  Created by choushayne on 14/11/17.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    //创建日期选择器
    UIDatePicker *date=[[UIDatePicker alloc] initWithFrame:CGRectMake(10, 50, 200, 180)];
    date.datePickerMode=UIDatePickerModeCountDownTimer;
    [self.view addSubview:date];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
