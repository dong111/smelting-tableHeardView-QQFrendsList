//
//  CDFriendGroupHeaderView.m
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDFriendGroupHeaderView.h"

@interface CDFriendGroupHeaderView ()
@property (nonatomic,weak) UIButton *nameView;
@property (nonatomic,weak) UILabel *countView;

@end



@implementation CDFriendGroupHeaderView

+ (instancetype)headerViewWithTableView:(UITableView *)tableView
{
    NSString *required = @"headerId";
    CDFriendGroupHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:required];
    if (headerView == nil) {
        headerView = [[CDFriendGroupHeaderView alloc] initWithReuseIdentifier:required];
    }
    return headerView;
}

//完成能初始化控件时候能完成的操作
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        //按钮设置
        UIButton *nameView = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:nameView];
        self.nameView = nameView;
        //背景设置
        [self.nameView setBackgroundImage:[UIImage imageNamed:@"buddy_header_bg"] forState:UIControlStateNormal];
        [self.nameView setBackgroundImage:[UIImage imageNamed:@"buddy_header_bg_highlighted"] forState:UIControlStateHighlighted];
        self.nameView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.nameView.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        self.nameView.titleEdgeInsets =UIEdgeInsetsMake(0, 10, 0, 0);
//        self.nameView.imageView.image = [UIImage imageNamed:@"buddy_header_arrow"]; //这样设置图片不成功，imageView属性是readonly
        [self.nameView setImage:[UIImage imageNamed:@"buddy_header_arrow"] forState:UIControlStateNormal];
        [self.nameView setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        //Label设置
        UILabel *lable = [[UILabel alloc] init];
        self.countView = lable;
        [self.contentView addSubview:lable];
        
        
        //添加按钮事件代理
        [self.nameView addTarget:self action:@selector(nameBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
/**
 *  名称按钮点击事件
 */
- (void) nameBtnClick:(CDFriendGroupHeaderView *)headerView
{
    self.friendsGroup.openGroup = !self.friendsGroup.openGroup;
    //通知viewControll 重新加载数据
    if ([self.delegate respondsToSelector:@selector(groupBtnClick:)]) {
        [self.delegate groupBtnClick:self];
    }
}


//继承该方法用来描述子控件的frame
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.nameView.frame  = self.bounds;
    //设置label的frame
    CGFloat countW = 50;
    CGFloat countX = self.bounds.size.width - 10 -countW ;
    CGFloat countY = 0;
    CGFloat countH = self.bounds.size.height;
    self.countView.frame = CGRectMake(countX, countY, countW, countH);
}

//给子控件赋值
- (void)setFriendsGroup:(CDFrendsGroup *)friendsGroup
{
    _friendsGroup = friendsGroup;
    [self.nameView setTitle:friendsGroup.name forState:UIControlStateNormal];
    NSString *countText =  [NSString stringWithFormat:@"%ld/%ld",friendsGroup.online,friendsGroup.friends.count];
    [self.countView setText:countText];
    
}


@end
