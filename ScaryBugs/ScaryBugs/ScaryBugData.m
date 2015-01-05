//
//  ScaryBugData.m
//  ScaryBugs
//
//  Created by choushayne on 15/1/5.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
