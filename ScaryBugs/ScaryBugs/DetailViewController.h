//
//  DetailViewController.h
//  ScaryBugs
//
//  Created by choushayne on 15/1/5.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

