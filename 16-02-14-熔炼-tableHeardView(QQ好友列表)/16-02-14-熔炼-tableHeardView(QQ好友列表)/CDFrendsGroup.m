//
//  CDFrendsGroup.m
//  16-02-14-熔炼-tableHeardView(QQ好友列表)
//
//  Created by 陈栋 on 16/2/14.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDFrendsGroup.h"
#import "CDFriend.h"

@implementation CDFrendsGroup


- (instancetype) initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+ (instancetype) frendGroupWithDic:(NSDictionary *)dic{
    return [[CDFrendsGroup alloc] initWithDic:dic];
}


+ (NSArray *) frendGroupsList{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"friends" ofType:@"plist"];
    
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *tmpArray  = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        CDFrendsGroup *frendGroup = [[CDFrendsGroup alloc] initWithDic:dic];
        //字典转模型
        //1获取frends
        //遍历frends 生成对象集合
        NSMutableArray *frendList = [NSMutableArray array];
        for (NSDictionary *friendDic in frendGroup.friends) {
            CDFriend *friend = [[CDFriend alloc] initWithDic:friendDic];
            [frendList addObject:friend];
        }

        frendGroup.friends = frendList;
        [tmpArray addObject:frendGroup];
    }
    
    return tmpArray;
}


@end
