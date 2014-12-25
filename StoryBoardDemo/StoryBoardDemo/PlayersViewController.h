//
//  PlayersViewController.h
//  StoryBoardDemo
//
//  Created by choushayne on 14/12/24.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players; 

@end
