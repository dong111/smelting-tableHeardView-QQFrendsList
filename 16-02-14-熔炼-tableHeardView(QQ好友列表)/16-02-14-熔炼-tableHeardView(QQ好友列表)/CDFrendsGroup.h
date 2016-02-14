//
//  CDFrendsGroup.h
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CDFriend;

@interface CDFrendsGroup : NSObject
/**
 *  分组好友列表
 */
@property (nonatomic,strong) NSArray *friends;
/**
 *  分组名称
 */
@property (nonatomic,copy) NSString *name;
/**
 *  分组在线人数
 */
@property (nonatomic,assign) NSInteger online;


@property (nonatomic,assign,getter=isOpenGroup) BOOL openGroup;

- (instancetype) initWithDic:(NSDictionary *)dic;

+ (instancetype) frendGroupWithDic:(NSDictionary *)dic;


+ (NSArray *) frendGroupsList;
@end
