//
//  XJBaseViewController.m
//  OC微博项目
//
//  Created by 许建安 on 16/2/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "XJBaseViewController.h"
#import "XJVistorView.h"

@interface XJBaseViewController ()

@end

@implementation XJBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XJVistorView *view = [[XJVistorView alloc] init];
    
//    view.backgroundColor = [UIColor orangeColor];
    
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
