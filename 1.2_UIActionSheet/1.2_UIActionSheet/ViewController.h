//
//  ViewController.h
//  1.2_UIActionSheet
//
//  Created by choushayne on 14/11/14.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate>{
    
    IBOutlet UITextView *tv1;
    IBOutlet UILabel *lable1;
}

- (IBAction)btn_as:(id)sender;

@end

