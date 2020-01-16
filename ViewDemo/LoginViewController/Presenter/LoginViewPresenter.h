//
//  LoginViewPresenter.h
//  ViewDemo
//
//  Created by Yi on 2020/1/13.
//  Copyright © 2020 Yi. All rights reserved.
//

#import "BasePresenter.h"
#import "LoginProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewPresenter : BasePresenter

- (void)bindView:(id<LoginProtocol>)aView;

- (void)loginWithUserName:(NSString *)userName password:(NSString *)pswd;

@end

NS_ASSUME_NONNULL_END
