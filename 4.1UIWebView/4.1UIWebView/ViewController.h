//
//  ViewController.h
//  4.1UIWebView
//
//  Created by choushayne on 14/11/25.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *web;
@property (strong, nonatomic) IBOutlet UITextField *Textfield;

- (IBAction)Close:(id)sender;

@end

