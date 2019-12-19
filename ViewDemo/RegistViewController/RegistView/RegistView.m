//
//  RegistView.m
//  ViewDemo
//
//  Created by Yi on 2019/12/19.
//  Copyright © 2019 Yi. All rights reserved.
//

#import "RegistView.h"
#import <Masonry/Masonry.h>

@implementation RegistView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubviews];
    }
    return self;
}

- (void)loadSubviews {
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.userNameTextField];
    [self addSubview:self.userPswdTextField];
    [self addSubview:self.againPswdTextField];
    [self addSubview:self.registButton];
    
    [self.userNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(58);
        make.right.equalTo(self.mas_right).offset(-58);
        make.top.equalTo(self.mas_safeAreaLayoutGuideTop).offset(49);
        make.height.mas_equalTo(34);
    }];
    
    [self.userPswdTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.userNameTextField);
        make.top.equalTo(self.userNameTextField.mas_bottom).offset(22);
        make.height.mas_equalTo(34);
    }];
    
    [self.againPswdTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.userNameTextField);
        make.top.equalTo(self.userPswdTextField.mas_bottom).offset(22);
        make.height.mas_equalTo(34);
    }];
    
    [self.registButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.userNameTextField);
        make.top.equalTo(self.againPswdTextField.mas_bottom).offset(22);
        make.height.mas_equalTo(50);
    }];
}

#pragma mark - Get

- (UITextField *)userNameTextField {
    if (!_userNameTextField) {
        _userNameTextField = [UITextField new];
        _userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
        _userNameTextField.placeholder = @"点击输入用户名";
    }
    return _userNameTextField;
}

- (UITextField *)userPswdTextField {
    if (!_userPswdTextField) {
        _userPswdTextField = [UITextField new];
        _userPswdTextField.borderStyle = UITextBorderStyleRoundedRect;
        _userPswdTextField.placeholder = @"点击输入密码";
        _userPswdTextField.secureTextEntry = YES;
    }
    return _userPswdTextField;
}

- (UITextField *)againPswdTextField {
    if (!_againPswdTextField) {
        _againPswdTextField = [UITextField new];
        _againPswdTextField.borderStyle = UITextBorderStyleRoundedRect;
        _againPswdTextField.placeholder = @"点击再次输入密码";
        _againPswdTextField.secureTextEntry = YES;
    }
    return _againPswdTextField;
}

- (UIButton *)registButton {
    if (!_registButton) {
        _registButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_registButton setTitle:@"注册" forState:UIControlStateNormal];
        
    }
    return _registButton;
}

@end
