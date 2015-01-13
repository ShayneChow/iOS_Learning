//
//  WeiboTableViewCell.m
//  WeiboDemo
//
//  Created by choushayne on 15/1/13.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "WeiboTableViewCell.h"
#import "Weibo.h"
#define WbColor(r,g,b) [UIColor colorWithHue:r/255.0 saturation:g/255.0 brightness:b/255.0 alpha:1] //颜色宏定义
#define WeiboTableViewCellControlSpacing 10 //控件间距
#define WeiboTableViewCellBackgroundColor WbColor(251,251,251)
#define WeiboGrayColor WbColor(50,50,50)
#define WeiboLightGrayColor WbColor(120,120,120)

#define WeiboTableViewCellAvatarWidth 40 //头像宽度
#define WeiboTableViewCellAvatarHeight WeiboTableViewCellAvatarWidth
#define WeiboTableViewCellUserNameFontSize 14
#define WeiboTableViewCellMbTypeWidth 13 //会员图标宽度
#define WeiboTableViewCellMbTypeHeight WeiboTableViewCellMbTypeWidth
#define WeiboTableViewCellCreateAtFontSize 12
#define WeiboTableViewCellSourceFontSize 12
#define WeiboTableViewCellTextFontSize 14

@interface WeiboTableViewCell(){
    UIImageView *_avatar;//头像
    UIImageView *_mbType;//会员类型
    UILabel *_userName;
    UILabel *_createAt;
    UILabel *_source;
    UILabel *_text;
}
@end

@implementation WeiboTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSubView];
    }
    return self;
}

#pragma mark 初始化视图
-(void)initSubView{
    //头像控件
    _avatar=[[UIImageView alloc]init];
    [self addSubview:_avatar];
    //用户名
    _userName=[[UILabel alloc]init];
    _userName.textColor = WeiboGrayColor;
    _userName.font=[UIFont systemFontOfSize:WeiboTableViewCellUserNameFontSize];
    [self addSubview:_userName];
    //会员类型
    _mbType=[[UIImageView alloc]init];
    [self addSubview:_mbType];
    //日期
    _createAt=[[UILabel alloc]init];
    _createAt.textColor=WeiboLightGrayColor;
    _createAt.font=[UIFont systemFontOfSize:WeiboTableViewCellCreateAtFontSize];
    [self addSubview:_createAt];
    //设备
    _source=[[UILabel alloc]init];
    _source.textColor=WeiboLightGrayColor;
    _source.font=[UIFont systemFontOfSize:WeiboTableViewCellSourceFontSize];
    [self addSubview:_source];
    //内容
    _text=[[UILabel alloc]init];
    _text.textColor=WeiboGrayColor;
    _text.font=[UIFont systemFontOfSize:WeiboTableViewCellTextFontSize];
    _text.numberOfLines=0;
    //    _text.lineBreakMode=NSLineBreakByWordWrapping;
    [self addSubview:_text];
}

#pragma mark 设置微博
-(void)setWeibo:(Weibo *)weibo{
    //设置头像大小和位置
    CGFloat avatarX=10,avatarY=10;
    CGRect avatarRect=CGRectMake(avatarX, avatarY, WeiboTableViewCellAvatarWidth, WeiboTableViewCellAvatarHeight);
    _avatar.image=[UIImage imageNamed:weibo.iconURL];
    _avatar.frame=avatarRect;
    
    
    //设置会员图标大小和位置
    CGFloat userNameX = CGRectGetMaxX(_avatar.frame) + WeiboTableViewCellControlSpacing ;
    CGFloat userNameY = avatarY;
    //根据文本内容取得文本占用空间大小
    CGSize userNameSize=[weibo.userName sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:WeiboTableViewCellUserNameFontSize]}];
    CGRect userNameRect=CGRectMake(userNameX, userNameY, userNameSize.width,userNameSize.height);
    _userName.text=weibo.userName;
    _userName.frame=userNameRect;
    
    
    //设置会员图标大小和位置
    CGFloat mbTypeX=CGRectGetMaxX(_userName.frame) + WeiboTableViewCellControlSpacing;
    CGFloat mbTypeY=avatarY;
    CGRect mbTypeRect=CGRectMake(mbTypeX, mbTypeY, WeiboTableViewCellMbTypeWidth, WeiboTableViewCellMbTypeHeight);
    _mbType.image=[UIImage imageNamed:weibo.mbtype];
    _mbType.frame=mbTypeRect;
    
    
    //设置发布日期大小和位置
    CGSize createAtSize=[weibo.createdAt sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:WeiboTableViewCellCreateAtFontSize]}];
    CGFloat createAtX=userNameX;
    CGFloat createAtY=CGRectGetMaxY(_avatar.frame)-createAtSize.height;
    CGRect createAtRect=CGRectMake(createAtX, createAtY, createAtSize.width, createAtSize.height);
    _createAt.text=weibo.createdAt;
    _createAt.frame=createAtRect;
    
    
    //设置设备信息大小和位置
    CGSize sourceSize=[weibo.source sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:WeiboTableViewCellSourceFontSize]}];
    CGFloat sourceX=CGRectGetMaxX(_createAt.frame)+WeiboTableViewCellControlSpacing;
    CGFloat sourceY=createAtY;
    CGRect sourceRect=CGRectMake(sourceX, sourceY, sourceSize.width,sourceSize.height);
    _source.text=weibo.source;
    _source.frame=sourceRect;
    
    
    //设置微博内容大小和位置
    CGFloat textX=avatarX;
    CGFloat textY=CGRectGetMaxY(_avatar.frame) + WeiboTableViewCellControlSpacing;
    CGFloat textWidth=self.frame.size.width - WeiboTableViewCellControlSpacing*2;
    CGSize textSize=[weibo.text boundingRectWithSize:CGSizeMake(textWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:WeiboTableViewCellTextFontSize]} context:nil].size;
    CGRect textRect=CGRectMake(textX, textY, textSize.width, textSize.height);
    _text.text=weibo.text;
    _text.frame=textRect;
    
    _height=CGRectGetMaxY(_text.frame) + WeiboTableViewCellControlSpacing;
}

#pragma mark 重写选择事件，取消选中
-(void)setSelected:(BOOL)selected animated:(BOOL)animated{
    
}

@end
