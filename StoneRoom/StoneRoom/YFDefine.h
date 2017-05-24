//
//  YFDefine.h
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#ifndef YFDefine_h
#import "UIColor+Hex.h"

#define YFDefine_h

#pragma mark - 常用宏定义
///===================================================================
///@name 常用宏定义
///===================================================================
#define kScreenWidth        [UIScreen mainScreen].bounds.size.width
#define kScreenHeight       [UIScreen mainScreen].bounds.size.height

#define kThemeColor         [UIColor colorWithRed:244/255.0 green:149/255.0 blue:132/255.0 alpha:1.0]

#pragma mark - 常用的函数
///===================================================================
///@name 常用的函数
///===================================================================

#define GETFONT(X)          [UIFont systemFontOfSize:X]
#define GETIMAGE(X)         [UIImage imageNamed:X]
#endif /* YFDefine_h */
