//
//  CDTableViewCell.m
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDTableViewCell.h"

@implementation CDTableViewCell


- (instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *requiredId = @"friendId";
    CDTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:requiredId];
    if (cell == nil) {
        cell = [[CDTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:requiredId];
    }
    return cell;
}

- (void)setFriend:(CDFriend *)friend
{
    _friend = friend;
    self.imageView.image = [UIImage imageNamed:self.friend.icon];
    self.textLabel.text = self.friend.name;
    if (self.friend.vip==1) {
        [self.textLabel setTextColor:[UIColor redColor]];
    }else{
    [self.textLabel setTextColor:[UIColor blackColor]];
    }
    
    self.detailTextLabel.text = self.friend.intro;
}

@end
