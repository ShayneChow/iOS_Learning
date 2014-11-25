//
//  ViewController.m
//  4.1UIWebView
//
//  Created by choushayne on 14/11/25.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
//    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(20, 50, 270, 200)];
//    [self.view addSubview:web];
    
    //创建 NSURL 对象，初始化网址
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com/"];
    //创建 NSURLRequest 对象，传递网址
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //加载网址对应的网页内容
    [_web loadRequest:request];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
