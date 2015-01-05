//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by choushayne on 15/1/5.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
//@property (strong) UIImage *thumbImage;
//@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
