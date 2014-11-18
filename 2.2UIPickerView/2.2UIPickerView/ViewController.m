//
//  ViewController.m
//  2.2UIPickerView
//
//  Created by choushayne on 14/11/18.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
//    UIPickerView *picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 20, 300, 200)];
//    [self.view addSubview:picker];
    
    a=[[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//设置自定义选择器显示的栏
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//设置自定义选择器每栏显示的行数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [a count];
}

//填充内容
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
        return [a objectAtIndex:row];
}

@end
