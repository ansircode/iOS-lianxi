//
//  XJNetworkTools.m
//  OC微博项目
//
//  Created by 许建安 on 16/3/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "XJNetworkTools.h"
#import "AFNetworking.h"


@implementation XJNetworkTools

//跳转到微博登录界面
- (void)loginWeiboUI {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //URL
    NSString *url = @"https://api.weibo.com/oauth2/authorize";
    //封装请求参数
    NSDictionary *parameters = @{@"client_id":@"3326884137",
                                 @"redirect_uri":@"http://www.baidu.com/"};
    
    [manager POST:url parameters:parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        NSLog(@"登录成功");
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        NSLog(@"登录失败");
    }];
}

@end
