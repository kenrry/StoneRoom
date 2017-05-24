//
//  YFContractListCollectionViewCell.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/17.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "YFContractListCollectionViewCell.h"

@interface YFContractListCollectionViewCell ()

@property (nonatomic, strong) UIImageView *bgImg;
@property (nonatomic, strong) UILabel *titlelb;

@end

@implementation YFContractListCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.contentView.layer.cornerRadius = 5.0f;
        self.contentView.clipsToBounds = YES;
        
        _bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 120)];
        _bgImg.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:_bgImg];
        
        _titlelb = [[UILabel alloc]initWithFrame:CGRectMake(0, 120, kScreenWidth, 50)];
        _titlelb.text = @"最近竞拍价格";
        _titlelb.font = GETFONT(14);
        _titlelb.textColor = [UIColor colorWithHexString:@"333333"];
        [self.contentView addSubview:_titlelb];
    }
    return self;
}

@end
