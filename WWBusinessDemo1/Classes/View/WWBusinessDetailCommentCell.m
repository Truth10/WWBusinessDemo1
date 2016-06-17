//
//  WWBusinessDetailContentCell.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailCommentCell.h"
#import "WWBusinessDetailCommentModel.h"

@interface WWBusinessDetailCommentCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIView *starView;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@end

@implementation WWBusinessDetailCommentCell

#pragma mark - 重写数据模型的set方法,字典转模型
- (void)setCommentModel:(WWBusinessDetailCommentModel *)commentModel{
    _commentModel = commentModel;
//    _iconView.image = [UIImage imageNamed:];
    _nameLabel.text = commentModel.name;
    _timeLabel.text = commentModel.time;
    _commentLabel.text = commentModel.comment;

}

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
