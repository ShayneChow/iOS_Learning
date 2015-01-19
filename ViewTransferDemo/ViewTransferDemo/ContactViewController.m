//
//  ContactViewController.m
//  ViewTransferDemo
//
//  Created by choushayne on 15/1/19.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    self.tabBarItem.title=@"Contact";
    self.tabBarItem.image=[UIImage imageNamed:@"tabbar_contacts.png"];
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"tabbar_contactsHL.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
