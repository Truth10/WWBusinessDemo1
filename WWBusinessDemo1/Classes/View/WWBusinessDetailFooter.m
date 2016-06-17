//
//  WWBusinessDetailFooter.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailFooter.h"

@implementation WWBusinessDetailFooter

// 加载xib来创建BusinessDetailHeaderVc得方法
+ (instancetype)BusinessDetailFooterVc{
 return [[[NSBundle mainBundle] loadNibNamed:@"WWBusinessDetailFooter" owner:nil options:nil] lastObject];
}

@end
