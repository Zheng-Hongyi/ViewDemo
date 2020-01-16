//
//  LoginViewController.m
//  ViewDemo
//
//  Created by Yi on 2019/12/18.
//  Copyright © 2019 Yi. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "LoginView.h"
#import "LoginViewPresenter.h"
#import "RegisterPresenter.h"

@interface LoginViewController () <LoginProtocol, RegisterViewProtocol>

@property (nonatomic, weak) LoginView *mainView;
@property (nonatomic, strong) RegisterPresenter *registPresenter;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"登录";
    self.presenter = [LoginViewPresenter new];
    [self.presenter bindView:self];
    
    self.registPresenter = [RegisterPresenter new];
    [self.registPresenter bind:self];
}

#pragma mark - Regist protocol

- (void)regist:(BOOL)success error:(NSString *)error {
    NSLog(@"regist info");
    if (success) {
        // TODO: 注册成功，直接去
    } else {
        // TODO: 注册失败
    }
}

#pragma mark - Login Protocol
- (void)test {

}

- (void)login:(BOOL)success error:(NSString *)error {
    NSLog(@"login info");
    if (success) {
        // TODO: 如果需要去注册
        [self.registPresenter registWithUserName:@"" password:@""];
        // TODO: 处理登录成功的逻辑
    } else {
        // TODO: 失败的提示
    }
}

#pragma mark - Action

- (IBAction)loginAction:(id)sender {
    NSString *userName = self.mainView.userNameTextField.text;
    NSString *userPswd = self.mainView.userPswdTextField.text;
    
    NSLog(@"%@ %@", userName, userPswd);
    
    // 处理登录的逻辑
    [self.presenter loginWithUserName:userName password:userPswd];
}

- (IBAction)registAction:(id)sender {
    RegistViewController *vc = [RegistViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - View

- (LoginView *)mainView {
    return (LoginView *)self.view;
}

@end
