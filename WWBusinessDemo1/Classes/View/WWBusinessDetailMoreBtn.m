//
//  HMAllCategoryButton.m
//  hm17Lottery
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailMoreBtn.h"
#import "UIView+MDRExtension.h"
// 屏幕宽度
#define KScreenWidth [UIScreen mainScreen].bounds.size.width
// 屏幕高度
#define KScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation WWBusinessDetailMoreBtn

#pragma mark - layoutSubviews方法,调整图片和文字的位置
- (void)layoutSubviews {

    [super layoutSubviews];
    
    // 调整图片框和文字的位置
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //self.titleLabel.x = - 30;
    self.imageView.x = KScreenWidth *0.5 + self.titleLabel.width * 0.5 + 5;

}

@end
