//
//  ThirdViewController.m
//  5.1NavigationController
//
//  Created by choushayne on 15/1/5.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)loadView{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor whiteColor];
    self.view = baseView;
    
    UIButton *push = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [push setTitle:@"push" forState:UIControlStateNormal];
    [push setFrame:CGRectMake(90, 60, 140, 35)];
    [push addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
    
    UIButton *pop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pop setTitle:@"pop" forState:UIControlStateNormal];
    [pop setFrame:CGRectMake(90, 150, 140, 35)];
    [pop addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pop];
    
    UIButton *root = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [root setTitle:@"root" forState:UIControlStateNormal];
    [root setFrame:CGRectMake(90, 240, 140, 35)];
    [root addTarget:self action:@selector(root) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:root];
    
    UIButton *index = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [index setTitle:@"index" forState:UIControlStateNormal];
    [index setFrame:CGRectMake(90, 330, 140, 35)];
    [index addTarget:self action:@selector(index) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:index];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target Action
- (void)push{
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

- (void)pop{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)root{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)index{
    UIViewController *secondVC = [[self.navigationController viewControllers] objectAtIndex:1];
    [self.navigationController popToViewController:secondVC animated:YES];
}

@end
