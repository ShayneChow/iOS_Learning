//
//  Weibo.h
//  WeiboDemo
//
//  Created by choushayne on 15/1/13.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weibo : NSObject

#pragma mark - 属性
@property (nonatomic,assign) long long Id;//微博id
@property (nonatomic,copy) NSString *imageURL;//头像
@property (nonatomic,copy) NSString *userName;//发送用户
@property (nonatomic,assign) NSString *mbtype;//会员类型
@property (nonatomic,copy) NSString *createdAt;//创建时间
@property (nonatomic,copy) NSString *source;//设备来源
@property (nonatomic,copy) NSString *text;//微博内容

#pragma mark - 方法
#pragma mark 根据字典初始化微博对象
-(Weibo *)initWithDictionary:(NSDictionary *)dic;

#pragma mark 初始化微博对象（静态方法）
+(Weibo *)statusWithDictionary:(NSDictionary *)dic;

@end
