//
//  WWBusinessDetailContentCell.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailCommentCell.h"

@implementation WWBusinessDetailCommentCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{

    static NSString *ID = @"coment";
    WWBusinessDetailCommentCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WWBusinessDetailCommentCell" owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
