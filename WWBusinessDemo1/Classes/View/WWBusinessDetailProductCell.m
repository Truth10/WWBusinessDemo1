//
//  WWBusinessDetailProductCell.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailProductCell.h"

@implementation WWBusinessDetailProductCell
+ (instancetype)cellWithTableView:(UITableView *)tableView{

    static NSString *ID = @"product";
    WWBusinessDetailProductCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WWBusinessDetailProductCell" owner:nil options:nil] lastObject];
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
