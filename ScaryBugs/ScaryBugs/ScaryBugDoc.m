//
//  ScaryBugDoc.m
//  ScaryBugs
//
//  Created by choushayne on 15/1/5.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugDoc

@synthesize data = _data;
//@synthesize thumbImage = _thumbImage;
//@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating{
    if ((self = [super init])) {
        self.data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
//        self.thumbImage = thumbImage;
//        self.fullImage = fullImage;
    }
    return self;
}

@end
