//
//  WWBusinessDetailProductCell.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WWBusinessDetailGoodsModel;
@interface WWBusinessDetailProductCell : UITableViewCell
/**
 *  商品数据模型
 */
@property (nonatomic,strong) WWBusinessDetailGoodsModel *goodsModel;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
