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
    UIActionSheet *act_sheet = [[UIActionSheet alloc] initWithTitle:@"提示" delegate:nil cancelButtonTitle:@"OK" destructiveButtonTitle:@"Destory" otherButtonTitles:@"1",@"2", nil];
    [act_sheet showInView:self.view];
}

@end
