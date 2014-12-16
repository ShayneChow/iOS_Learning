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
    
    UILabel *label_page1_1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 200, 1000, 20)];
    label_page1_1.text = @"我要买iPhone6！";
    label_page1_1.font = [UIFont systemFontOfSize:18.0f];
    label_page1_1.textColor = [UIColor redColor];
    [label_page1_1 sizeToFit];
    [self.scrollView addSubview:label_page1_1];
    
    UILabel *label_page1_2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 240, 1000, 20)];
    label_page1_2.text = @"我要看医生演唱会~~~~";
    label_page1_2.font = [UIFont systemFontOfSize:18.0f];
    label_page1_2.textColor = [UIColor redColor];
    [label_page1_2 sizeToFit];
    [self.scrollView addSubview:label_page1_2];
    
    UILabel *label_page1_3 = [[UILabel alloc] initWithFrame:CGRectMake(140, 280, 1000, 20)];
    label_page1_3.text = @"我要去大理！";
    label_page1_3.font = [UIFont systemFontOfSize:18.0f];
    label_page1_3.textColor = [UIColor redColor];
    [label_page1_3 sizeToFit];
    [self.scrollView addSubview:label_page1_3];
    
    self.girlImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    self.girlImageView.frame = CGRectMake(100, screenSize.height - 200 - 50, 200, 200);
    [self.scrollView addSubview:self.girlImageView];
    
    [self.view addSubview:_scrollView];
}

@end
