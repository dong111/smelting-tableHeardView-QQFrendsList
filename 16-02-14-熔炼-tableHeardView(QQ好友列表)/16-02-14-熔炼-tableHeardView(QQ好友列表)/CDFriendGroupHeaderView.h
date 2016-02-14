//
//  CDFriendGroupHeaderView.h
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDFrendsGroup.h"

@interface CDFriendGroupHeaderView : UITableViewHeaderFooterView

//属性
@property (nonatomic,strong) CDFrendsGroup *friendsGroup;

+ (instancetype) headerViewWithTableView:(UITableView *)tableView;

@end
