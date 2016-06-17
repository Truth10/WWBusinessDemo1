//
//  WWBusinessDetailGoodsModel.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailGoodsModel.h"

@implementation WWBusinessDetailGoodsModel

+ (instancetype)businessDetailGoodsModellWithDict:(NSDictionary *)dict{
    id obj = [[self alloc] init];

    [obj setValuesForKeysWithDictionary:dict];
    return obj;
    
}

+ (NSArray *)businessDetailGoodsModelWithDictArr:(NSArray *)dictArr{

    // 1.定义可变数组
    NSMutableArray *arrM = [NSMutableArray array];
    
    //2.遍历字典数组,字典转模型
    [dictArr enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        WWBusinessDetailGoodsModel *model = [self businessDetailGoodsModellWithDict:obj];
        [arrM addObject:model];
    }];
    return arrM.copy;

}

////+ (instancetype)businessDetailGoodsModel{
//    // 1.取出商品字典数组
//   
//    
//   
//    NSMutableArray *arrM = [NSMutableArray array];
//    
//    // 2.遍历字典数组,字典转模型
//    [dictArr enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        WWBusinessDetailGoodsModel *model = [self businessDetailGoodsModellWithDict:obj];
//        [arrM addObject:model];
//    }];
//    return arrM.copy;
//}



- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

@end
