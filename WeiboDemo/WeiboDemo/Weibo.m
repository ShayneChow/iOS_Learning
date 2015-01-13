//
//  Weibo.m
//  WeiboDemo
//
//  Created by choushayne on 15/1/13.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo

#pragma mark 根据字典初始化微博对象
-(Weibo *)initWithDictionary:(NSDictionary *)dic{
    if(self=[super init]){
        self.Id=[dic[@"Id"] longLongValue];
        self.iconURL=dic[@"iconURL"];
        self.userName=dic[@"userName"];
        self.mbtype=dic[@"mbtype"];
        self.createdAt=dic[@"createdAt"];
        self.source=dic[@"source"];
        self.text=dic[@"text"];
    }
    return self;
}

#pragma mark 初始化微博对象（静态方法）
+(Weibo *)weiboWithDictionary:(NSDictionary *)dic{
    Weibo *weibo = [[Weibo alloc]initWithDictionary:dic];
    return weibo;
}

-(NSString *)source{
    return [NSString stringWithFormat:@"来自 %@",_source];
}

@end
