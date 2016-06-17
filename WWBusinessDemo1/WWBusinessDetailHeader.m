//
//  WWBusinessDetailHeader.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailHeader.h"
#import "WWBusinessDetailModel.h"
@interface WWBusinessDetailHeader ()
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *starView;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@property (weak, nonatomic) IBOutlet UILabel *introLabel;

@end


@implementation WWBusinessDetailHeader
- (IBAction)mapBtnClick:(id)sender {
}
- (IBAction)dailBtnClick:(id)sender {
}

// 加载xib来创建BusinessDetailHeaderVc的方法
+ (instancetype)BusinessDetailHeaderVc{
    
    return [[[NSBundle mainBundle] loadNibNamed:@"WWBusinessDetailHeader" owner:nil options:nil] lastObject];
}

// 重写模型属性的set方法,分发数据
- (void)setBusinessDetailModel:(WWBusinessDetailModel *)businessDetailModel{
    _businessDetailModel = businessDetailModel;

    //[_iconBtn setImage:[UIImage imageNamed:] forState:UIControlStateNormal];
    _titleLabel.text = businessDetailModel.name;
    _scoreLabel.text = [NSString stringWithFormat:@"%@.0分",businessDetailModel.score];
    _subtitleLabel.text = businessDetailModel.server;
    _addressLabel.text = businessDetailModel.address;
    _phoneNumberLabel.text = businessDetailModel.phone;
    _introLabel.text = businessDetailModel.intro;
}
@end
