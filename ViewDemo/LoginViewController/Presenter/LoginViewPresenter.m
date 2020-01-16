//
//  LoginViewPresenter.m
//  ViewDemo
//
//  Created by Yi on 2020/1/13.
//  Copyright © 2020 Yi. All rights reserved.
//

#import "LoginViewPresenter.h"

@interface LoginViewPresenter ()

@property (nonatomic, weak) id <LoginProtocol>view;

@end

@implementation LoginViewPresenter

- (void)bindView:(id<LoginProtocol>)aView {
    self.view = aView;
}

- (void)loginWithUserName:(NSString *)userName password:(NSString *)pswd {
    // TODO: 请求服务器去登录
    [self.view test];
    // 回调
    [self.view login:YES error:nil];
}

@end
