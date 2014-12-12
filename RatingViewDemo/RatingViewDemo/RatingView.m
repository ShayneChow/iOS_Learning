//
//  RatingView.m
//  RatingViewDemo
//
//  Created by choushayne on 14/12/12.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "RatingView.h"

@implementation RatingView

- (void)drawRect:(CGRect)rect{

}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initGrayStarView];
        [self initYellowStarView];
        [self initRatingLable];
    }
    return self;
}

- (void)initGrayStarView{
    for (int index = 0; index < 5; index++) {
        UIImageView *grayStarView = [[UIImageView alloc] initWithFrame:CGRectZero];
        grayStarView.image = [UIImage imageNamed:@"gray"];
        [self addSubview:grayStarView];
    }
}

- (void)initYellowStarView{
    UIView *_baseView = [[UIView alloc] initWithFrame:CGRectZero];
    _baseView.backgroundColor = [UIColor clearColor];
    _baseView.clipsToBounds = YES;
    [self addSubview:_baseView];
    
    for (int index = 0; index < 5; index++) {
        UIImageView *yellowStarView = [[UIImageView alloc] initWithFrame:CGRectZero];
        yellowStarView.image = [UIImage imageNamed:@"yellow"];
        [self addSubview:yellowStarView];
    }
}

- (void)initRatingLable{
    UILabel *_ratingLable = [[UILabel alloc] initWithFrame:CGRectZero];
    [self addSubview:_ratingLable];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
}

@end
