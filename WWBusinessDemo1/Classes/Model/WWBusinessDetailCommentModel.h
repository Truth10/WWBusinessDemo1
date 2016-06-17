//
//  WWBusinessDetailCommentModel.h
//  WWBusinessDemo1
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WWBusinessDetailCommentModel : NSObject

@property (nonatomic,strong) NSArray *commentsArr;  // 评论字典数组
@property (nonatomic,copy) NSString *name;          // 姓名
@property (nonatomic,copy) NSString *photo;         // 图片
@property (nonatomic,copy) NSString *time;          // 时间
@property (nonatomic,copy) NSString *comment;       // 评论
@property (nonatomic,copy) NSString *score;         // 分数

+ (NSArray *)businessDetailCommentsModelWithDictArr:(NSArray *)dictArr;
@end
