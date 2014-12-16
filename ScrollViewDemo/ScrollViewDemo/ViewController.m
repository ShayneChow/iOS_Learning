//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by choushayne on 14/12/16.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//初始化 scrollview
- (void)initScrollView
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, screenSize.width, screenSize.height)];
    //我们的scrollView的frame应该是屏幕大小
    _scrollView.contentSize = CGSizeMake(screenSize.width * 4, screenSize.height);
    //但是我们希望我们scrollView的可被展现区域是4个屏幕横排那么大
    _scrollView.alwaysBounceHorizontal = YES;//横向一直可拖动
    _scrollView.pagingEnabled = YES;//关键属性，打开page模式。
    _scrollView.delegate = self;
    _scrollView.showsHorizontalScrollIndicator = NO;//不要显示滚动条~
    _scrollView.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:_scrollView];
}

@end
