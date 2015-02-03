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

@end
