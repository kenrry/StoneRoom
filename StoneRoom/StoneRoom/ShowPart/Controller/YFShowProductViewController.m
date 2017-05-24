//
//  YFShowProductViewController.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFShowProductViewController.h"
//vc
#import "YFShowProductCollectViewController.h"

@interface YFShowProductViewController ()
<
YFShowProductCollectViewControllerDelegate
>
@property (nonatomic, strong) YFShowProductCollectViewController *showVC;

@end

@implementation YFShowProductViewController
{
    UIView *timeVw;
    UILabel *titleLb;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.automaticallyAdjustsScrollViewInsets =  NO;
    self.navigationController.navigationBar.translucent = YES;
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barTintColor = kThemeColor;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _showVC = [[YFShowProductCollectViewController alloc]init];
    _showVC.view.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight - 49);
    _showVC.delegate = self;
    [self addChildViewController:_showVC];
    [self.view addSubview:_showVC.view];
    
    //nav定义
    [self initNav];
}

#pragma mark - nav
- (void)initNav{
    titleLb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 120, 44)];
    titleLb.font = [UIFont boldSystemFontOfSize:17];
    titleLb.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0];
    titleLb.text = @"产 品";
    titleLb.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = titleLb;
    //创建左边的导航栏按钮
    timeVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20)];
    [self.view addSubview:timeVw];
}
#pragma mark - 代理方法
- (void)didScrollWithCollectView:(UICollectionView *)collectView{
    CGFloat contentY = collectView.contentOffset.y;
    CGFloat alpha = contentY / 150.0;
    if (alpha >1) {
        alpha = 1;
    }else if (alpha < 0){
        alpha = 0;
    }
    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:244/255.0 green:149/255.0 blue:132/255.0 alpha:alpha];
    timeVw.backgroundColor = [UIColor colorWithRed:244/255.0 green:149/255.0 blue:132/255.0 alpha:alpha];
    titleLb.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:alpha];
}

- (void)PushVC:(UIViewController *)vc{
    
}
@end
