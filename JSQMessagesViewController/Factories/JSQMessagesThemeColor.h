//
//  JSQMessagesThemeColor.h
//  JSQMessages
//
//  Created by David Bayón on 11/6/15.
//  Copyright (c) 2015 Hexed Bits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JSQMessagesThemeColor : NSObject

+ (UIColor*)jsq_getThemeColor;
+ (void)jsq_saveThemeColor:(UIColor*)themeColor;

@end
