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
    /*NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *hexColor = [defaults objectForKey:JSQ_THEME_COLOR];
    if(hexColor) {
        return [UIColor jsq_colorWithHexString:hexColor];
    } else {
        return [UIColor yellowColor];
    }*/
    return [UIColor colorWithRed:34.0f/255.0f green:158.0f/255.0f blue:177.0f/255.0f alpha:1];
}

+ (void)jsq_saveThemeColor:(UIColor*)themeColor {
    NSString *hexColor = [UIColor jsq_hexValuesFromUIColor:themeColor];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:hexColor forKey:JSQ_THEME_COLOR];
    [defaults synchronize];
}

+ (UIColor*)jsq_getBlueWugoColor {
    return [UIColor colorWithRed:101.0/255.0f green:198.0f/255.0f blue:211.0f/255.0f alpha:1];
}

+ (UIColor*)jsq_getIncomingBubbleColor {
    return [UIColor colorWithRed:239.0/255.0f green:239.0f/255.0f blue:239.0f/255.0f alpha:1];
}

+ (UIColor*)jsq_getOutcomingBubbleColor {
    return [self jsq_getBlueWugoColor];
}

+ (UIColor*)jsq_getIncomingBubbleTextColor {
    return [UIColor colorWithRed:93.0/255.0f green:93.0f/255.0f blue:93.0f/255.0f alpha:1];
}

+ (UIColor*)jsq_getOutcomingBubbleTextColor {
    return [UIColor whiteColor];
}

+ (UIColor*)jsq_getSendTextViewTextColor {
    return [UIColor colorWithRed:93.0f/255.0f green:93.0f/255.0f blue:93.0f/255.0f alpha:1];
}

+ (UIColor*)jsq_getSendTextViewPlaceholderTextColor {
    return [UIColor colorWithRed:176.0f/255.0f green:176.0f/255.0f blue:176.0f/255.0f alpha:1];
}

@end
