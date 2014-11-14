//
//  myTableViewController.h
//  1.1_UIAlertView
//
//  Created by choushayne on 14/11/14.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myTableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
{
    NSMutableArray *a;      //声明一个可变数组
}

- (IBAction)btn_exit:(id)sender;
- (IBAction)btn_edit:(id)sender;

@end
