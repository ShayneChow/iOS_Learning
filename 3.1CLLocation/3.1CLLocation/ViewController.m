//
//  ViewController.m
//  3.1CLLocation
//
//  Created by choushayne on 14/11/18.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    manager = [[CLLocationManager alloc] init];     //创建管理和提供位置服务的类的对象
    manager.delegate = self;        //设置委托
    [manager startUpdatingLocation];        //开始更新位置
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//定位成功要实现的方法
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation *current_location = [locations lastObject];
    //获取经度
    lable_longitude.text = [NSString stringWithFormat:@"%3.5f",current_location.coordinate.longitude];
    
    //获取纬度
    lable_latitude.text = [NSString stringWithFormat:@"%3.5f",current_location.coordinate.latitude];
    
    //获取高度
    lable_height.text = [NSString stringWithFormat:@"%3.5f",current_location.altitude];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
