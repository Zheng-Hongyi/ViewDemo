//
//  RegisterPresenter.m
//  ViewDemo
//
//  Created by Yi on 2020/1/16.
//  Copyright © 2020 Yi. All rights reserved.
//

#import "RegisterPresenter.h"

@interface RegisterPresenter ()

@property (nonatomic, weak) id <RegisterViewProtocol>view;

@end

@implementation RegisterPresenter

- (void)bind:(id<RegisterViewProtocol>)view {
    self.view = view;
}

- (void)registWithUserName:(NSString *)name password:(NSString *)pswd {
    // TODO: 处理注册逻辑
    
    //
    [self.view regist:YES error:nil];
}

@end
