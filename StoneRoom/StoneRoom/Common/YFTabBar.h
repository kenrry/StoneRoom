//
//  YFTabBar.h
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YFTabBarDelegate <UITabBarDelegate>

@required
- (void)tabBar:(UITabBar *)tabBar didSelectPlusItem:(UIButton *)plusButton;

@end

@interface YFTabBar : UITabBar

//特定的代理方法
@property (nonatomic, assign) id<YFTabBarDelegate> YFTabBarDelegate;

@end
