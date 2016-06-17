//
//  WWBusinessDetailModel.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

/**
 *  商家数据模型
 */

#import <Foundation/Foundation.h>

@interface WWBusinessDetailModel : NSObject

@property (nonatomic,copy) NSString *shop_id;       // 商店ID
@property (nonatomic,copy) NSString *cover;         // 图片
@property (nonatomic,copy) NSString *name;          // 商店名称
@property (nonatomic,copy) NSString *score;         // 评分
@property (nonatomic,copy) NSString *server;        // 服务项目
@property (nonatomic,copy) NSString *address;       // 地址
@property (nonatomic,copy) NSString *phone;         // 电话
@property (nonatomic,copy) NSString *intro;         // 详情


+ (instancetype)BusinessDetailModelWithDict:dict;
@end
