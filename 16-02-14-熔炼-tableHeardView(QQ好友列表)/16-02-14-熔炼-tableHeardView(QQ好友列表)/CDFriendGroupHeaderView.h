//
//  CDFriendGroupHeaderView.h
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDFrendsGroup.h"
@class CDFriendGroupHeaderView;

@protocol CDFriendGroupHeaderViewDelegate <NSObject>
//点击分组事件
- (void) groupBtnClick:(CDFriendGroupHeaderView *)headerView;
@end


@interface CDFriendGroupHeaderView : UITableViewHeaderFooterView

//属性
@property (nonatomic,strong) CDFrendsGroup *friendsGroup;

@property (nonatomic,weak) id<CDFriendGroupHeaderViewDelegate> delegate;

+ (instancetype) headerViewWithTableView:(UITableView *)tableView;

@end
