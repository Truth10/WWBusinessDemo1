//
//  WWBusinessDetailHeader.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WWBusinessDetailModel;
@interface WWBusinessDetailHeader : UIView

// 数据模型
@property (nonatomic,strong) WWBusinessDetailModel *businessDetailModel;

// 加载xib来创建BusinessDetailHeaderVc得方法
+ (instancetype)BusinessDetailHeaderVc;
@end
