//
//  LoginView.h
//  ViewDemo
//
//  Created by Yi on 2019/12/18.
//  Copyright © 2019 Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPswdTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *registButton;


@end

NS_ASSUME_NONNULL_END
