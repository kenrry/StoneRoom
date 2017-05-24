//
//  UIColor+Hex.m
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)Hex{
    return [self colorWithHexString:Hex alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)Hex alpha:(CGFloat)alpha{
    //去掉空格
    NSString *tempHex = [[Hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    //判定字符串长度
    if (Hex.length < 6) {
        return [UIColor clearColor];
    }
    //去除开头
    if ([tempHex hasPrefix:@"#"]) {
        tempHex = [tempHex substringFromIndex:1];
    }
    if ([tempHex hasPrefix:@"0X"])
    {
        tempHex = [tempHex substringFromIndex:2];
    }
    if ([tempHex length] != 6)
    {
        return [UIColor clearColor];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [tempHex substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [tempHex substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [tempHex substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
