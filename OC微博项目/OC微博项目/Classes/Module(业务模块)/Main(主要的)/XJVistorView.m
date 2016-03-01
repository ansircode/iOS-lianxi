//
//  XJVistorView.m
//  OC微博项目
//
//  Created by 许建安 on 16/2/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "XJVistorView.h"
#import <UIKit/UIKit.h>

@interface XJVistorView ()

@property (nonatomic, strong) UIButton *registerButton;

@property (nonatomic, strong) UIButton *loginButton;

@property (nonatomic, copy) NSString *name;

@end

@implementation XJVistorView

//懒加载
- (UIButton *)registerButton {
    if (_registerButton == nil) {
        UIButton *registerButton = [[UIButton alloc] init];
        [registerButton setTitle:@"注册" forState:UIControlStateNormal];
        [registerButton setTitle:@"注册" forState:UIControlStateHighlighted];
        //设置按钮文字颜色
        [registerButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [registerButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        
        
        _registerButton = registerButton;
    }
    return _registerButton;
}

- (UIButton *)loginButton {
    if (_loginButton == nil) {
        UIButton *loginButton = [[UIButton alloc] init];
        [loginButton setTitle:@"登录" forState:UIControlStateNormal];
        [loginButton setTitle:@"登录" forState:UIControlStateHighlighted];
        [loginButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        
        _loginButton = loginButton;
    }
    return _loginButton;
}


-(instancetype)init {
    self = [super init];
    
    [self.registerButton addTarget:self action:@selector(registerButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.loginButton addTarget:self action:@selector(loginbuttonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self prepaerUI];
    
    return self;
}


- (void)prepaerUI {
    
    [self addSubview:self.registerButton];
    [self addSubview:self.loginButton];
    //设置注册按钮的大小和位置
    
    
    //取消自动约束
    [self.registerButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.loginButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    //设置注册按钮
    //x
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.registerButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:-50]];
    
    //y
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.registerButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    //w
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.registerButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:50]];
    //h
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.registerButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:44]];
    //设置登录按钮
    
    //x
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.loginButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:50]];
    
    //y
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.loginButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    //w
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.loginButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:50]];
    //h
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.loginButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:44]];
    
}

//监听按钮的点击，按钮由控制器监听，什么时候按钮发出通知
- (void)registerButtonClicked {
     //在点击事件里调用代理方法
    [self.delegate registerButtonDelegate];
}

- (void)loginbuttonClicked {
    [self.delegate loginButtonDelegate];
}

@end
