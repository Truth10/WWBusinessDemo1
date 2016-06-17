//
//  WWBusinessDetailModel.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailModel.h"

@implementation WWBusinessDetailModel

+ (instancetype)BusinessDetailModelWithDict:dict{
    id obj = [[self alloc] init];
    [obj setValuesForKeysWithDictionary:dict];
    return obj;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
   
}
@end
