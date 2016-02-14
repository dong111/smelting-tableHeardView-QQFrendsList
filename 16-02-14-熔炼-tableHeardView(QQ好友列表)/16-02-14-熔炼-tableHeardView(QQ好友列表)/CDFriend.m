//
//  CDFriend.m
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDFriend.h"

@implementation CDFriend

- (instancetype) initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+ (instancetype) friendWithDic:(NSDictionary *)dic{
    return [[CDFriend alloc] initWithDic:dic];
}


+ (NSArray *) friendsList{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"friends" ofType:@"plist"];
    
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *tmpArray  = [NSMutableArray array];
    
    for (NSDictionary *dic in dicArray) {
        CDFriend *friend = [[CDFriend alloc] initWithDic:dic];
        [tmpArray addObject:friend];
    }
    
    return tmpArray;
}


@end
