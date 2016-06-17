//
//  WWBusinessDetailTabelVC.m
//  WWBusinessDemo1
//
//  Created by mac on 16/6/16.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "WWBusinessDetailTabelVC.h"
#import "WWBusinessDetailHeader.h"
#import "WWBusinessDetailFooter.h"
#import "WWBusinessDetailProductCell.h"
#import "WWBusinessDetailCommentCell.h"
#import "WWBusinessDetailMoreBtn.h"
#import "AFNetworking.h"
#import "WWBusinessDetailModel.h"
#import "WWBusinessDetailGoodsModel.h"
#import "WWBusinessDetailCommentModel.h"
// 屏幕宽度
#define KScreenWidth [UIScreen mainScreen].bounds.size.width
// 屏幕高度
#define KScreenHeight [UIScreen mainScreen].bounds.size.height
#define spacing 10
#define margin 12
@interface WWBusinessDetailTabelVC ()
// 数据模型
@property (nonatomic,strong) WWBusinessDetailModel *businessDetailModel;

// 商品模型数组
@property (nonatomic,strong) NSArray *goodsArr;

// 评论列表模型数组
@property (nonatomic,strong) NSArray *commentsArr;

// 头部视图
@property (nonatomic,strong) WWBusinessDetailHeader *headerView;
@end

@implementation WWBusinessDetailTabelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    
    // 发送网络请求,获取数据
    [self shopid];
}

#pragma mark - 控件的懒加载
- (UITableViewHeaderFooterView *)headerView{
    if (_headerView == nil) {
       _headerView = [[UITableViewHeaderFooterView alloc] init];
    }

    return _headerView;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // 加载tableHeaderView
    self.headerView = [WWBusinessDetailHeader BusinessDetailHeaderVc];
    self.tableView.tableHeaderView = self.headerView;
    // 加载tableFooterView
    self.tableView.tableFooterView = [WWBusinessDetailFooter BusinessDetailFooterVc];

}
#pragma mark -获取商家
- (void)shopid{
    // 1.创建管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //1.1 改默认响应方式的可接收类型
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    
    NSDictionary *dic = @{@"shop_id":[NSNumber numberWithInt:3]};
    
    
    [manager POST:@"http://iosapi.itcast.cn/life/shop_info.json.php" parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSInteger ID = responseObject[@"id"];
       // NSLog(@"ID:%@",responseObject[@"id"]);
        NSLog(@"responseObject:%@",responseObject[@"name"]);
        
        // 创建模型,字典转模型
        WWBusinessDetailModel *detailModel = [WWBusinessDetailModel BusinessDetailModelWithDict:responseObject];
        self.headerView.businessDetailModel = detailModel;
        
        // 商品模型数组
        self.goodsArr = [WWBusinessDetailGoodsModel businessDetailGoodsModelWithDictArr:responseObject[@"goods"]];
        
        // 评论列表模型数组
        self.commentsArr = [WWBusinessDetailCommentModel businessDetailCommentsModelWithDictArr:responseObject[@"comment_list"]];
        // 刷新列表
        [self.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error:%@",[error localizedDescription]);
    }];
    
}




#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger a = 0;
    if (section == 0) {
        a = 2;
    }else if (section == 1){
        a = 2;
    }
    return a;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    
    if (indexPath.section == 0) {
        
        cell = [WWBusinessDetailProductCell cellWithTableView:tableView];
        // 设置数据
        
        
    }else if (indexPath.section == 1){
        
        cell = [WWBusinessDetailCommentCell cellWithTableView:tableView];
        
        // 设置数据
        
    }
    return cell;
}

#pragma mark - 设置屏幕头部视图

#pragma mark - 设置屏幕尾部视图

#pragma mark - 设置每组头部视图的代理方法
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *sectionHeaderView = nil;
    if (section == 0) {
      
        sectionHeaderView = [[UIView alloc] init];
        [self setUpLabelText:@"商品" InSectionHeaderView:sectionHeaderView];
        
    }else if(section == 1) {
        sectionHeaderView = [[UIView alloc] init];
        [self setUpLabelText:@"用户评价" InSectionHeaderView:sectionHeaderView];
    }
    return sectionHeaderView;
}

// MARK: - 封装添加组头部视图的方法
- (void)setUpLabelText:(NSString *)text InSectionHeaderView:(UIView *)sectionHeaderView{
    UILabel *productlbl = [[UILabel alloc] initWithFrame:CGRectMake(margin, spacing, KScreenWidth, 37)];
    [sectionHeaderView addSubview:productlbl];
    productlbl.text = text;
    productlbl.textColor = [UIColor redColor];
    productlbl.backgroundColor = [UIColor whiteColor];
    productlbl.layoutMargins = UIEdgeInsetsMake(0, margin, 0, 0);
    
    // 在sectionHeaderView上添加占位视图
    UIView *placeView = [[UIView alloc] initWithFrame:CGRectMake(0, spacing, margin, 37)];
    placeView.backgroundColor = [UIColor whiteColor];
    [sectionHeaderView addSubview:placeView];
    
    // 底部分割线
    UIView *spaceView = [[UIView alloc] initWithFrame:CGRectMake(0, 46, KScreenWidth, 1)];
    spaceView.backgroundColor = [UIColor lightGrayColor];
    [sectionHeaderView addSubview:spaceView];

}
#pragma mark - 设置每组尾部视图的代理方法
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *sectionFooterView = nil;
    if (section == 0) {
      
       // [self setUpMoreBtnText:@"更多" InSectionFooterView:sectionFooterView];
        sectionFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 37)];
        WWBusinessDetailMoreBtn *moreBtn = [[WWBusinessDetailMoreBtn alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 37)];
        moreBtn.backgroundColor = [UIColor whiteColor];
        [sectionFooterView addSubview:moreBtn];
        [moreBtn setTitle:@"更多" forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [moreBtn setImage:[UIImage imageNamed:@"搜索框左边的箭头"] forState:UIControlStateNormal];
        
        // 查看更多按钮的点击事件
        [moreBtn addTarget:self action:@selector(moreProductBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    }else if(section == 1) {
//        sectionFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 37)];
//        sectionFooterView.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
        sectionFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 37)];
        WWBusinessDetailMoreBtn *moreBtn = [[WWBusinessDetailMoreBtn alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 37)];
        moreBtn.backgroundColor = [UIColor whiteColor];
        [sectionFooterView addSubview:moreBtn];
        [moreBtn setTitle:@"查看更多评论" forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [moreBtn setImage:[UIImage imageNamed:@"搜索框左边的箭头"] forState:UIControlStateNormal];
        
        // 查看更多用户评论按钮的点击事件
        [moreBtn addTarget:self action:@selector(moreUserCommentsBtnClick) forControlEvents:UIControlEventTouchUpInside];

    }
    return sectionFooterView;

}

#pragma mark - 每组cell底部按钮的点击事件
// 加载更多商品按钮的点击事件
- (void)moreProductBtnClick{

}

// 显示更多用户评论按钮的点击事件
- (void)moreUserCommentsBtnClick{

}

#pragma mark - 返回高度的代理方法
// 组头
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    NSInteger height = 0;
    if (section == 0) {
        height = 47;
    }else if(section == 1){
        height = 47;
    }
    return height;
}

// 组尾
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    NSInteger sectionFooterHeight = 0;
    if (section == 0) {
        sectionFooterHeight = 37;
    }else if(section == 1){
        sectionFooterHeight = 47;
    }
    return sectionFooterHeight;

}

#pragma mark - 懒加载
- (WWBusinessDetailModel *)businessDetailModel{
    if (_businessDetailModel == nil) {
        _businessDetailModel = [[WWBusinessDetailModel alloc] init];
    }
    
    return _businessDetailModel;
}

- (NSArray *)goodsArr{
    if (_goodsArr == nil) {
        _goodsArr = [NSArray array];
    }
    return _goodsArr;
}

- (NSArray *)commentsArr{
    if (_commentsArr == nil) {
        _commentsArr = [NSArray array];
    }
    return _commentsArr;
}
@end
