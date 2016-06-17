//
//  WWBusinessDetailGoodsModel.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WWBusinessDetailGoodsModel : NSObject

@property (nonatomic,strong) NSArray *goodsArr;                           // 字典数组
@property (nonatomic,copy) NSString *title;                               // 标题
@property (nonatomic,copy) NSString *content;                             // 内容
@property (nonatomic,copy) NSString *price;                               // 价格

+ (NSArray *)businessDetailGoodsModelWithDictArr:(NSArray *)dictArr;
@end
