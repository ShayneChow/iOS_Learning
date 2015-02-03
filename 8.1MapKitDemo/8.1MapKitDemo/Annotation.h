//
//  Annotation.h
//  8.1MapKitDemo
//
//  Created by choushayne on 15/2/3.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject<MKAnnotation>

@property (nonatomic)       CLLocationCoordinate2D  coordinate;
@property (nonatomic, copy) NSString                *title;
@property (nonatomic, copy) NSString                *subtitle;

#pragma mark 自定义一个图片属性在创建大头针视图时使用
@property (nonatomic,strong) UIImage *image;

@end
