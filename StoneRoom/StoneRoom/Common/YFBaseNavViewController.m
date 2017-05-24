//
//  YFBaseNavViewController.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFBaseNavViewController.h"

@interface YFBaseNavViewController ()
<
UINavigationControllerDelegate,
UIGestureRecognizerDelegate
>
@end

@implementation YFBaseNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.translucent = NO;
    self.navigationBar.barTintColor = kThemeColor;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    //去掉背景影阴线
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    NSDictionary *titleAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:16],NSFontAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed=YES;
    }
    [super pushViewController:viewController animated:YES];
}

@end
