//
//  WeiboTableViewCell.h
//  WeiboDemo
//
//  Created by choushayne on 15/1/13.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Weibo;
@interface WeiboTableViewCell : UITableViewCell

#pragma mark 微博对象
@property (nonatomic,strong) Weibo *weibo;

#pragma mark 单元格高度
@property (assign,nonatomic) CGFloat height;

@end
