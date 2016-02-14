//
//  CDTableViewCell.h
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDFriend.h"
@interface CDTableViewCell : UITableViewCell

@property (nonatomic,strong) CDFriend *friend;

- (instancetype) cellWithTableView:(UITableView *)tableView;

@end
