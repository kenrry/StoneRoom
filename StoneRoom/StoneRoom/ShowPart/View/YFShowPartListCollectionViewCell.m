//
//  YFShowPartListCollectionViewCell.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/16.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFShowPartListCollectionViewCell.h"

@interface YFShowPartListCollectionViewCell ()

@property (nonatomic, strong) UIImageView *bgImg;
@property (nonatomic, strong) UILabel *nameLb;

@end

@implementation YFShowPartListCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.contentView.layer.cornerRadius = 4.0f;
        self.contentView.clipsToBounds = YES;
        
        _bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, (kScreenWidth - 30)/2.0, 170)];
        _bgImg.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:_bgImg];
        
        _nameLb = [[UILabel alloc]initWithFrame:CGRectMake(0, 170, (kScreenWidth - 30)/2.0, 40)];
        _nameLb.font = GETFONT(14);
        _nameLb.textAlignment = NSTextAlignmentCenter;
        _nameLb.textColor = [UIColor colorWithHexString:@"333333"];
        _nameLb.text = @"观音送子";
        [self.contentView addSubview:_nameLb];
    }
    return self;
}

@end
