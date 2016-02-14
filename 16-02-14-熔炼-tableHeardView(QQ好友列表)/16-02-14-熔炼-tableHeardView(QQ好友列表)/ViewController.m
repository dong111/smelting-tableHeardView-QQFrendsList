//
//  ViewController.m
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import "ViewController.h"
#import "CDFrendsGroup.h"
#import "CDFriend.h"
#import "CDTableViewCell.h"
#import "CDFriendGroupHeaderView.h"
@interface ViewController ()

@property (nonatomic,strong) NSArray *friendroups;

@end

@implementation ViewController

//懒加载
- (NSArray *)friendroups
{
    if (_friendroups==nil) {
        _friendroups = [CDFrendsGroup frendGroupsList];
    }
    return _friendroups;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //测试数据
    NSLog(@"%ld",self.friendroups.count);
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    CDFriendGroupHeaderView *headerView = [CDFriendGroupHeaderView headerViewWithTableView:tableView];
    
    
    return headerView;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.friendroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     CDFrendsGroup *friendGroup = self.friendroups[section];
    return friendGroup.friends.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CDFrendsGroup *friendGroup =  self.friendroups[indexPath.section];
    CDFriend *friend = friendGroup.friends[indexPath.row];
    CDTableViewCell *cell = [[CDTableViewCell alloc] cellWithTableView:tableView];
    cell.friend =friend;
    return cell;
}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
