//
//  XJBaseViewController.m
//  OC微博项目
//
//  Created by 许建安 on 16/2/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "XJBaseViewController.h"
#import "XJVistorView.h"

@interface XJBaseViewController () <XJVistorViewDelegate>

@property (nonatomic, strong) XJVistorView *vistorView;

@end

@implementation XJBaseViewController

- (XJVistorView *)vistorView {
    if (_vistorView == nil) {
        _vistorView = [[XJVistorView alloc] init];
    }
    return _vistorView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.view = self.vistorView;
    
    self.vistorView.delegate = self;
    
}

//实现XJVistorViewDelegate代理
- (void)registerButtonDelegate {
    NSLog(@"点击了注册按钮");
}
- (void)loginButtonDelegate {
    NSLog(@"点击了登录按钮");
}

@end
