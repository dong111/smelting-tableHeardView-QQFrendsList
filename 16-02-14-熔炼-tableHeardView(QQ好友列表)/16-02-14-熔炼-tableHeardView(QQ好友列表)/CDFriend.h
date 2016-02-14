//
//  CDFriend.h
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDFriend : NSObject

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *intro;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) NSInteger vip;


- (instancetype) initWithDic:(NSDictionary *)dic;

+ (instancetype) friendWithDic:(NSDictionary *)dic;


+ (NSArray *) friendsList;

@end
