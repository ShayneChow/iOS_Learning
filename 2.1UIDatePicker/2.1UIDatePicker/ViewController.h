//
//  ViewController.h
//  2.1UIDatePicker
//
//  Created by choushayne on 14/11/17.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    IBOutlet UITextField *name;
    IBOutlet UITextField *phone;
    IBOutlet UITextField *bathday;
    IBOutlet UIDatePicker *date;
}


- (IBAction)btn_time:(id)sender;
- (IBAction)setText:(id)sender;
- (IBAction)setDate:(id)sender;
- (IBAction)btn_save:(id)sender;

@end

