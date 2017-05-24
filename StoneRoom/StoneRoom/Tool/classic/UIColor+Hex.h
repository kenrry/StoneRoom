//
//  UIColor+Hex.h
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)
/**  16进制  */
+ (UIColor *)colorWithHexString:(NSString *)Hex;
/**  16进制 增加透明度  */
+ (UIColor *)colorWithHexString:(NSString *)Hex alpha:(CGFloat)alpha;

@end
