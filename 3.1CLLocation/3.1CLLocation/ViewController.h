//
//  ViewController.h
//  3.1CLLocation
//
//  Created by choushayne on 14/11/18.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>{
    
    IBOutlet UILabel *lable_height;
    IBOutlet UILabel *lable_latitude;
    IBOutlet UILabel *lable_longitude;
    CLLocationManager *manager;
}


@end

