//
//  ViewController.m
//  1.2_UIActionSheet
//
//  Created by choushayne on 14/11/14.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_as:(id)sender {
    UIActionSheet *act_sheet = [[UIActionSheet alloc] initWithTitle:@"语言选择" delegate:self cancelButtonTitle:@"OK" destructiveButtonTitle:@"中文" otherButtonTitles:@"English",@"日本语", nil];
    [act_sheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *t = [actionSheet buttonTitleAtIndex:buttonIndex];
    if ([t isEqualToString:@"中文"]) {
        tv1.text = @"从前的从前，有个姑娘叫做小红帽，她的外婆被狼吃了，最后她也被狼吃了，就这。";
        lable1.text = @"小红帽";
    }else if ([t isEqualToString:@"English"]){
        tv1.text = @"Long long ago, there is a little girl named Little Red Riding Hood.";
        lable1.text = @"Little Red Riding Hood";
    }else if ([t isEqualToString:@"日本语"]){
        tv1.text = @"你就当这是日语如何.";
        lable1.text = @"日本小红帽";
    }
}

@end
