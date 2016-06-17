//
//  WWBusinessDetailContentCell.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WWBusinessDetailCommentModel;
@interface WWBusinessDetailCommentCell : UITableViewCell
/**
 *  评论的数据模型
 */
@property (nonatomic,strong) WWBusinessDetailCommentModel *commentModel;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
