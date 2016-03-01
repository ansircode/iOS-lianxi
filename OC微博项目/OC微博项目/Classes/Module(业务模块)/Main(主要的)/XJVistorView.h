//
//  XJVistorView.h
//  OC微博项目
//
//  Created by 许建安 on 16/2/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义点击协议
@protocol XJVistorViewDelegate <NSObject>

- (void)registerButtonDelegate;

- (void)loginButtonDelegate;

@end


@interface XJVistorView : UIView

@property (nonatomic, weak) id<XJVistorViewDelegate> delegate;

@end
