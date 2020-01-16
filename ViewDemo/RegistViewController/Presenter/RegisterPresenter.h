//
//  RegisterPresenter.h
//  ViewDemo
//
//  Created by Yi on 2020/1/16.
//  Copyright © 2020 Yi. All rights reserved.
//

#import "BasePresenter.h"

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterViewProtocol <NSObject>

@required
- (void)regist:(BOOL)success error:(NSString *)error;

@end

@interface RegisterPresenter : BasePresenter

- (void)bind:(id <RegisterViewProtocol>)view;

- (void)registWithUserName:(NSString *)name password:(NSString *)pswd;

@end

NS_ASSUME_NONNULL_END
