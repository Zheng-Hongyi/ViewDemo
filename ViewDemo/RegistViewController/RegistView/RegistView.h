//
//  RegistView.h
//  ViewDemo
//
//  Created by Yi on 2019/12/19.
//  Copyright © 2019 Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegistView : UIView

@property (nonatomic, strong) UITextField *userNameTextField;
@property (nonatomic, strong) UITextField *userPswdTextField;
@property (nonatomic, strong) UITextField *againPswdTextField;
@property (nonatomic, strong) UIButton *registButton;

@property (nonatomic, copy) void (^registCallBack)(NSString *, NSString *, NSString *);

@end

NS_ASSUME_NONNULL_END
