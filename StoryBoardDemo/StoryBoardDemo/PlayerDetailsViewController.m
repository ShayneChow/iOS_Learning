//
//  PlayerDetailsViewController.m
//  StoryBoardDemo
//
//  Created by choushayne on 14/12/25.
//  Copyright (c) 2014年 ShayneChow. All rights reserved.
//

#import "PlayerDetailsViewController.h"

@interface PlayerDetailsViewController ()

@end

@implementation PlayerDetailsViewController
{
    NSString *_game;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailLabel.text = _game;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
}//点击 tableView section 即可唤出键盘

- (IBAction)cancel:(id)sender
{
    [self.delegate playerDetailsViewControllerDidCancel:self];
    NSLog(@"Did Cancel");
}
- (IBAction)done:(id)sender
{
    Player *player = [[Player alloc] init];
    player.name = self.nameTextField.text;
    //player.game = @"Chess";
    player.game = _game;
    player.rating = 1;
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
    NSLog(@"Did Save");
}

- (IBAction)TextField_DidEndOnExit:(id)sender {
    // 隐藏键盘.
    [sender resignFirstResponder];

}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
        _game = @"Chess";
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc PlayerDetailsViewController");
    self.detailLabel.text = _game;
}

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)theGame
{
    _game = theGame;
    self.detailLabel.text = _game;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate = self;
        gamePickerViewController.game = _game;
    }
}

@end
