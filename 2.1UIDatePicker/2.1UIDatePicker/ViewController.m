//
//  ViewController.m
//  2.1UIDatePicker
//
//  Created by choushayne on 14/11/17.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"
#import "bathdayViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    //创建日期选择器
//    UIDatePicker *date=[[UIDatePicker alloc] initWithFrame:CGRectMake(10, 50, 200, 180)];
//    NSLocale *locale=[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
//    date.locale=locale;
//    date.minuteInterval=5;
//    //date.datePickerMode=UIDatePickerModeCountDownTimer;
//    [self.view addSubview:date];
    
    [date setHidden:YES];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//实现日期选择器的显示
- (IBAction)btn_time:(id)sender {
    [date setHidden:NO];
    [bathday resignFirstResponder];
}

//实现虚拟键盘关闭
- (IBAction)setText:(id)sender {
    [name resignFirstResponder];
    [phone resignFirstResponder];
}

//实现在日期选择器上选择的日期在文本框中显示
- (IBAction)setDate:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY/MM/dd"];
    NSString *s = [formatter stringFromDate:date.date];
    bathday.text = s;
    [date setHidden:YES];
}

//实现保存
- (IBAction)btn_save:(id)sender {
    if (name.text.length == 0 || phone.text.length == 0 || bathday.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你的信息不完整" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }else{
        UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"成功添加好友生日信息" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert1 show];
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}
@end
