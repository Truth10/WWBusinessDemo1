//
//  WWBusinessDetailProductCell.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//


#import "WWBusinessDetailProductCell.h"
#import "WWBusinessDetailGoodsModel.h"

@interface WWBusinessDetailProductCell ()
/**
 *  商品名
 */
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
/**
 *  简介
 */
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
/**
 *  价格
 */
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end


@implementation WWBusinessDetailProductCell


#pragma mark - 重写数据模型的set方法,字典转模型
- (void)setGoodsModel:(WWBusinessDetailGoodsModel *)goodsModel{
    _goodsModel = goodsModel;
    
    _titleLabel.text = goodsModel.title;
    _contentLabel.text = goodsModel.content;
    _priceLabel.text = [NSString stringWithFormat:@""];

}
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
