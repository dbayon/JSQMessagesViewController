//
//  JSQMessagesThemeColor.m
//  JSQMessages
//
//  Created by David Bayón on 11/6/15.
//  Copyright (c) 2015 Hexed Bits. All rights reserved.
//

#import "JSQMessagesThemeColor.h"
#import "UIColor+JSQMessages.h"

#define JSQ_THEME_COLOR @"jsq_theme_color"

@implementation JSQMessagesThemeColor

+ (UIColor*)jsq_getThemeColor {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *hexColor = [defaults objectForKey:JSQ_THEME_COLOR];
    if(hexColor) {
        return [UIColor jsq_colorWithHexString:hexColor];
    } else {
        return [UIColor yellowColor];
    }
}

+ (void)jsq_saveThemeColor:(UIColor*)themeColor {
    NSString *hexColor = [UIColor jsq_hexValuesFromUIColor:themeColor];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:hexColor forKey:JSQ_THEME_COLOR];
    [defaults synchronize];
}

@end
