//
//  YFTabBarViewController.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFTabBarViewController.h"

//view
#import "YFTabBar.h"
//vc
#import "YFBaseNavViewController.h"
#import "YFShowProductViewController.h"
#import "YFContractListViewController.h"
#import "YFMineViewController.h"

@interface YFTabBarViewController ()
<
YFTabBarDelegate
>
@end

@implementation YFTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YFTabBar *tabBar = [[YFTabBar alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 49)];
    tabBar.YFTabBarDelegate = self;
    
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
    YFBaseNavViewController *oneVC = [[YFBaseNavViewController alloc]initWithRootViewController:[[YFShowProductViewController alloc]init]];
    YFBaseNavViewController *twoVC = [[YFBaseNavViewController alloc]initWithRootViewController:[[YFContractListViewController alloc]init]];
    YFBaseNavViewController *threeVC = [[YFBaseNavViewController alloc]init];
    YFBaseNavViewController *fourVC = [[YFBaseNavViewController alloc]initWithRootViewController:[[YFMineViewController alloc]init]];

    threeVC.view.backgroundColor = [UIColor blueColor];
    
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTitle:@"展品" image:GETIMAGE(@"主页") tag:1];
    UITabBarItem *item2 = [[UITabBarItem alloc]initWithTitle:@"拍卖" image:GETIMAGE(@"拍卖") tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc]initWithTitle:@"位置" image:GETIMAGE(@"位置") tag:3];
    UITabBarItem *item4 = [[UITabBarItem alloc]initWithTitle:@"我的" image:GETIMAGE(@"我的") tag:4];
    oneVC.tabBarItem = item1;
    twoVC.tabBarItem = item2;
    threeVC.tabBarItem = item3;
    fourVC.tabBarItem = item4;

    self.viewControllers = @[oneVC,twoVC,threeVC,fourVC];
}
#pragma mark -  中间按钮的点击事件
- (void)tabBar:(UITabBar *)tabBar didSelectPlusItem:(UIButton *)plusButton{
    NSLog(@"点击了中间的加号");
}

@end
