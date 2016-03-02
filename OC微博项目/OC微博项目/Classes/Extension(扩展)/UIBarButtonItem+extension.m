//
//  UIBarButtonItem+extension.m
//  OC微博项目
//
//  Created by 许建安 on 16/3/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "UIBarButtonItem+extension.h"

@implementation UIBarButtonItem (extension)

- (instancetype)initWithName:(NSString *)imageName {
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    NSString *imageNameH = [imageName stringByAppendingString:@"Highlighted"];
    [button setBackgroundImage:[UIImage imageNamed:imageNameH] forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    
    
    return [self initWithCustomView:button];
}

@end
