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

@interface LoginViewController ()

@property (nonatomic, weak) LoginView *mainView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"登录";
}

#pragma mark - Action

- (IBAction)loginAction:(id)sender {
    NSString *userName = self.mainView.userNameTextField.text;
    NSString *userPswd = self.mainView.userPswdTextField.text;
    
    NSLog(@"%@ %@", userName, userPswd);
    
    // TODO: 处理登录的逻辑
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
