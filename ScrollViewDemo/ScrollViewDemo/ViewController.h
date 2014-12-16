//
//  ViewController.h
//  ScrollViewDemo
//
//  Created by choushayne on 14/12/16.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;//这是基本！

@property (strong, nonatomic) UIImageView *girlImageView;
@property (strong, nonatomic) UILabel *label_page1_1;
@property (strong, nonatomic) UILabel *label_page1_2;
@property (strong, nonatomic) UILabel *label_page1_3;

@end

