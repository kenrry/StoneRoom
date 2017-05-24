//
//  YFTabBar.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFTabBar.h"

CGFloat const plusButtonWidth = 60.0;

@interface YFTabBar ()
//➕号按钮
@property (nonatomic, strong) UIButton *plusBtn;
@end

@implementation YFTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _plusBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, plusButtonWidth,plusButtonWidth)];
        _plusBtn.layer.cornerRadius = 30.0f;
        _plusBtn.clipsToBounds = YES;
        _plusBtn.backgroundColor = kThemeColor;
        _plusBtn.center = CGPointMake(kScreenWidth/2.0, 49 - (plusButtonWidth/2.0 + 2));
        [_plusBtn addTarget:self
                     action:@selector(clickPlus:)
           forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_plusBtn];
        //设置主题颜色
        self.tintColor = kThemeColor;
    }
    return self;
}

#pragma mark - plus按钮事件
- (void)clickPlus:(UIButton *)sender{
    if (_YFTabBarDelegate &&
        [_YFTabBarDelegate respondsToSelector:@selector(tabBar:didSelectPlusItem:)]) {
        [_YFTabBarDelegate tabBar:self didSelectPlusItem:sender];
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //更改系统button的frame
    CGFloat tabbarButtonW = kScreenWidth / 5.0;
    CGFloat tabbarButtonIndex = 0;
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            // 设置宽度
            CGRect temp1 = child.frame;
            temp1.size.width = tabbarButtonW;
            temp1.origin.x = tabbarButtonIndex * tabbarButtonW;
            child.frame = temp1;
            // 增加索引
            tabbarButtonIndex++;
            if (tabbarButtonIndex == 2) {
                tabbarButtonIndex++;
            }
        }
    }
}

@end
