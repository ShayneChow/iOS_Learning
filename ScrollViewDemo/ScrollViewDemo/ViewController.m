//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by choushayne on 14/12/16.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

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
    _scrollView.contentSize = CGSizeMake(screenSize.width * 2, screenSize.height);
    //但是我们希望我们scrollView的可被展现区域是4个屏幕横排那么大
    _scrollView.alwaysBounceHorizontal = YES;//横向一直可拖动
    _scrollView.pagingEnabled = YES;//关键属性，打开page模式。
    _scrollView.delegate = self;
    _scrollView.showsHorizontalScrollIndicator = NO;//不要显示滚动条~
    _scrollView.backgroundColor = [UIColor purpleColor];
    
    self.label_page1_1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 150, 1000, 20)];
    self.label_page1_1.text = @"我要买iPhone6！";
    self.label_page1_1.font = [UIFont systemFontOfSize:18.0f];
    self.label_page1_1.textColor = [UIColor redColor];
    [self.label_page1_1 sizeToFit];
    [self.scrollView addSubview:self.label_page1_1];
    
    self.label_page1_2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 190, 1000, 20)];
    self.label_page1_2.text = @"我要看演唱会~~~~";
    self.label_page1_2.font = [UIFont systemFontOfSize:18.0f];
    self.label_page1_2.textColor = [UIColor greenColor];
    [self.label_page1_2 sizeToFit];
    [self.scrollView addSubview:self.label_page1_2];
    
    self.label_page1_3 = [[UILabel alloc] initWithFrame:CGRectMake(140, 230, 1000, 20)];
    self.label_page1_3.text = @"我要去大理！";
    self.label_page1_3.font = [UIFont systemFontOfSize:18.0f];
    self.label_page1_3.textColor = [UIColor orangeColor];
    [self.label_page1_3 sizeToFit];
    [self.scrollView addSubview:self.label_page1_3];
    
    self.girlImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    self.girlImageView.frame = CGRectMake(80, kScreenHeight - 250 - 50, 200, 200);
    [self.scrollView addSubview:self.girlImageView];
    
    self.girlImageView.transform = CGAffineTransformMakeTranslation(-200, 0);
    self.label_page1_1.transform = CGAffineTransformMakeTranslation(- 100, 0);
    self.label_page1_2.transform = CGAffineTransformMakeTranslation(100, 0);
    self.label_page1_3.transform = CGAffineTransformMakeTranslation(- 120, 0);
    
    [UIView animateWithDuration:0.7
                     animations:^{
                         self.girlImageView.transform = CGAffineTransformMakeTranslation(0, 0);
                         self.label_page1_1.transform = CGAffineTransformMakeTranslation(0, 0);
                         self.label_page1_2.transform = CGAffineTransformMakeTranslation(0, 0);
                         self.label_page1_3.transform = CGAffineTransformMakeTranslation(0, 0);
                     }];
    
    self.label_page2_1 = [[UILabel alloc] initWithFrame:CGRectMake(kScreenWidth + 140, 150, 1000, 20)];
    self.label_page2_1.text = @"你没钱！";
    self.label_page2_1.font = [UIFont systemFontOfSize:24.0f];
    self.label_page2_1.textColor = [UIColor yellowColor];
    [self.label_page2_1 sizeToFit];
    [self.scrollView addSubview:self.label_page2_1];
    
    self.label_page2_2 = [[UILabel alloc] initWithFrame:CGRectMake(kScreenWidth + 140, 190, 1000, 20)];
    self.label_page2_2.text = @"你没钱！";
    self.label_page2_2.font = [UIFont systemFontOfSize:24.0f];
    self.label_page2_2.textColor = [UIColor brownColor];
    [self.label_page2_2 sizeToFit];
    [self.scrollView addSubview:self.label_page2_2];
    
    self.label_page2_3 = [[UILabel alloc] initWithFrame:CGRectMake(kScreenWidth + 140, 230, 1000, 20)];
    self.label_page2_3.text = @"你没钱！";
    self.label_page2_3.font = [UIFont systemFontOfSize:24.0f];
    self.label_page2_3.textColor = [UIColor blueColor];
    [self.label_page2_3 sizeToFit];
    [self.scrollView addSubview:self.label_page2_3];
    
    [self.view addSubview:_scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat currentX = scrollView.contentOffset.x;
    
    if (currentX <= kScreenWidth)
    {
        self.girlImageView.transform = CGAffineTransformMakeTranslation((kScreenWidth + 80.0f) * currentX / kScreenWidth, 0);
        self.label_page1_2.transform = CGAffineTransformMakeTranslation(- 2200 * currentX / kScreenWidth, 0);
    }
}

@end
