//
//  WWBusinessDetailCommentModel.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailCommentModel.h"

@implementation WWBusinessDetailCommentModel

+ (instancetype)businessDetailCommentsModellWithDict:(NSDictionary *)dict{
    id obj = [[self alloc] init];

    [obj setValuesForKeysWithDictionary:dict];
    return obj;

}

+ (NSArray *)businessDetailCommentsModelWithDictArr:(NSArray *)dictArr{
    // 1.定义可变数组
        NSMutableArray *arrM = [NSMutableArray array];
    
        //2.遍历字典数组,字典转模型
        [dictArr enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            WWBusinessDetailCommentModel *model = [self businessDetailCommentsModellWithDict:obj];
            [arrM addObject:model];
        }];
        return arrM.copy;


}



@end
