//
//  YFMineViewController.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/17.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFMineViewController.h"

@interface YFMineViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation YFMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //nav
    [self initNav];
    //table
    [self initTable];
}
#pragma mark - nav
- (void)initNav{
        self.title = @"我 的";
}

#pragma mark - table
- (void)initTable{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor colorWithHexString:@"e8e8e8"];
    _tableView.scrollEnabled = NO;
    [self.view addSubview:_tableView];
}

#pragma mark - table delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }
    if (section == 1) {
        return 2;
    }
    if (section == 2) {
        return 4;
    }
    if (section == 3) {
        return 3;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"cell"];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *vw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 10)];
    vw.backgroundColor = [UIColor colorWithHexString:@"e8e8e8"];
    return vw;
}

@end
