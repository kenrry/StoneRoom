//
//  YFScrollerBannerCollectionReusableView.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/16.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFScrollerBannerCollectionReusableView.h"

@interface YFScrollerBannerCollectionReusableView ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *menuView;

@end

@implementation YFScrollerBannerCollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithHexString:@"e8e8e8"];
        
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 180)];
        _scrollView.backgroundColor = [UIColor brownColor];
        [self addSubview:_scrollView];
        
        _menuView = [[UIView alloc]initWithFrame:CGRectMake(0, 180, kScreenWidth, 40)];
        _menuView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_menuView];
        
    }
    return self;
}

@end
